{---------------------------------------------------------------------------}
{                                                                           }
{ File:      GeminiAIPlugin.Controller                                      }
{ Function:  Gemini AI plugin controller                                    }
{                                                                           }
{ Language:   Delphi version XE12 or later                                  }
{ Author:     Chee-Wee Chua                                                 }
{---------------------------------------------------------------------------}
unit GeminiAIPlugin.Controller;

interface

uses
  System.SysUtils, REST.Client, Rest.Types,
  Rest.Json,
  System.JSON, ToolUtils,
  ToolsAPI.AI, GeminiAIPlugin.Consts,
  // GeminiPlugin.Models;
  GeminiAIPlugin.Model.Common,
  GeminiAIPlugin.Model.Requests,
  GeminiAIPlugin.Model.Responses;

type
  TGeminiAIRestClient = class(TOTAClass)
  protected
    FRestClient: TCustomRESTClient;
    FRestResponse: TRESTResponse;
    FRestRequest: TRESTRequest;
    FResponseObject: TGeminiAIResponseObj;
    FRequestObj: TGeminiAIRequestObj;

    function IsParsable(var AJsonObj: TJSONObject): Boolean;
    function CheckError(out AValue: string): Boolean;
    procedure DoCompletion(const ARequestID: TGUID);
    procedure DoFinishLoad(const AResponseObj: TGeminiAIResponseObj; const ARequestID: TGUID);
    procedure PrepareBody(const AValue: string);
    procedure PrepareHeader;
    procedure NotifyError(const AMessage: string; const ARequestID: TGUID);
    procedure NotifyAnswer(const AMessage: string; const ARequestID: TGUID);
    function CheckApiKey(const ARequestID: TGUID): Boolean;
  protected
    FBaseURL: string;
    FModel: string;
    FApiKey: string;
    FTimeOut: Integer;
    procedure DoCancel;
    function AddNotifier(const ANotifier: IOTAAIServicesNotifier): Integer;
    procedure RemoveNotifier(const AIndex: Integer);
  public
  type
    TModelInfo = record
      Name: string;
      Description: string;
      DisplayName: string;
    end;
  public
    constructor Create;
    function ListModels: TArray<TModelInfo>;
    destructor Destroy; override;
    function DoChat(const APrompt: string; const ARequestID: TGUID): string;
    property APIKey: string write FApiKey;
  end;

implementation

uses
  GeminiAIPlugin.ListModelsResponse, System.StrUtils;

{ TGeminiAIRestClient }

function TGeminiAIRestClient.AddNotifier(const ANotifier: IOTAAIServicesNotifier): Integer;
begin
  Result := AddToList(FNotifyList, ANotifier);
end;

procedure TGeminiAIRestClient.RemoveNotifier(const AIndex: Integer);
begin
  if AIndex >= 0 then
    FNotifyList[AIndex] := nil;
end;

function TGeminiAIRestClient.CheckApiKey(const ARequestID: TGUID): Boolean;
begin
  Result := True;
  if FApiKey.Trim.Equals(EmptyStr) then
  begin
    Result := False;
    NotifyError(cGeminiAI_Msg_CheckAPI, ARequestID);
  end;
end;

function TGeminiAIRestClient.CheckError(out AValue: string): Boolean;
var
  LJsonObj: TJSONObject;
begin
  Result := False;
  if FRestResponse.Status.ClientErrorBadRequest_400 then
  begin
    LJsonObj := nil;
    if IsParsable(LJsonObj) then
    begin
//      var LErrors: TErrorObj;
//      try
//        LErrors := TJson.JsonToObject<TErrorObj>(LJsonObj);
//        if LErrors <> nil then
//        begin
//          try
//            AValue := LErrors.Error.Message;
//            Result := True;
//          finally
//            LErrors.Free;
//          end;
//        end;
//      finally
//        FreeAndNil(LJsonObj);
//      end;
    end else
    begin
      try
        AValue := FRestResponse.Content;
      except
        on E: Exception do
          AValue := E.Message;
      end;
    end;
  end;
end;

constructor TGeminiAIRestClient.Create;
begin
  inherited Create;
  FRestClient := TCustomRESTClient.Create(nil);
  FRestResponse := TRESTResponse.Create(nil);
  FRestRequest := TRESTRequest.Create(nil);

  FRestRequest.Method := TRESTRequestMethod.rmPost;
  FRestRequest.Client := FRestClient;
  FRestRequest.Response := FRestResponse;
  FTimeOut := CRestDefaultTimeout;
  FRestRequest.TimeOut := FTimeOut;
  FRestClient.ContentType := TRESTContentType.ctAPPLICATION_JSON;
end;

destructor TGeminiAIRestClient.Destroy;
begin
  FreeAndNil(FRestRequest);
  FreeAndNil(FRestResponse);
  FreeAndNil(FRestClient);
  inherited;
end;

procedure TGeminiAIRestClient.DoCancel;
begin
  if FRestRequest <> nil then
    FRestRequest.Cancel;
end;

function TGeminiAIRestClient.DoChat(const APrompt: string; const ARequestID: TGUID): string;
begin
  FRestRequest.Body.ClearBody;
  FRestRequest.Params.Clear;

  PrepareBody(APrompt);
  PrepareHeader;

  if not CheckApIKey(ARequestID) then Exit;
  try
    FRestRequest.ExecuteAsync(
      procedure
      begin
        DoCompletion(ARequestID);
      end,
      True,
      True,
      procedure(AObject: TObject)
      begin
        NotifyError(Exception(AObject).Message, ARequestID);
      end
    );
  except
    on E: Exception do
      NotifyError(E.Message, ARequestID);
  end;
end;

procedure TGeminiAIRestClient.DoCompletion(const ARequestID: TGUID);
var
  LJsonObj: TJSONObject;
  LErrorMsg: string;
begin
  if FRestRequest = nil then
    Exit;
  if FRestResponse = nil then
    Exit;

  if not FRestResponse.Status.SuccessOK_200 then
  begin
    LErrorMsg := FRestResponse.StatusText;

    var Err: string;
    if CheckError(Err) then
      LErrorMsg := Err;

    NotifyError(LErrorMsg, ARequestID);
    Exit;
  end;

  if not IsParsable(LJsonObj) then
    Exit;

  try
    try
      FreeAndNil(FResponseObject);
      FResponseObject := TGeminiAIResponseObj.FromJSON(LJsonObj);
      DoFinishLoad(FResponseObject, ARequestID);
    finally
      LJsonObj.Free;
    end;
  except
    on E: Exception do
      NotifyError(E.Message, ARequestID);
  end;
end;

procedure TGeminiAIRestClient.NotifyError(const AMessage: string; const ARequestID: TGUID);
var
  I: Integer;
begin
  FNotifyList.Lock;
  for I := 0 to Pred(FNotifyList.Count) do
    (FNotifyList[I] as IOTAAIServicesNotifier).Error(AMessage, ARequestID);
  FNotifyList.Unlock;
end;

procedure TGeminiAIRestClient.DoFinishLoad(const AResponseObj: TGeminiAIResponseObj; const ARequestID: TGUID);
var
  LMessage: string;
begin
  if AResponseObj = nil then
    LMessage := cGeminiAI_Msg_NoAnswer
  else
  begin
    if AResponseObj.Candidates.Count > 0 then
    begin
      if AResponseObj.Candidates[0].Content.Parts.Count > 0 then
      begin
        var LPart := AResponseObj.Candidates[0].Content.Parts[0];
        LMessage := LPart.Text;
      end;
    end;
  end;

  NotifyAnswer(LMessage, ARequestID);
end;

function TGeminiAIRestClient.ListModels: TArray<TModelInfo>;
begin
  var LRestRequest := TRESTRequest.Create(nil);
  LRestRequest.Method := TRESTRequestMethod.rmGET;
  try
    var LBaseURL := 'https://generativelanguage.googleapis.com/v1beta/models';
    FRestClient.Params.Clear;
    FRestClient.BaseURL := Format('%s?key=%s', [LBaseURL, FApiKey]);
    LRestRequest.Client := FRestClient;
    LRestRequest.Method := TRESTRequestMethod.rmGET;
    try
      LRestRequest.Execute;
      var LListModelsResponse := TGeminiAIListModelsResponse.FromJSON(LRestRequest.Response.Content);
      for var I := 0 to LListModelsResponse.models.Count-1 do
        begin
          var LModel := LListModelsResponse.models[I];
          var LPrefixedModelName := LModel.name;
          var LSplitModelNames := SplitString(LPrefixedModelName, '/');
          if Length(LSplitModelNames) < 2 then
            Continue;
          SetLength(Result, Length(Result) + 1);
          var Idx := High(Result);
          Result[Idx].Name := LSplitModelNames[1];
          Result[Idx].Description := LModel.description;
          Result[Idx].DisplayName := LModel.displayName;
        end;
    except
      // silent
    end;
  finally
    LRestRequest.Free;
  end;
end;

function TGeminiAIRestClient.IsParsable(var AJsonObj: TJSONObject): Boolean;
begin
  AJsonObj := nil;
  try
    AJsonObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(FRestResponse.Content), 0) as TJSONObject;
  except
    AJsonObj := nil;
  end;
  Result := AJsonObj <> nil;
end;

procedure TGeminiAIRestClient.NotifyAnswer(const AMessage: string; const ARequestID: TGUID);
var
  I: Integer;
begin
  FNotifyList.Lock;
  for I := 0 to Pred(FNotifyList.Count) do
    (FNotifyList[I] as IOTAAIServicesNotifier).Answer(AMessage, ARequestID);
  FNotifyList.Unlock;
end;

procedure TGeminiAIRestClient.PrepareBody(const AValue: string);
begin
  var LRequestObj := TGeminiAIRequestObj.Create;
  FRestRequest.Method := TRESTRequestMethod.rmPOST;
  try
    var LContent := TGeminiRequestContent.Create;
    var LPart := TPart.Create;
    LPart.Text := AValue;
    LContent.Parts.Add(LPart);
    LRequestObj.Contents.Add(LContent);
    var LBody := LRequestObj.ToJSONString;
    FRestRequest.AddBody(LBody, TRESTContentType.ctAPPLICATION_JSON);
  finally
    FreeAndNil(LRequestObj);
  end;
end;

procedure TGeminiAIRestClient.PrepareHeader;
var
  LBaseURL, LMethod: string;
begin
  LBaseURL := FBaseURL; // eg https://generativelanguage.googleapis.com/v1beta/models/
  if not LBaseURL.EndsWith('/') then
    LBaseURL := LBaseURL + '/';
  LMethod := 'generateContent';
  FRestClient.BaseURL := Format('%s%s:%s?key=%s', [LBaseURL, FModel, LMethod, FApiKey]);
  // eg, %s:generateContent?key=%s
  FRestRequest.Timeout := FTimeOut;
  FRestRequest.Params.AddHeader('Accept', TRESTContentType.ctAPPLICATION_JSON).Options := [poDoNotEncode];
  FRestRequest.Params.AddHeader('Content-Type', TRESTContentType.ctAPPLICATION_JSON).Options := [poDoNotEncode];
end;

initialization
  TJSONMappers.UnRegisterLibrary('Rest.JSON');
end.
