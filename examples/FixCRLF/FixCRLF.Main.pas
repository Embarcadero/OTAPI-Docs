unit FixCRLF.Main;

interface

procedure Register;

implementation

uses
  ToolsAPI, System.SysUtils, System.Classes,
  FixCRLF.ModuleHelper, System.RegularExpressions, FixCRLF.Notifiers;

type

  TCRLFFileNotifier = class(TBaseCompileNotification, IOTANotifier,
    IOTAIDENotifier)
  public
    procedure FileNotification(NotifyCode: TOTAFileNotification; const FileName: string; var Cancel: Boolean); override;
  end;

function GetMsgGroup(const AName: string; out oMsgSvcs: IOTAMessageServices): IOTAMessageGroup;
begin
  if not Supports(BorlandIDEServices, IOTAMessageServices, oMsgSvcs) then
    Exit(nil);
  Result := oMsgSvcs.AddMessageGroup(AName);
  if Assigned(Result) then
    begin
      Result.AutoScroll := True;
      oMsgSvcs.ShowMessageView(Result);
    end;
end;

{ TCRLFFileNotifier }

procedure TCRLFFileNotifier.FileNotification(NotifyCode: TOTAFileNotification;
  const FileName: string; var Cancel: Boolean);
var
  EP: TOTAEditPos;
  LSS: TStringStream;
  LSize: Longint;
  LLine, LTarget, LMsg, LFileName: string;
  LModified: Boolean;
  LModSvcs: IOTAModuleServices;
  LModule: IOTAModule;
  LEditor: IOTAEditor;
  LSourceEditor: IOTASourceEditor;
  LReader: IOTAEditReader;
  LPosition: IOTAEditPosition;
  LBuffer: IOTAEditBuffer;
  LMsgSvcs: IOTAMessageServices;
  LMsgGroup: IOTAMessageGroup;
  vEOF, LAutoIndent: Boolean;
  vStartRow, vStartColumn, LMovingRow, LMovingColumn, LEOFRow, LEOFColumn: Integer;
begin
  case NotifyCode of
    ofnFileOpened: begin
      if not Supports(BorlandIDEServices, IOTAModuleServices, LModSvcs) then
        Exit;
      LModule := LModSvcs.OpenModule(FileName);
      LEditor := LModule.CurrentEditor;
      if not Supports(LEditor, IOTASourceEditor, LSourceEditor) then
        Exit;

      LModified := False;
      LSourceEditor.Show;
      EP := LSourceEditor.EditViews[0].CursorPos;
      LSS := TStringStream.Create;
      LReader := LSourceEditor.CreateReader;
      LSize := GetReaderTextSize(LReader);
      LReader := nil;
      LBuffer := LSourceEditor.EditViews[0].Buffer;
      LPosition := LBuffer.EditPosition;

      vStartColumn := LPosition.Column;
      vStartRow := LPosition.Row;
      LPosition.MoveEOF;
      LEOFRow := LPosition.Row;
      LEOFColumn := LPosition.Column;
      LPosition.MoveReal(vStartRow, vStartColumn);
      try
        repeat
          if (LPosition.Row = LEOFRow) and (LPosition.Column >= LEOFColumn) then
            Break;
          LLine := ReadLine(LPosition, LMovingRow, LMovingColumn, vEOF);
          LTarget := TRegEx.Replace(LLine, '(?:\r?\n|\r)+', #13#10);
          LSS.WriteString(LTarget);

          if vEOF then
            Break;

          if LLine = LTarget then
            Continue;

          LModified := True;
        until False;
      finally
        LSourceEditor.Show;
        if LModified and not LBuffer.IsReadOnly then
          begin
            LPosition.MoveReal(vStartRow, vStartColumn);
            LPosition.Delete(LSize);
            LAutoIndent := LBuffer.BufferOptions.AutoIndent;
            if LAutoIndent then
              LBuffer.BufferOptions.AutoIndent := False;
            LPosition.InsertText(LSS.DataString);
            if LAutoIndent then
              LBuffer.BufferOptions.AutoIndent := True;
            LMsgGroup := GetMsgGroup('Editor', LMsgSvcs);
            LFileName := LSourceEditor.FileName;
            try
              LSS.SaveToFile(LFileName);
              LModule.Refresh(True); // Force reload
              if Assigned(LMsgSvcs) and Assigned(LMsgGroup) then
                begin
                  LMsg := Format('Converted %s line endings into CRLF', [ExtractFileName(LFileName)]);
                  LMsgSvcs.AddTitleMessage(LMsg, LMsgGroup);
                end;
            except
              on E: Exception do
                begin
                  LMsg := Format('Failed to convert line endings for %s into CRLF', [ExtractFileName(LFileName)]);
                  LMsgSvcs.AddTitleMessage(LMsg, LMsgGroup);
                end;
            end;
          end;
        LSS.Free;

        // Release interfaces manually because there's
        // an issue releasing it automatically
        LModSvcs := nil;
        LModule := nil;
        LEditor := nil;
        LSourceEditor := nil;
        LReader := nil;
        LPosition := nil;
        LBuffer := nil;
        LMsgSvcs := nil;
        LMsgGroup := nil;
      end;
    end;
  end;
end;

var
  GIndex: Integer;

procedure Register;
var
  LServices: IOTAServices50;
  LIDENotifier: IOTAIDENotifier;
begin
  if not Supports(BorlandIDEServices, IOTAServices50, LServices) then
    Exit;
  LIDENotifier := TCRLFFileNotifier.Create as IOTAIDENotifier;
  GIndex := LServices.AddNotifier(LIDENotifier);
  LIDENotifier := nil;
end;

procedure Unregister;
var
  LServices: IOTAServices50;
begin
  if not Supports(BorlandIDEServices, IOTAServices50, LServices) then
    Exit;
  LServices.RemoveNotifier(GIndex);
end;

initialization
finalization
  Unregister;
end.
