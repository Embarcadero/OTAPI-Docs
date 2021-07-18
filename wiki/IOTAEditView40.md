## Description
IOTAEditView is an interface to the visual source editor. Every file open and visible in the source editor has an associated edit view. The view represents the visual aspects of the editor, such as the cursor position, selected block, and tab expansion.

The view has three ways to specify a position in the editor buffer or view. Different functions require different ways of specifying positions, and functions permit converting between the representations. The three representations are:

1. Linear position: linear offset from the start of the buffer, expressed as an integer. This is the traditional way to specify a file offset.
2. Character position: line number and character offset within the line, expressed as a TOTACharPos record. The first character in the buffer is at line 1, character index 0. Each tab character takes up 1 character position.
3. Editor position: line number and column offset from the left margin, expressed as a TOTAEditPos record. Tabs are expanded to the tab stops set in the Editor Options. The first character in the buffer is at line 1, column 1.

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetCursorPos |  Return the Current cursor position.  |
| SetCursorPos |  Set the current Cursor position.  |
| GetTopPos |  Return the Current top visible position.  |
| SetTopPos |  Set the current top visible position.  |
| GetViewSize |  Get size of the visible portion of the view in character cells.  |
| PosToCharPos |  Converts a linear buffer offset position to a CharPos.  |
| CharPosToPos |  Convert a CharPos to a linear buffer offset.  |
| ConvertPos |  Convert between a EdPos and a CharPos.  |
| GetAttributeAtPos |  Return the token attributes at the given EdPos. If IncludeMargin is true, the attribute at the right margin line is the margin line attribute, else it returns the actual char attribute. |
| SameView |  Returns true if this interface instance is connected to the same underlying view as the indicated instance. You must use this method in order to test for equality between views since several interface instances may share a single view.  You should also not hold onto these view interfaces for any length of time, unless a notifier is registered with the IOTASourceEditor so you can determine when the underlying implementation is vanishing.  | 


## Properties
| Property | Description |
| ------------- | ------------- |
| CursorPos | Calls GetCursorPos or SetCursorPos. |
| TopPos | Calls GetTopPos or SetTopPos. |
| ViewSize | Calls ViewSize. |

