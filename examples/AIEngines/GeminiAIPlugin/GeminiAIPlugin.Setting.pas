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
    Edt_Timeout: TLabeledEdit;
    cbModel: TComboBox;
    lbl_Model: TLabel;
    procedure FrameClick(Sender: TObject);
    procedure cbModelClick(Sender: TObject);
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
    procedure ClearCBModelItems;
    procedure SelectCBModelItem;
    function GetCBModelItemName: string;
  public
    destructor Destroy; override;
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
  ToolsAPI, GeminiAIPlugin.Controller;

{$R *.dfm}

type
  TModelInfo = TGeminiAIRestClient.TModelInfo;
  TModelInfoObj = class
  protected
    FModelInfo: TModelInfo;
  public
    constructor Create(const AModelInfo: TModelInfo);
    destructor Destroy; override;
    property Description: string read FModelInfo.Description;
    property DisplayName: string read FModelInfo.DisplayName;
    property ModelName: string read FModelInfo.Name;
  end;

constructor TModelInfoObj.Create(const AModelInfo: TGeminiAIRestClient.TModelInfo);
begin
  FModelInfo := AModelInfo;
end;

destructor TModelInfoObj.Destroy;
begin
  inherited;
end;

{ TGeminiAIFrame_Setting }

procedure TFrame_Setting_GeminiCodeAssist.cbModelClick(Sender: TObject);
begin
  var LCount := cbModel.Items.Count;
  if (LCount > 0) and (cbModel.Text <> '') then
    begin
      for var I := 0 to LCount - 1 do
        begin
          var LModelInfoObj := TModelInfoObj(cbModel.Items.Objects[I]);
          if (LModelInfoObj.DisplayName = cbModel.Text) or
             (LModelInfoObj.ModelName = cbModel.Text) then
          begin
            cbModel.ShowHint := True;
            cbModel.Hint := LModelInfoObj.Description;
            Exit;
          end;
        end;
    end;
end;

procedure TFrame_Setting_GeminiCodeAssist.ClearCBModelItems;
begin
  if cbModel.Items.Count > 0 then
    begin
      for var I := cbModel.Items.Count-1 downto 0 do
        begin
          var LModelInfoObj := cbModel.Items.Objects[I];
          LModelInfoObj.Free;
        end;
      cbModel.Items.Clear;
    end;
end;

destructor TFrame_Setting_GeminiCodeAssist.Destroy;
begin
  ClearCBModelItems;
  inherited;
end;

procedure TFrame_Setting_GeminiCodeAssist.FrameClick(Sender: TObject);
begin
//
end;

function TFrame_Setting_GeminiCodeAssist.GetModified: Boolean;
begin
  Result := (FInitialEnabled <> Chk_Enabled.Checked) or
    (FInitialBaseURL <> Edt_BaseURL.Text) or
    (FInitialModel <> cbModel.Text) or
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
  LModelName: string;
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
        begin
          LModelName := LReg.ReadString(cGeminiAI_RegKey_Model);
        end else
        begin
          LModelName := '';
        end;
      if LReg.ValueExists(cGeminiAI_RegKey_ApiKey) then
        Edt_ApiKey.Text := LReg.ReadString(cGeminiAI_RegKey_ApiKey);
      if LReg.ValueExists(cGeminiAI_RegKey_Timeout) then
        Edt_Timeout.Text := IntToStr(LReg.ReadInteger(cGeminiAI_RegKey_Timeout));
      LReg.CloseKey;
    end;
    FInitialEnabled := Chk_Enabled.Checked;
    FInitialBaseURL := Edt_BaseURL.Text;
    FInitialModel := cbModel.Text;
    FInitialApiKey := Edt_ApiKey.Text;
    FInitialTimeout := StrToIntDef(Edt_Timeout.Text, 0);
    var LGeminiAIController := TGeminiAIRestClient.Create;
    try
      ClearCBModelItems; // Clear existing object instances, if any
      LGeminiAIController.ApiKey := FInitialApiKey;
      var LModelInfos := LGeminiAIController.ListModels;
      for var LModelInfo in LModelInfos do
        begin
          var LModelInfoObj := TModelInfoObj.Create(LModelInfo);
          cbModel.Items.AddObject(LModelInfo.DisplayName, LModelInfoObj);
        end;
      cbModel.Text := LModelName;
      SelectCBModelItem;
    finally
      LGeminiAIController.Free;
    end;
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
      var LModelName := GetCBModelItemName;
      LReg.WriteString(cGeminiAI_RegKey_Model, LModelName);
      LReg.WriteString(cGeminiAI_RegKey_ApiKey, Edt_ApiKey.Text);
      LReg.WriteInteger(cGeminiAI_RegKey_Timeout, StrToIntDef(Edt_Timeout.Text, 0));
      LReg.CloseKey;
    end;
  finally
    LReg.Free;
  end;
end;

procedure TFrame_Setting_GeminiCodeAssist.SelectCBModelItem;
begin
  var LCount := cbModel.Items.Count;
  if (LCount > 0) and (cbModel.Text <> '') then
    begin
      for var I := 0 to LCount - 1 do
        begin
          var LModelInfoObj := TModelInfoObj(cbModel.Items.Objects[I]);
          if (LModelInfoObj.DisplayName = cbModel.Text) or
             (LModelInfoObj.ModelName = cbModel.Text) then
          begin
            cbModel.Text := LModelInfoObj.DisplayName;
            Exit;
          end;
        end;
    end;
end;

function TFrame_Setting_GeminiCodeAssist.GetCBModelItemName: string;
begin
  var LCount := cbModel.Items.Count;
  if (LCount > 0) and (cbModel.Text <> '') then
    begin
      for var I := 0 to LCount - 1 do
        begin
          var LModelInfoObj := TModelInfoObj(cbModel.Items.Objects[I]);
          if (LModelInfoObj.DisplayName = cbModel.Text) or
             (LModelInfoObj.ModelName = cbModel.Text) then
          begin
            Result := LModelInfoObj.ModelName;
            Exit;
          end;
        end;
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

  if Result and string(cbModel.Text).Trim.IsEmpty then
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
