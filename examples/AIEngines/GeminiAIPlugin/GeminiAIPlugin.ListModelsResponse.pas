{---------------------------------------------------------------------------}
{                                                                           }
{ File:      GeminiAIPlugin.ListModelsResponse                              }
{ Function:  Gemini AI plugin response modelling                            }
{                                                                           }
{ Language:   Delphi version XE12 or later                                  }
{ Author:     Chee-Wee Chua                                                 }
{---------------------------------------------------------------------------}
unit GeminiAIPlugin.ListModelsResponse;

interface

uses
  System.Classes, System.JSON.Serializers, System.Generics.Collections, System.JSON.Converters, System.JSON;

type
  TGeminiAIResponseModel = class;

  TJsonListConverterstring = class(TJsonTypedListConverter<string>);
  TJsonListConverterTModel = class(TJsonTypedListConverter<TGeminiAIResponseModel>);

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TGeminiAIResponseModel = class(TPersistent)
  private
    Fname: string;
    Fversion: string;
    FdisplayName: string;
    Fdescription: string;
    FinputTokenLimit: Integer;
    FoutputTokenLimit: Integer;
    FsupportedGenerationMethods: TList<string>;
    Ftemperature: Double;
    FtopP: Double;
    FtopK: Integer;
    FmaxTemperature: Integer;
    function Getname: string;
    function Getversion: string;
    function GetdisplayName: string;
    function Getdescription: string;
    function GetinputTokenLimit: Integer;
    function GetoutputTokenLimit: Integer;
    function GetsupportedGenerationMethods: TList<string>;
    function Gettemperature: Double;
    function GettopP: Double;
    function GettopK: Integer;
    function GetmaxTemperature: Integer;
  public
    constructor Create;
    destructor Destroy; override;
    property name: string read Getname write Fname;
    property version: string read Getversion write Fversion;
    property displayName: string read GetdisplayName write FdisplayName;
    property description: string read Getdescription write Fdescription;
    property inputTokenLimit: Integer read GetinputTokenLimit write FinputTokenLimit;
    property outputTokenLimit: Integer read GetoutputTokenLimit write FoutputTokenLimit;
    [JsonConverter(TJsonListConverterstring)]
    property supportedGenerationMethods: TList<string> read GetsupportedGenerationMethods;
    property temperature: Double read Gettemperature write Ftemperature;
    property topP: Double read GettopP write FtopP;
    property topK: Integer read GettopK write FtopK;
    property maxTemperature: Integer read GetmaxTemperature write FmaxTemperature;
  end;

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TGeminiAIListModelsResponse = class(TPersistent)
  private
    Fmodels: TObjectList<TGeminiAIResponseModel>;
    function Getmodels: TObjectList<TGeminiAIResponseModel>;
  public
    constructor Create;
    destructor Destroy; override;
    class function FromJSON(const AValue: TJSONValue): TGeminiAIListModelsResponse; overload; static;
    class function FromJSON(const AValue: string): TGeminiAIListModelsResponse; overload; static;
    function ToJSONObject: TJSONValue;
    function ToJSONString: string;
    [JsonConverter(TJsonListConverterTModel), JSONName('models')]
    property models: TObjectList<TGeminiAIResponseModel> read Getmodels;
  end;

implementation

uses
  System.SysUtils;

constructor TGeminiAIResponseModel.Create;
begin
  inherited Create;
  FsupportedGenerationMethods := TList<string>.Create;
end;

destructor TGeminiAIResponseModel.Destroy;
begin
  FreeAndNil(FsupportedGenerationMethods);
  inherited Destroy;
end;

function TGeminiAIResponseModel.Getname: string;
begin
  Result := Fname;
end;

function TGeminiAIResponseModel.Getversion: string;
begin
  Result := Fversion;
end;

function TGeminiAIResponseModel.GetdisplayName: string;
begin
  Result := FdisplayName;
end;

function TGeminiAIResponseModel.Getdescription: string;
begin
  Result := Fdescription;
end;

function TGeminiAIResponseModel.GetinputTokenLimit: Integer;
begin
  Result := FinputTokenLimit;
end;

function TGeminiAIResponseModel.GetoutputTokenLimit: Integer;
begin
  Result := FoutputTokenLimit;
end;

function TGeminiAIResponseModel.GetsupportedGenerationMethods: TList<string>;
begin
  Result := FsupportedGenerationMethods;
end;

function TGeminiAIResponseModel.Gettemperature: Double;
begin
  Result := Ftemperature;
end;

function TGeminiAIResponseModel.GettopP: Double;
begin
  Result := FtopP;
end;

function TGeminiAIResponseModel.GettopK: Integer;
begin
  Result := FtopK;
end;

function TGeminiAIResponseModel.GetmaxTemperature: Integer;
begin
  Result := FmaxTemperature;
end;

constructor TGeminiAIListModelsResponse.Create;
begin
  inherited Create;
  Fmodels := TObjectList<TGeminiAIResponseModel>.Create(True);
end;

destructor TGeminiAIListModelsResponse.Destroy;
begin
  FreeAndNil(Fmodels);
  inherited Destroy;
end;

function TGeminiAIListModelsResponse.Getmodels: TObjectList<TGeminiAIResponseModel>;
begin
  Result := Fmodels;
end;

class function TGeminiAIListModelsResponse.FromJSON(const AValue: TJSONValue): TGeminiAIListModelsResponse;
begin
  Result := TJSONMapper<TGeminiAIListModelsResponse>.Default.FromObject(AValue);
end;

class function TGeminiAIListModelsResponse.FromJSON(const AValue: string): TGeminiAIListModelsResponse;
begin
  Result := TJSONMapper<TGeminiAIListModelsResponse>.Default.FromObject(AValue);
end;

function TGeminiAIListModelsResponse.ToJSONObject: TJSONValue;
begin
  Result := TJSONMapper<TGeminiAIListModelsResponse>.Default.ToObject(Self);
end;

function TGeminiAIListModelsResponse.ToJSONString: string;
begin
  Result := TJSONMapper<TGeminiAIListModelsResponse>.Default.ToString(Self);
end;

initialization

  RegisterClass(TGeminiAIResponseModel);
  RegisterClass(TGeminiAIListModelsResponse);

end.
