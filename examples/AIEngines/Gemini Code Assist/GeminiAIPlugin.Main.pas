unit GeminiAIPlugin.Main;

interface

uses
  ToolsAPI, ToolsAPI.AI, System.Win.Registry, Winapi.Windows, System.SysUtils,
  System.Classes, GeminiAIPlugin.Controller, GeminiAIPlugin.Consts,
  GeminiAIPlugin.Setting;

type
  TGeminiPlugin = class(TGeminiAIRestClient, IOTAAIPlugin)
  protected
    procedure LoadSetting;
    {IOTAAIPlugin}
    function GetName: string;
    function GetFeatures: TAIFeatures;
    function GetEnabled: Boolean;
  public
    {IOTAAIPlugin}
    function GenerateImage(const APrompt: string; const ASize: string; const AFormat: string): TGUID;
    function GenerateSpeechFromText(const AText: string; const AVoice: string): TGUID;
    function GenerateTextFromAudioFile(const AAudioFilePath: string): TGUID;
    function Instruction(const AInput: string; const AInstruction: string): TGUID;
    function LoadModels: TGUID;
    function Moderation(const AInput: string): TGUID;

    function Chat(const AQuestion: string): TGUID;
    function GetSettingFrame(AOwner: TComponent): IOTAAIPluginSetting;
    procedure Cancel;

    property AvailableFeatures: TAIFeatures read GetFeatures;
    property Enabled: Boolean read GetEnabled;
    property Name: string read GetName;
  end;

procedure Register;

implementation

var
  PluginIndex: Integer = -1;
  GeminiPlugin: TGeminiPlugin;

procedure Register;
begin
  if AIEngineService <> nil then
  begin
    GeminiPlugin := TGeminiPlugin.Create;
    PluginIndex := AIEngineService.RegisterPlugin(GeminiPlugin);
  end;
end;

{ TGeminiPlugin }

procedure TGeminiPlugin.Cancel;
begin
  DoCancel;
end;

function TGeminiPlugin.Chat(const AQuestion: string): TGUID;
begin
  LoadSetting;
  Result := TGUID.NewGuid;
  DoChat(AQuestion, Result);
end;

function TGeminiPlugin.GenerateImage(const APrompt, ASize, AFormat: string): TGUID;
begin
// Not used.
end;

function TGeminiPlugin.GenerateSpeechFromText(const AText, AVoice: string): TGUID;
begin
// Not used.
end;

function TGeminiPlugin.GenerateTextFromAudioFile(const AAudioFilePath: string): TGUID;
begin
// Not used.
end;

function TGeminiPlugin.GetEnabled: Boolean;
var
  LReg: TRegistry;
begin
  Result := False;
  LReg := TRegistry.Create;
  try
    LReg.RootKey := HKEY_CURRENT_USER;
    if LReg.OpenKey(TFrame_Setting_GeminiCodeAssist.GetRegKey, False) then
    begin
      if LReg.ValueExists(cGeminiAI_RegKey_Enabled) then
        Result := LReg.ReadBool(cGeminiAI_RegKey_Enabled);
      LReg.CloseKey;
    end;
  finally
    LReg.Free;
  end;
end;

function TGeminiPlugin.GetFeatures: TAIFeatures;
begin
  Result := [afChat];
end;

function TGeminiPlugin.GetName: string;
begin
  Result := cGeminiAI_name;
end;

function TGeminiPlugin.GetSettingFrame(AOwner: TComponent): IOTAAIPluginSetting;
begin
  Result := TFrame_Setting_GeminiCodeAssist.Create(AOwner);
end;

function TGeminiPlugin.Instruction(const AInput, AInstruction: string): TGUID;
begin
// Not used.
end;

function TGeminiPlugin.LoadModels: TGUID;
begin
// Not used.
end;

procedure TGeminiPlugin.LoadSetting;
var
  LReg: TRegistry;
begin
  LReg := TRegistry.Create;
  try
    LReg.RootKey := HKEY_CURRENT_USER;
    if LReg.OpenKey(TFrame_Setting_GeminiCodeAssist.GetRegKey, False) then
    begin
      if LReg.ValueExists(cGeminiAI_RegKey_BaseURL) then
        FBaseURL := LReg.ReadString(cGeminiAI_RegKey_BaseURL);
      if LReg.ValueExists(cGeminiAI_RegKey_Model) then
        FModel := LReg.ReadString(cGeminiAI_RegKey_Model);
      if LReg.ValueExists(cGeminiAI_RegKey_ApiKey) then
        FApiKey := LReg.ReadString(cGeminiAI_RegKey_ApiKey);
      if LReg.ValueExists(cGeminiAI_RegKey_Timeout) then
        FTimeOut := LReg.ReadInteger(cGeminiAI_RegKey_Timeout);
      LReg.CloseKey;
    end;
  finally
    LReg.Free;
  end;
end;

function TGeminiPlugin.Moderation(const AInput: string): TGUID;
begin
// Not used.
end;

initialization
finalization
  if (AIEngineService <> nil) and (PluginIndex <> -1) then
    AIEngineService.UnregisterPlugin(PluginIndex);
  GeminiPlugin := nil;
end.
