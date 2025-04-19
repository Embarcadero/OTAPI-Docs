{---------------------------------------------------------------------------}
{                                                                           }
{ File:      GeminiAIPlugin.Model.Requests                                  }
{ Function:  Gemini AI plugin requests modelling                            }
{                                                                           }
{ Language:   Delphi version XE12 or later                                  }
{ Author:     Chee-Wee Chua                                                 }
{---------------------------------------------------------------------------}
unit GeminiAIPlugin.Model.Requests;

interface

uses
  System.Classes, System.JSON.Serializers, System.Generics.Collections,
  System.JSON.Converters, System.JSON, System.JSON.Types,
  GeminiAIPlugin.Model.Common;

type


  TJsonListConverterTContent = class(TJsonTypedListConverter<TGeminiRequestContent>);

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TGeminiAIRequestObj = class(TPersistent)
  private
    FContents: TObjectList<TGeminiRequestContent>;
    function GetContents: TObjectList<TGeminiRequestContent>;
  public
    constructor Create;
    destructor Destroy; override;
    class function FromJSON(const AValue: TJSONValue): TGeminiAIRequestObj; overload; static;
    class function FromJSON(const AValue: string): TGeminiAIRequestObj; overload; static;
    function ToJSONObject: TJSONValue;
    function ToJSONString: string;
    [JsonConverter(TJsonListConverterTContent), JSONName('contents')]
    property Contents: TObjectList<TGeminiRequestContent> read GetContents;
  end;

implementation

uses
  System.SysUtils;

constructor TGeminiAIRequestObj.Create;
begin
  inherited Create;
  FContents := TObjectList<TGeminiRequestContent>.Create(True);
end;

destructor TGeminiAIRequestObj.Destroy;
begin
  FreeAndNil(FContents);
  inherited Destroy;
end;

function TGeminiAIRequestObj.Getcontents: TObjectList<TGeminiRequestContent>;
begin
  Result := FContents;
end;

class function TGeminiAIRequestObj.FromJSON(const AValue: TJSONValue): TGeminiAIRequestObj;
begin
  Result := TJSONMapper<TGeminiAIRequestObj>.Default.FromObject(AValue);
end;

class function TGeminiAIRequestObj.FromJSON(const AValue: string): TGeminiAIRequestObj;
begin
  Result := TJSONMapper<TGeminiAIRequestObj>.Default.FromObject(AValue);
end;

function TGeminiAIRequestObj.ToJSONObject: TJSONValue;
begin
  Result := TJSONMapper<TGeminiAIRequestObj>.Default.ToObject(Self);
end;

function TGeminiAIRequestObj.ToJSONString: string;
begin
  Result := TJSONMapper<TGeminiAIRequestObj>.Default.ToString(Self);
end;

initialization

  RegisterClass(TPart);
  RegisterClass(TGeminiRequestContent);
  RegisterClass(TGeminiAIRequestObj);

end.
