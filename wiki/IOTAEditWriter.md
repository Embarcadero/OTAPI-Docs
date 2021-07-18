## Description
 Use the IOTAEditWriter class to gain write access to an editor buffer:

    NOTES:
     o As with the reader, the buffer is accessed as a linear "file" with
       line breaks included.  The writer uses a "copy in place" metaphor for
       modifying the editor buffer.  In other words, the writer can be thought
       of as simply copying from one buffer to another.  All positions (Pos)
       passed to the function are positions relative to the original file.  Due
       to the "copy" metaphor of the writer it does not support moving backward
       in the editor buffer. It is recommended that all modifications that must
       be performed should be done from the start to the finish.
     o After the IOTAEditWriter is released, the undo-buffer of the editor
       is flushed unless CreateUndoableWriter was called to obtain the
       IOTAEditWriter.
     o To insert Unicode text using the "Insert" method, the "Text" parameter
       should be UTF8-encoded.

    WARNING!!!
     o An IOTAEditWriter should never be active at the same time as an IOTAEditReader.


## Hierarchy
Up to Parent: [IUnknown](IUnknown)

## Methods
| Method | Description |
| ------------- | ------------- |
| CopyTo| | 
| DeleteTo ||
| Insert||
| Position||
| GetCurrentPos||

## Properties
| Property | Description |
| ------------- | ------------- |
| CurrentPos| Calls GetCurrentPos.|
