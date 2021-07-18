## Description
IOTAEditOptions used to be an interface to the global editor options. In recent editions of the RAD Studio IDE, certain options are now associated with particular file types, as seen in the Editor Options.

Use the [IOTAEditorServices](IOTAEditorServices) to get options for a particular internal id, passing one of the cDefEd consts from the top of the ToolsAPI unit.

You can also add your own editor options using the [IOTAEditorServices](IOTAEditorServices).

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetExtensions | |
| GetOptionsName | |
| GetOptionsIDString | |
| GetSyntaxHighlighter | |
| GetOptionsIndex | |
| SetExtensions | |
| SetOptionsName | |
| SetSyntaxHighlighter | |

## Properties
| Property | Description |
| ------------- | ------------- |
| Extensions | Calls GetExtensions or SetExtensions. | 
| OptionsName | Calls GetOptionsName or SetOptionsName. | 
| IDString | Calls GetIDString. | 
| SyntaxHighlighter | Calls GetSyntaxHighlighter or  SetSyntaxHighlighter. |
| OptionsIndex | Calls GetOptionsIndex. | 
