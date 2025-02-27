unit GeminiPlugin.JsonHelper;

interface

uses
  System.Classes, System.Json, Rest.Json,
  System.Generics.Collections,
  Rest.JsonReflect;

const
  INDENT_SIZE = 2;

type
  TArrayMapper = class
  protected
    procedure RefreshArray<T>(ASource: TList<T>; var ADestination: TArray<T>);
    function List<T>(var AList: TList<T>; const ASource: TArray<T>): TList<T>;
    function ObjectList<T: class>(var AList: TObjectList<T>; const ASource: TArray<T>): TObjectList<T>;
  end;

  TJsonReflectionBase = class(TArrayMapper)
  private
    class procedure PrettyPrintPair(AJSONValue: TJSONPair; AOutputStrings: TStrings; ALast: Boolean; AIndent: Integer);
    class procedure PrettyPrintJSON(AJSONValue: TJsonValue; AOutputStrings: TStrings; AIndent: Integer = 0); overload;
    class procedure PrettyPrintArray(AJSONValue: TJSONArray; AOutputStrings: TStrings; ALast: Boolean; AIndent: Integer);
  protected
    function GetAsJson: string; virtual;
    procedure SetAsJson(const AValue: string); virtual;
  public
    class function PrettyPrintJSON(const AJson: string): string; overload;
    function ToString: string; override;
    property AsJson: string read GetAsJson write SetAsJson;
  end;

  GenericListReflectAttribute = class(JsonReflectAttribute)
  public
    constructor Create;
  end;

implementation

uses
  System.SysUtils, System.JSONConsts, System.Rtti, System.DateUtils;

{ TJsonReflectionBase }

function TJsonReflectionBase.GetAsJson: string;
begin
  Result := TJson.ObjectToJsonString(Self);
end;

class procedure TJsonReflectionBase.PrettyPrintJSON(AJSONValue: TJsonValue; AOutputStrings: TStrings; AIndent: Integer);
var
  I: Integer;
  LIdent: Integer;
begin
  LIdent := AIndent + INDENT_SIZE;
  I := 0;

  if AJSONValue is TJSONObject then
  begin
    AOutputStrings.Add(StringOfChar(' ', LIdent) + '{');
    for I := 0 to TJSONObject(AJSONValue).Count - 1 do
      PrettyPrintPair(TJSONObject(AJSONValue).Pairs[I], AOutputStrings, I = TJSONObject(AJSONValue).Count - 1, LIdent);

    AOutputStrings.Add(StringOfChar(' ', LIdent) + '}');
  end
  else if AJSONValue is TJSONArray then
    PrettyPrintArray(TJSONArray(AJSONValue), AOutputStrings, I = TJSONObject(AJSONValue).Count - 1, LIdent)
  else
    AOutputStrings.Add(StringOfChar(' ', LIdent) + AJSONValue.ToString);
end;

class procedure TJsonReflectionBase.PrettyPrintArray(AJSONValue: TJSONArray; AOutputStrings: TStrings; ALast: Boolean; AIndent: Integer);
var
  I: Integer;
begin
  AOutputStrings.Add(StringOfChar(' ', AIndent + INDENT_SIZE) + '[');

  for I := 0 to AJSONValue.Count - 1 do
  begin
    PrettyPrintJSON(AJSONValue.Items[I], AOutputStrings, AIndent);
    if I < AJSONValue.Count - 1 then
      AOutputStrings[AOutputStrings.Count - 1] := AOutputStrings[AOutputStrings.Count - 1] + ',';
  end;

  AOutputStrings.Add(StringOfChar(' ', AIndent + INDENT_SIZE - 2) + ']');
end;

class function TJsonReflectionBase.PrettyPrintJSON(const AJson: string): string;
var
  LStringList: TStringlist;
  LJSONValue: TJsonValue;
begin
  LStringList := TStringlist.Create;
  try
    LJSONValue := TJSONObject.ParseJSONValue(AJson);
    try
      if LJSONValue <> nil then
        PrettyPrintJSON(LJSONValue, LStringList);
    finally
      LJSONValue.Free;
    end;

    Result := LStringList.Text;
  finally
    LStringList.Free;
  end;
end;

class procedure TJsonReflectionBase.PrettyPrintPair(AJSONValue: TJSONPair; AOutputStrings: TStrings; ALast: Boolean; AIndent: Integer);
const
  TEMPLATE = '%s:%s';
var
  LLine: string;
  LNewList: TStringlist;
begin
  LNewList := TStringlist.Create;
  try
    PrettyPrintJSON(AJSONValue.JSONValue, LNewList, AIndent);
    LLine := Format(TEMPLATE, [AJSONValue.JsonString.ToString, Trim(LNewList.Text)]);
  finally
    LNewList.Free;
  end;

  LLine := StringOfChar(' ', AIndent + INDENT_SIZE) + LLine;
  if not ALast then
    LLine := LLine + ',';
  AOutputStrings.Add(LLine);
end;

procedure TJsonReflectionBase.SetAsJson(const AValue: string);
var
  LJSONValue: TJsonValue;
  LJSONObject: TJSONObject;
begin
  LJSONValue := TJSONObject.ParseJSONValue(AValue);
  try
    if not Assigned(LJSONValue) then
      Exit;

    if (LJSONValue is TJSONArray) then
    begin
      var LJSONUnMarshal := TJSONUnMarshal.Create;
      try
        LJSONUnMarshal.SetFieldArray(Self, 'Items', (LJSONValue as TJSONArray));
      finally
        LJSONUnMarshal.Free;
      end;

      Exit;
    end;

    if (LJSONValue is TJSONObject) then
      LJSONObject := LJSONValue as TJSONObject
    else
    begin
      var LValue := AValue.Trim;
      if (LValue.IsEmpty) and not Assigned(LJSONValue) or (LValue.Trim <> EmptyStr) and Assigned(LJSONValue) and LJSONValue.Null then
        Exit
      else
        raise EConversionError.Create(SCannotCreateObject);
    end;

    TJson.JsonToObject(Self, LJSONObject);
  finally
    LJSONValue.Free;
  end;
end;

function TJsonReflectionBase.ToString: string;
begin
  Result := AsJson;
end;

{ TArrayMapper }

function TArrayMapper.List<T>(var AList: TList<T>; const ASource: TArray<T>): TList<T>;
begin
  if AList = nil then
  begin
    AList := TList<T>.Create;
  end;
  Result := AList;
end;

function TArrayMapper.ObjectList<T>(var AList: TObjectList<T>; const ASource: TArray<T>): TObjectList<T>;
begin
  if AList = nil then
  begin
    AList := TObjectList<T>.Create(True);
  end;
  if AList.Count <> Length(ASource) then
    AList.AddRange(ASource);
  Result := AList;
end;

procedure TArrayMapper.RefreshArray<T>(ASource: TList<T>; var ADestination: TArray<T>);
begin
  if ASource <> nil then
    ADestination := ASource.ToArray;
end;

type
  TGenericListFieldInterceptor = class(TJSONInterceptor)
  public
    function ObjectsConverter(Data: TObject; Field: string): TListOfObjects; override;
  end;

{ TListFieldInterceptor }

function TGenericListFieldInterceptor.ObjectsConverter(Data: TObject; Field: string): TListOfObjects;
var
  ctx: TRttiContext;
  List: TList<TObject>;
  RttiProperty: TRttiProperty;
begin
  var LPropertyName := Copy(Field, 2, MAXINT);
  RttiProperty := ctx.GetType(Data.ClassInfo).GetProperty(LPropertyName);
  List := TList<TObject>(RttiProperty.GetValue(Data).AsObject);
  Result := TListOfObjects(List.List);
  SetLength(Result, List.Count);
end;

constructor GenericListReflectAttribute.Create;
begin
  inherited Create(ctObjects, rtObjects, TGenericListFieldInterceptor, nil, false);
end;

end.
