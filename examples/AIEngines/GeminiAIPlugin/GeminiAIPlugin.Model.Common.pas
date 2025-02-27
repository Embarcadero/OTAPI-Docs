unit GeminiAIPlugin.Model.Common;

interface

uses
  System.Classes, System.JSON.Serializers, System.Generics.Collections,
  System.JSON.Converters, System.JSON;

type

  TPart = class;
  TJsonListConverterTPart = class(TJsonTypedListConverter<TPart>);

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TPart = class(TPersistent)
  private
    FText: string;
    function GetText: string;
  public
    [JSONName('text')]
    property Text: string read GetText write FText;
  end;

  [JsonSerialize(TJsonMemberSerialization.Public)]
  TGeminiRequestContent = class(TPersistent)
  protected
    FParts: TObjectList<TPart>;
    function GetParts: TObjectList<TPart>;
  public
    constructor Create;
    destructor Destroy; override;
    [JsonConverter(TJsonListConverterTPart), JSONName('parts')]
    property Parts: TObjectList<TPart> read GetParts;
  end;

implementation

uses
  System.SysUtils;

function TPart.GetText: string;
begin
  Result := FText;
end;

constructor TGeminiRequestContent.Create;
begin
  inherited Create;
  FParts := TObjectList<TPart>.Create(True);
end;

destructor TGeminiRequestContent.Destroy;
begin
  FreeAndNil(FParts);
  inherited Destroy;
end;

function TGeminiRequestContent.GetParts: TObjectList<TPart>;
begin
  Result := FParts;
end;

end.
