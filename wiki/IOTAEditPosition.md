## Description
IOTAEditPosition is an interface for the caret position in the source editor. IOTAEditPosition returns information about the caret position in the source editor and about the text under and near the caret. It also permits inserting and deleting text at the caret, searching for text, replacing text, and moving the caret.

If you need to read, write, or modify small amounts of text, IOTAEditPosition is often simplest to use. For large amounts of text, you might find it easier to use an [edit reader](IOTAEditReader) or [edit writer](IOTAEditWriter).

## Hierarchy
Up to Parent: [IUnknown](IUnknown)

## Methods
| Method | Description |
| ------------- | ------------- |
| Align | |
| BackspaceDelete | |
| Delete | |
| DistanceToTab | |
| GetCharacter | |
| GetColumn | |
| GetIsSpecialCharacter | |
| GetIsWhitespace | |
| GetIsWordCharacter | |
| GetLastRow | |
| GetReplaceOptions | |
| GetRow | |
| GetSearchErrorString | |
| GetSearchOptions | |
| GotoLine | |
| InsertBlock | |
| InsertCharacter | |
| InsertFile | |
| InsertText | |
| Move | |
| MoveBOL | |
| MoveCursor | |
| MoveEOF | |
| MoveEOL | |
| MoveReal | |
| MoveRelative | |
| Paste | |
| Read | |
| RepeatLastSearchOrReplace | |
| Replace | |
| Replace | |
| ReplaceAgain | |
| Restore | |
| RipText | |
| RipText | |
| Save | |
| Search | |
| Search | |
| SearchAgain | |
| Tab | |

## Properties
| Property | Description |
| ------------- | ------------- |
| Character | Calls GetCharacter | 
| Column | Calls GetColumn | 
| IsSpecialCharacter | Calls GetIsSpecialCharacter | 
| IsWhiteSpace | Calls GetIsWhiteSpace | 
| IsWordCharacter | Calls GetIsWordCharacter | 
| LastRow | Calls GetLastRow | 
| ReplaceOptions | Calls GetReplaceOptions | 
| Row | Calls GetRow | 
| SearchOptions | Calls GetSearchOptions | 
