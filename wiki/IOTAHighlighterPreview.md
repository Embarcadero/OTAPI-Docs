## Description
If an IOTAHighlighter implements IOTAHighlighterPreview, a preview of that highlighter's code will be shown in the color page.

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Description
| Method | Description |
| ------------- | ------------- |
| GetDisplayName | The display name for the source sample. |
| GetSampleText | SampleText to highlight. |
| GetInvalidBreakpointLine | Retrieve the line for current settings. Return -1 to not show it. |
| GetCurrentInstructionLine |  |
| GetValidBreakpointLine |  |
| GetDisabledBreakpointLine |  |
| GetErrorLine |  |
| GetSampleSearchText | Sample text to search for in order to show it as highlighted. Return an empty string to not support it. |
| GetBlockStartLine | Block start/end positions MUST be valid. 1-based indexes. |
| GetBlockStartCol |  |
| GetBlockEndLine |  |
| GetBlockEndCol |  |
## Properties
There are no properties.
