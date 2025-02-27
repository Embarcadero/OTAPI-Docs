unit GeminiPlugin.Models;

interface

uses
  GeminiPlugin.JsonHelper, System.Generics.Collections, REST.Json.Types,
  System.Classes;

{$M+}

type
  // Gemini API Models

  TPart = class
  protected
    [JSONName('text')]
    FText: string;
  published
    property Text: string read FText write FText;
  end;

  TContent = class(TJsonReflectionBase)
  protected
    [JSONName('parts'), JSONMarshalled(False)]
    FPartsArray: TArray<TPart>;

    [GenericListReflect]
    FParts: TObjectList<TPart>;
    function GetParts: TObjectList<TPart>;
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Parts: TObjectList<TPart> read GetParts;
  end;

  TRequestObj = class(TJsonReflectionBase)
  protected
    [JSONName('contents'), JSONMarshalled(False)]
    FContentsArray: TArray<TContent>;

    [GenericListReflect]
    FContents: TObjectList<TContent>;
    function GetContents: TObjectList<TContent>;
    function GetAsJson: string; override;
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Contents: TObjectList<TContent> read GetContents;
  end;

  TCandidate = class
  protected
    [JSONName('content')]
    FContent: TContent;
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Content: TContent read FContent;
  end;

  TResponseObj = class(TJsonReflectionBase)
  protected
    [JSONName('candidates'), JSONMarshalled(False)]
    FCandidatesArray: TArray<TCandidate>;

    [GenericListReflect]
    FCandidates: TObjectList<TCandidate>;
    function GetCandidates: TObjectList<TCandidate>;
    function GetAsJson: string; override;
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Candidates: TObjectList<TCandidate> read GetCandidates;
  end;

  TErrorInfo = class
  protected
    [JSONName('message')]
    FMessage: string;
  published
    property Message: string read FMessage write FMessage;
  end;

  TErrorObj = class(TJsonReflectionBase)
  protected
    [JSONName('error')]
    FError: TErrorInfo;
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Error: TErrorInfo read FError;
  end;

implementation

{ TContent }

constructor TContent.Create;
begin
  inherited;
  FParts := TObjectList<TPart>.Create;
end;

destructor TContent.Destroy;
begin
  FParts.Free;
  inherited;
end;

function TContent.GetParts: TObjectList<TPart>;
begin
  ObjectList<TPart>(FParts, FPartsArray);
  Result := FParts;
end;

{ TRequestObj }

constructor TRequestObj.Create;
begin
  inherited;
  FContents := TObjectList<TContent>.Create;
end;

destructor TRequestObj.Destroy;
begin
  GetContents.Free;
  inherited;
end;

function TRequestObj.GetAsJson: string;
begin                  // Source, Destination
  RefreshArray<TContent>(FContents, FContentsArray);
  Result := inherited;
end;

function TRequestObj.GetContents: TObjectList<TContent>;
begin
                              // Destination, Source
  Result := ObjectList<TContent>(FContents, FContentsArray);
end;

{ TCandidate }

constructor TCandidate.Create;
begin
  inherited;
  FContent := TContent.Create;
end;

destructor TCandidate.Destroy;
begin
  FContent.Free;
  inherited;
end;

{ TResponseObj }

constructor TResponseObj.Create;
begin
  inherited;
  FCandidates := TObjectList<TCandidate>.Create;
end;

destructor TResponseObj.Destroy;
begin
  GetCandidates.Free;
  inherited;
end;

function TResponseObj.GetAsJson: string;
begin
                         // Source, Destination
//  RefreshArray<TCandidate>(FCandidates, FCandidatesArray);
  Result := inherited;
end;

function TResponseObj.GetCandidates: TObjectList<TCandidate>;
begin
                                  // Destination, Source
  Result := ObjectList<TCandidate>(FCandidates, FCandidatesArray);
end;

{ TErrorObj }

constructor TErrorObj.Create;
begin
  inherited;
  FError := TErrorInfo.Create;
end;

destructor TErrorObj.Destroy;
begin
  FError.Free;
  inherited;
end;

end.
