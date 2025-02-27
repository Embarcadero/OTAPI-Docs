URL
```
https://generativelanguage.googleapis.com/v1beta/models/<modelname>:<method>?key=APIKey
```
Method:
```
generateContent
```
modelname:
```
gemini-2.0-flash
gemini-pro
```
Request
```
  {
    "contents": [
      {
        "parts": [
          {
            "text": "Explain how this API works"
          }
        ]
      }
    ]
  }

```

Response
```
{
  "candidates": [
    {
      "content": {
        "parts": [
          {
            "text": "Hi! How can I help you today?\n"
          }
        ],
        "role": "model"
      },
      "finishReason": "STOP",
      "avgLogprobs": -0.23888545036315917
    }
  ],
  "usageMetadata": {
    "promptTokenCount": 2,
    "candidatesTokenCount": 10,
    "totalTokenCount": 12,
    "promptTokensDetails": [
      {
        "modality": "TEXT",
        "tokenCount": 2
      }
    ],
    "candidatesTokensDetails": [
      {
        "modality": "TEXT",
        "tokenCount": 10
      }
    ]
  },
  "modelVersion": "gemini-2.0-flash"
}
```