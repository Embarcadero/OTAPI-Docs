unit GeminiAIPlugin.Consts;

interface

const
  cGeminiAI_name = 'Gemini Code Assist';
  cGeminiAI_def_BaseUrl = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent';
  cGeminiAI_def_Model = 'gemini-pro';
  cGeminiAI_Def_Timeout = 30000;

  cGeminiAI_Msg_CheckAPI = 'The API key has not been set.';
  cGeminiAI_Msg_NoAnswer = 'No Answer';

  cGeminiAI_RegKey = 'GeminiCodeAssist';
  cGeminiAI_RegKey_Enabled = 'Enabled';
  cGeminiAI_RegKey_BaseURL = 'BaseURL';
  cGeminiAI_RegKey_Model = 'Model';
  cGeminiAI_RegKey_ApiKey = 'ApiKey';
  cGeminiAI_RegKey_Timeout = 'Timeout';

  cGeminiAI_Msg_BaseURL = 'Please Enter the BaseURL for Gemini';
  cGeminiAI_Msg_Model = 'Please Enter the Model for Gemini';
  cGeminiAI_Msg_APIKey = 'Please Enter the API Key for Gemini';
  cGeminiAI_Msg_Timeout = 'Please Enter the Timeout value for Gemini';
  cGeminiAI_URLRegex = '^((https?://[a-zA-Z0-9.-]+(:\d+)?(/.*)?)|(localhost(:\d+)?(/.*)?))$';
  cGeminiAI_Msg_InvalidURL = 'Invalid Base URL. Please provide a valid Localhost, HTTP or HTTPS URL.';

  cGeminiAI_ContentType = 'application/json';

/// <summary>
/// Find Gemini Code Assist API doc here: https://developers.google.com/gemini-code-assist/docs/overview
/// </summary>

implementation

end.
