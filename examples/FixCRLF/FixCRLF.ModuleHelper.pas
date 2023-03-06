unit FixCRLF.ModuleHelper;

interface

uses
  ToolsAPI;

function GetReaderTextSize(const AReader: IOTAEditReader): Longint;

function ReadLine(const APosition: IOTAEditPosition;
  var vStartRow, vStartColumn: Integer; var vEOF: Boolean): string;

implementation

uses
  System.SysUtils;


function GetReaderTextSize(const AReader: IOTAEditReader): Longint;
var
  iHigh, iLow, iMiddle: Longint;
  c: Char;
begin
  Result := 0;
  if (AReader <> nil) then
    begin
      iHigh := High(Longint);
      iLow := 0;
      while iLow <= iHigh do
        begin
          iMiddle := (iHigh + iLow) div 2;
           if AReader.GetText(iMiddle, @c, 1) = 1 then
           begin
             iLow := iMiddle + 1;
           end else
           begin
             iHigh := iMiddle - 1;
           end;
        end;
      Result := iLow;
    end;
end;

function ReadLine(const APosition: IOTAEditPosition;
  var vStartRow, vStartColumn: Integer; var vEOF: Boolean): string;
var
  LEndColumn, LNumChars: Integer;
begin
  APosition.Save;
  try
    vStartRow := APosition.Row;
    APosition.MoveBOL;
    vStartRow := APosition.Row;
    vStartColumn := APosition.Column;
    APosition.MoveEOL;
    LEndColumn := APosition.Column;
    LNumChars := (LEndColumn - vStartColumn) + 2;
    APosition.MoveReal(vStartRow, 1);
    Result := APosition.Read(LNumChars);
  finally
    APosition.Restore;
    if not APosition.MoveReal(vStartRow+1, 1) then
      vEOF := True else
      vEOF := False;
  end;
end;

end.
