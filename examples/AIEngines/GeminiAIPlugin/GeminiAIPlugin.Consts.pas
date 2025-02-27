unit GeminiAIPlugin.Consts;

interface

const
  cGeminiAI_name = 'Gemini2';
  cGeminiAI_def_BaseUrl = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent';
  cGeminiAI_def_Model = 'gemini-pro';
  cGeminiAI_Def_Timeout = 30000;

  cGeminiAI_Msg_CheckAPI = 'The API key has not been set.';
  cGeminiAI_Msg_NoAnswer = 'No Answer';

  cGeminiAI_RegKey = 'Gemini~';
  cGeminiAI_RegKey_Enabled = 'Enabled';
  cGeminiAI_RegKey_BaseURL = 'BaseURL';
  cGeminiAI_RegKey_Model = 'Model';
  cGeminiAI_RegKey_ApiKey = 'ApiKey';
  cGeminiAI_RegKey_Timeout = 'Timeout';

  cGeminiAI_Msg_BaseURL = 'Please enter the BaseURL for Gemini';
  cGeminiAI_Msg_Model = 'Please enter the Model for Gemini';
  cGeminiAI_Msg_APIKey = 'Please enter the API Key for Gemini';
  cGeminiAI_Msg_Timeout = 'Please enter the Timeout value for Gemini';
  cGeminiAI_URLRegex = '^((https?://[a-zA-Z0-9.-]+(:\d+)?(/.*)?)|(localhost(:\d+)?(/.*)?))$';
  cGeminiAI_Msg_InvalidURL = 'Invalid Base URL. Please provide a valid localhost, HTTP or HTTPS URL.';

  cGeminiAI_ContentType = 'application/json';

/// <summary>
/// Find Gemini AI API doc here: https://developers.google.com/gemini-code-assist/docs/overview
/// </summary>

implementation

end.
