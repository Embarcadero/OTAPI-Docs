## Description
If an [IOTAEditor](IOTAEditor) implements this interface, then it supports direct access to the memory buffer used to store the editor content.

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetContent | Returns the current buffer content for the corresponding editor. |
| SetContent | Sets the current buffer content for the corresponding editor.  NOTE: this will do a wholesale replacement of the content and all previous contents *will* be lost.  Use this at your own risk. You have been warned. |
| GetContentAge | Returns the current age of the buffer.  This is the datetime of the last actual modification of the file.  If the file has not been modified or has already been saved, this will match the file time on disk. |
| ResetDiskAge | Call this function to reset the internal setting of the editor's content disk age value. The disk age is the age of the time when it was initially loaded from disk or the last time the file was saved. |

## Properties
| Property | Description |
| ------------- | ------------- |
| Content | Calls GetContent or SetContent. |
