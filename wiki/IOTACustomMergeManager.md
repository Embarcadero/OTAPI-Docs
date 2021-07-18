## Description

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetDefaultDifferenceViewer | Returns the current default difference viewer. |
| GetDefaultExternalDifferenceViewer | Returns the current default external difference viewer.  |
| GetDefaultInternalDifferenceViewer | Returns the current default internal difference viewer. |
| GetExternalCount | Returns the number of available external difference viewers. |
| GetExternalDifferenceViewer | Returns the specified external difference viewer. |
| GetInternalCount | Returns the number of available internal difference viewers. |
| GetInternalDifferenceViewer | Returns the specified internal difference viewer. |
| RegisterCustomDifferenceViewer | Registers an internal custom difference viewer. Returns the index of the newly registerd difference viewer. |
| ShowDifference | Request that a difference be shown. Left and Right represent the file contents to show in the Difference viewer. LeftDisplayName and RightDisplayName are strings that the Difference viewer should show in its user interface. LeftFileName and RightFileName (if specified) are the actual file names of the files being shown in the Difference viewer. LeftFlag and RightFlag indicate the types of the two items shown in the Difference viewer. |
| UnRegisterCustomDifferenceViewer | Unregisters a previously registered custom difference viewer. | 

## Properties
| Property | Description |
| ------------- | ------------- |
| DefaultDifferenceViewer | Calls GetDefaultDifferenceViewer. | 
| DefaultExternalDifferenceViewer | Calls GetDefaultExternalDifferenceViewer. | 
| DefaultInternalDifferenceViewer | Calls GetDefaultInternalDifferenceViewer. | 
| ExternalCount | Calls GetExternalCount. | 
| InternalCount | Calls GetInternalCount. | 
