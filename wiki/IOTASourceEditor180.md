## Description

## Hierarchy
Up to Parent: [IOTASourceEditor70](IOTASourceEditor70)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetSubViewCount | Get the number of sub-Views on this editor.  This editor itself may be a sub view and may not be at index 0.  !!NOTE!! that this function will return 0 if this SourceEditor is not visible in any editor window.  You must call [IOTAEditor](IOTAEditor).[Show](IOTAEditor_Show) before using these functions to manipulate the views. | 
| GetSubViewIdentifier | Returns a view identifier for the given sub-view index.  This may just be the specific filename of the view or some other unique identifier. |
| GetSubViewIndex | Returns the sub-view index for this editor.  If this is the main source editor, its index will always be 0.  However for modules with more than one source editor, this may return > 0. (ie. Managed .cpp files with an associated .h file). |
| SwitchToView | Switches the editor to the specified view by view index. |
| SwitchToView | Switches the editor to the specified view by view identifier. |

## Properties
There are no properties.