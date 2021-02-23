## Description

## Hierarchy
Up to Parent: [IOTAEditor](IOTAEditor)
## Methods
| Method | Description |
| ------------- | ------------- |
| CreateReader |  Create and return an IOTAEditReader.  | 
| CreateWriter |  Create and return an IOTAEditWriter. Changes are not undoable.  | 
| CreateUndoableWriter |  Create and return an IOTAEditWriter. Changes are undoable.  | 
| GetEditViewCount |  Return the number of active views on this editor.  | 
| GetEditView |  Return the Indexed view.  | 
| GetLinesInBuffer |  Returns the total number of lines in this source editor.  | 
| SetSyntaxHighlighter |  Change the syntax highlighter for this buffer or if shQuery is set, simply return the currently set highlighter. SetSyntaxHighlighter is deprecated. Use the IOTAEditOptions.  | 
| GetBlockAfter |   | 

## Properties
| Property | Description |
| ------------- | ------------- |
| BlockStart | Calls GetBlockStart or SetBlockStart. | 
| BlockAfter | Calls GetBlockAfter or SetBlockAfter. | 
| BlockType | Calls GetBlockType or SetBlockType. | 
| BlockVisible | Calls GetBlockVisible or SetBlockVisible. | 
| EditViewCount | Calls GetEditViewCount. | 
| EditViews | Calls GetEditView. | 
