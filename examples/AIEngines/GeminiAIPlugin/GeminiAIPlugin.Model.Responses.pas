{---------------------------------------------------------------------------}
{                                                                           }
{ File:      GeminiAIPlugin.Model.Responses                                 }
{ Function:  Gemini AI plugin model responses                               }
{                                                                           }
{ Language:   Delphi version XE12 or later                                  }
{ Author:     Chee-Wee Chua                                                 }
{---------------------------------------------------------------------------}
unit GeminiAIPlugin.Model.Responses;

interface

uses
  System.Classes, System.JSON.Serializers, System.Generics.Collections,
  System.JSON.Converters, System.JSON, GeminiAIPlugin.Model.Common;

type

  TPromptTokensDetail = class;
  TCandidatesTokensDetail = class;
  TCandidate = class;

  TJsonListConverterTPromptTokensDetail = class(TJsonTypedListConverter<TPromptTokensDetail>);
  TJsonListConverterTCandidatesTokensDetail = class(TJsonTypedListConverter<TCandidatesTokensDetail>);
  TJsonListConverterTCandidate = class(TJsonTypedListConverter<TCandidate>);

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TGeminiResponseContent = class(TGeminiRequestContent)
  protected
    FRole: string;
    function GetRole: string;
  public
    constructor Create;
    destructor Destroy; override;

    [JSONName('role')]
    property Role: string read GetRole write FRole;
  end;

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TPromptTokensDetail = class(TPersistent)
  private
    Fmodality: string;
    FtokenCount: Integer;
    function Getmodality: string;
    function GettokenCount: Integer;
  public
    [JSONName('modality')]
    property modality: string read Getmodality write Fmodality;

    [JSONName('tokenCount')]
    property tokenCount: Integer read GettokenCount write FtokenCount;
  end;

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TCandidatesTokensDetail = class(TPersistent)
  private
    Fmodality: string;
    FtokenCount: Integer;
    function Getmodality: string;
    function GettokenCount: Integer;
  public
    [JSONName('modality')]
    property modality: string read Getmodality write Fmodality;

    [JSONName('tokenCount')]
    property tokenCount: Integer read GettokenCount write FtokenCount;
  end;

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TCandidate = class(TPersistent)
  private
    Fcontent: TGeminiResponseContent;
    FfinishReason: string;
    FavgLogprobs: Double;
    function Getcontent: TGeminiResponseContent;
    function GetfinishReason: string;
    function GetavgLogprobs: Double;
  public
    constructor Create;
    destructor Destroy; override;

    [JSONName('content')]
    property content: TGeminiResponseContent read Getcontent;

    [JSONName('finishReason')]
    property finishReason: string read GetfinishReason write FfinishReason;

    [JSONName('avgLogprobs')]
    property avgLogprobs: Double read GetavgLogprobs write FavgLogprobs;
  end;

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TUsageMetadata = class(TPersistent)
  private
    FpromptTokenCount: Integer;
    FcandidatesTokenCount: Integer;
    FtotalTokenCount: Integer;
    FpromptTokensDetails: TObjectList<TPromptTokensDetail>;
    FcandidatesTokensDetails: TObjectList<TCandidatesTokensDetail>;
    function GetpromptTokenCount: Integer;
    function GetcandidatesTokenCount: Integer;
    function GettotalTokenCount: Integer;
    function GetpromptTokensDetails: TObjectList<TPromptTokensDetail>;
    function GetcandidatesTokensDetails: TObjectList<TCandidatesTokensDetail>;
  public
    constructor Create;
    destructor Destroy; override;

    [JSONName('promptTokenCount')]
    property promptTokenCount: Integer read GetpromptTokenCount write FpromptTokenCount;

    [JSONName('candidatesTokenCount')]
    property candidatesTokenCount: Integer read GetcandidatesTokenCount write FcandidatesTokenCount;

    [JSONName('totalTokenCount')]
    property totalTokenCount: Integer read GettotalTokenCount write FtotalTokenCount;

    [JsonConverter(TJsonListConverterTPromptTokensDetail)]
    [JSONName('promptTokensDetails')]
    property promptTokensDetails: TObjectList<TPromptTokensDetail> read GetpromptTokensDetails;

    [JsonConverter(TJsonListConverterTCandidatesTokensDetail)]
    [JSONName('candidatesTokensDetails')]
    property candidatesTokensDetails: TObjectList<TCandidatesTokensDetail> read GetcandidatesTokensDetails;
  end;

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TGeminiAIResponseObj = class(TPersistent)
  private
    Fcandidates: TObjectList<TCandidate>;
    FusageMetadata: TUsageMetadata;
    FmodelVersion: string;
    function Getcandidates: TObjectList<TCandidate>;
    function GetusageMetadata: TUsageMetadata;
    function GetmodelVersion: string;
  public
    constructor Create;
    destructor Destroy; override;
    class function FromJSON(const AValue: TJSONValue): TGeminiAIResponseObj; overload; static;
    class function FromJSON(const AValue: string): TGeminiAIResponseObj; overload; static;
    function ToJSONObject: TJSONValue;
    function ToJSONString: string;

    [JsonConverter(TJsonListConverterTCandidate)]
    [JSONName('candidates')]
    property candidates: TObjectList<TCandidate> read Getcandidates;

    [JSONName('usageMetadata')]
    property usageMetadata: TUsageMetadata read GetusageMetadata;

    [JSONName('modelVersion')]
    property modelVersion: string read GetmodelVersion write FmodelVersion;
  end;

implementation

uses
  System.SysUtils;

constructor TGeminiResponseContent.Create;
begin
  inherited Create;
  Fparts := TObjectList<TPart>.Create(True);
end;

destructor TGeminiResponseContent.Destroy;
begin
  FreeAndNil(FParts);
  inherited Destroy;
end;

function TGeminiResponseContent.GetRole: string;
begin
  Result := FRole;
end;

function TPromptTokensDetail.GetModality: string;
begin
  Result := FModality;
end;

function TPromptTokensDetail.GettokenCount: Integer;
begin
  Result := FtokenCount;
end;

function TCandidatesTokensDetail.Getmodality: string;
begin
  Result := Fmodality;
end;

function TCandidatesTokensDetail.GettokenCount: Integer;
begin
  Result := FtokenCount;
end;

constructor TCandidate.Create;
begin
  inherited Create;
  Fcontent := TGeminiResponseContent.Create;
end;

destructor TCandidate.Destroy;
begin
  FreeAndNil(Fcontent);
  inherited Destroy;
end;

function TCandidate.Getcontent: TGeminiResponseContent;
begin
  Result := Fcontent;
end;

function TCandidate.GetfinishReason: string;
begin
  Result := FfinishReason;
end;

function TCandidate.GetavgLogprobs: Double;
begin
  Result := FavgLogprobs;
end;

constructor TUsageMetadata.Create;
begin
  inherited Create;
  FpromptTokensDetails := TObjectList<TPromptTokensDetail>.Create(True);
  FcandidatesTokensDetails := TObjectList<TCandidatesTokensDetail>.Create(True);
end;

destructor TUsageMetadata.Destroy;
begin
  FreeAndNil(FpromptTokensDetails);
  FreeAndNil(FcandidatesTokensDetails);
  inherited Destroy;
end;

function TUsageMetadata.GetpromptTokenCount: Integer;
begin
  Result := FpromptTokenCount;
end;

function TUsageMetadata.GetcandidatesTokenCount: Integer;
begin
  Result := FcandidatesTokenCount;
end;

function TUsageMetadata.GettotalTokenCount: Integer;
begin
  Result := FtotalTokenCount;
end;

function TUsageMetadata.GetpromptTokensDetails: TObjectList<TPromptTokensDetail>;
begin
  Result := FpromptTokensDetails;
end;

function TUsageMetadata.GetcandidatesTokensDetails: TObjectList<TCandidatesTokensDetail>;
begin
  Result := FcandidatesTokensDetails;
end;

constructor TGeminiAIResponseObj.Create;
begin
  inherited Create;
  Fcandidates := TObjectList<TCandidate>.Create(True);
  FusageMetadata := TUsageMetadata.Create;
end;

destructor TGeminiAIResponseObj.Destroy;
begin
  FreeAndNil(Fcandidates);
  FreeAndNil(FusageMetadata);
  inherited Destroy;
end;

function TGeminiAIResponseObj.Getcandidates: TObjectList<TCandidate>;
begin
  Result := Fcandidates;
end;

function TGeminiAIResponseObj.GetusageMetadata: TUsageMetadata;
begin
  Result := FusageMetadata;
end;

function TGeminiAIResponseObj.GetmodelVersion: string;
begin
  Result := FmodelVersion;
end;

class function TGeminiAIResponseObj.FromJSON(const AValue: TJSONValue): TGeminiAIResponseObj;
begin
  Result := TJSONMapper<TGeminiAIResponseObj>.Default.FromObject(AValue);
end;

class function TGeminiAIResponseObj.FromJSON(const AValue: string): TGeminiAIResponseObj;
begin
  Result := TJSONMapper<TGeminiAIResponseObj>.Default.FromObject(AValue);
end;

function TGeminiAIResponseObj.ToJSONObject: TJSONValue;
begin
  Result := TJSONMapper<TGeminiAIResponseObj>.Default.ToObject(Self);
end;

function TGeminiAIResponseObj.ToJSONString: string;
begin
  Result := TJSONMapper<TGeminiAIResponseObj>.Default.ToString(Self);
end;

initialization

  RegisterClass(TPart);
  RegisterClass(TGeminiResponseContent);
  RegisterClass(TPromptTokensDetail);
  RegisterClass(TCandidatesTokensDetail);
  RegisterClass(TCandidate);
  RegisterClass(TUsageMetadata);
  RegisterClass(TGeminiAIResponseObj);

end.
