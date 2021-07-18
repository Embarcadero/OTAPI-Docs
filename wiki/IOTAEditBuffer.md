## Description
IOTAEditBuffer is an interface for the source editor’s internal buffer. IOTAEditBuffer is the interface to the source editor’s internal edit buffer for a file. Every file in the source editor has an edit buffer. If multiple views are open on the same file, all the view share a common edit buffer.

You can obtain an edit buffer by casting a [source editor](IOTASourceEditor) with the [Supports](http://docwiki.embarcadero.com/Libraries/en/System.SysUtils.Supports) function, or the [as](http://docwiki.embarcadero.com/RADStudio/en/Class_References#The_as_Operator) keyword.

## Hierarchy
Up to Parent: [IOTAEditBuffer60](IOTAEditBuffer60)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetEditOptions | GetEditOptions returns the edit options for this current edit buffer. |

## Properties
| Properties | Description |
| ------------- | ------------- |
| EditOptions | Calls GetEditOptions |
