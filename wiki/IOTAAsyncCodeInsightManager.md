## Description

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| AsyncAllowCodeInsight | AAllow is set to True if AKey is supported by the manager. <br/>AKey has 4 special keys or is a character from the document. <br/> #0 CodeInsight <br/> #1 ParameterCodeInsight <br/> #2 BrowseCodeInsight <br/> #3 HintCodeInsight |
| AsyncCanInvoke | Return True if AInsightType is supported.|
| AsyncEnabled | Return True if enabled and ready to except Insights.|
| AsyncGetHintText | Invoke Help Insight with the results sent to ACallback.|
| AsyncGotoDefinition | Invoke go to definition with the results sent to ACallback.|
| AsyncInvokeCodeCompletion | Invoke code completion (Code Insight) with the results sent to ACallback.|
| AsyncInvokeParameterCodeInsight | Invoke parameter completion (Parameter Insight) with the results sent to ACallback.|
| AsyncOperationCanceled | Called if an operation needs to be canceled. One example would be code completion not returning before the user reqests another code completion.|
| AsyncParameterCodeInsightParamIndex | Called when the IDE was currently displaying parameter text. The callback returns the current index in the parameter list | 
| ShowCalculating| Called before an insight is invoked if the result is True then the 'Calculating...' status is show if False then nothing is shown.|

## Properties
| Property | Description |
| ------------- | ------------- |
There are no properties.

## Associated QPs
---
[RSP-29033](https://quality.embarcadero.com/browse/RSP-29033)
