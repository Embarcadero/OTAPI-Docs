unit GeminiAIPlugin.Setting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.Win.Registry, ToolsAPI.AI,
  GeminiAIPlugin.Consts, System.RegularExpressions, Vcl.Mask;

type
  TFrame_Setting_GeminiCodeAssist = class(TFrame, IOTAAIPluginSetting)
    Chk_Enabled: TCheckBox;
    Edt_ApiKey: TLabeledEdit;
    Edt_BaseURL: TLabeledEdit;
    Edt_Model: TLabeledEdit;
    Edt_Timeout: TLabeledEdit;
  private
    { Private declarations }
    FInitialEnabled: Boolean;
    FInitialBaseURL: string;
    FInitialModel: string;
    FInitialApiKey: string;
    FInitialTimeout: Integer;
    function GetModified: Boolean;
    function GetPluginEnabled: Boolean;
  protected
    { Protected declarations }
    procedure Loaded; override;
  public
    class function GetRegKey: string;
    { Public declarations }
    procedure LoadSettings;
    procedure SaveSettings;
    function ParameterValidations(var VErrorMsg: string): Boolean;
    property Modified: Boolean read GetModified;
    property PluginEnabled: Boolean read GetPluginEnabled;
  end;

implementation

uses
  ToolsAPI;

{$R *.dfm}

{ TGeminiAIFrame_Setting }

function TFrame_Setting_GeminiCodeAssist.GetModified: Boolean;
begin
  Result := (FInitialEnabled <> Chk_Enabled.Checked) or
    (FInitialBaseURL <> Edt_BaseURL.Text) or
    (FInitialModel <> Edt_Model.Text) or
    (FInitialApiKey <> Edt_ApiKey.Text) or
    (FInitialTimeout <> StrToIntDef(Edt_Timeout.Text, 0));
end;

class function TFrame_Setting_GeminiCodeAssist.GetRegKey: string;
var
  LServices50: IOTAServices50;
begin
  var LBaseSubKey := '\AIPlugin\';
  if Supports(BorlandIDEServices, IOTAServices50, LServices50) then
    begin
      // LBaseKey = HKEY_CURRENT_USER\Software\Embarcadero\BDS\23.0
      // if -rSomeBaseKey is specified then
      //   LBaseKey = HKEY_CURRENT_USER\Software\Embarcadero\SomeBaseKey\23.0
      var LBaseKey := LServices50.GetBaseRegistryKey;
      Result := LBaseKey + LBaseSubKey + cGeminiAI_RegKey;
    end else
    begin
      Result := 'Software' + LBaseSubKey + cGeminiAI_RegKey;
    end;
end;

function TFrame_Setting_GeminiCodeAssist.GetPluginEnabled: Boolean;
begin
  Result := Chk_Enabled.Checked;
end;

procedure TFrame_Setting_GeminiCodeAssist.LoadSettings;
var
  LReg: TRegistry;
begin
  LReg := TRegistry.Create;
  try
    LReg.RootKey := HKEY_CURRENT_USER;
    if LReg.OpenKey(GetRegKey, False) then
    begin
      if LReg.ValueExists(cGeminiAI_RegKey_Enabled) then
        Chk_Enabled.Checked := LReg.ReadBool(cGeminiAI_RegKey_Enabled);
      if LReg.ValueExists(cGeminiAI_RegKey_BaseURL) then
        Edt_BaseURL.Text := LReg.ReadString(cGeminiAI_RegKey_BaseURL);
      if LReg.ValueExists(cGeminiAI_RegKey_Model) then
        Edt_Model.Text := LReg.ReadString(cGeminiAI_RegKey_Model);
      if LReg.ValueExists(cGeminiAI_RegKey_ApiKey) then
        Edt_ApiKey.Text := LReg.ReadString(cGeminiAI_RegKey_ApiKey);
      if LReg.ValueExists(cGeminiAI_RegKey_Timeout) then
        Edt_Timeout.Text := IntToStr(LReg.ReadInteger(cGeminiAI_RegKey_Timeout));
      LReg.CloseKey;
    end;
    FInitialEnabled := Chk_Enabled.Checked;
    FInitialBaseURL := Edt_BaseURL.Text;
    FInitialModel := Edt_Model.Text;
    FInitialApiKey := Edt_ApiKey.Text;
    FInitialTimeout := StrToIntDef(Edt_Timeout.Text, 0);
  finally
    LReg.Free;
  end;
end;

procedure TFrame_Setting_GeminiCodeAssist.Loaded;
begin
  inherited;
  LoadSettings;
end;

procedure TFrame_Setting_GeminiCodeAssist.SaveSettings;
var
  LReg: TRegistry;
begin
  LReg := TRegistry.Create;
  try
    LReg.RootKey := HKEY_CURRENT_USER;
    if LReg.OpenKey(GetRegKey, True) then
    begin
      LReg.WriteBool(cGeminiAI_RegKey_Enabled, Chk_Enabled.Checked);
      LReg.WriteString(cGeminiAI_RegKey_BaseURL, Edt_BaseURL.Text);
      LReg.WriteString(cGeminiAI_RegKey_Model, Edt_Model.Text);
      LReg.WriteString(cGeminiAI_RegKey_ApiKey, Edt_ApiKey.Text);
      LReg.WriteInteger(cGeminiAI_RegKey_Timeout, StrToIntDef(Edt_Timeout.Text, 0));
      LReg.CloseKey;
    end;
  finally
    LReg.Free;
  end;
end;

function TFrame_Setting_GeminiCodeAssist.ParameterValidations(var VErrorMsg: string): Boolean;
var
  Regex: TRegEx;
  LErrorMsg: string;
begin
  Result := True;
  if Edt_BaseURL.EditText.Trim.IsEmpty then
    begin
      Result := False;
      LErrorMsg := cGeminiAI_Msg_BaseURL;
    end else
    begin
      Regex := TRegEx.Create(cGeminiAI_URLRegex, [TRegExOption.roIgnoreCase]);
      if not Regex.IsMatch(Edt_BaseURL.Text) then
        begin
          Result := False;
          LErrorMsg := cGeminiAI_Msg_InvalidURL;
        end;
    end;

  if Result and Edt_Model.EditText.Trim.IsEmpty then
    begin
      Result := False;
      LErrorMsg := cGeminiAI_Msg_Model;
    end;

  if Result and Edt_ApiKey.EditText.Trim.IsEmpty then
    begin
      Result := False;
      LErrorMsg := cGeminiAI_Msg_APIKey;
    end;

  if Result and Edt_Timeout.EditText.Trim.IsEmpty then
    begin
      Result := False;
      LErrorMsg := cGeminiAI_Msg_Timeout;
    end;

  if not Result then
    begin
      VErrorMsg := LErrorMsg;
      ShowMessage(LErrorMsg);
    end;

end;

end.
