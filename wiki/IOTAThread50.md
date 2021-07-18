## Description

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| AddNotifier | Adds an IOTAThreadNotifier. |
| Evaluate | Evaluates the given expression. |
| GetCallCount | Returns the number of Items on the call stack. |
| GetCallHeader | Returns the evaluator generated string for the given stack index.  GetCallCount must be called before GetCallHeader. CallHeaders are one-based (not zero-based) so the first item in the list is at index 1. |
| GetCallPos |  Return the source file name and line number of the given stack index.  If the frame at the given index does not correspond to a source location, FileName will be an empty string and LineNum will be zero. |
| GetContext | Returns the Current Thread context. |
| GetCurrentFile | If the process is stopped, return which file the process is stopped on in this thread. The return string will be blank if no debug info is found at this location. |
| GetCurrentLine | If the process is stopped, return the line number in the above file at which this process is stopped. |
| GetHandle | Returns the OS Thread Handle. |
| GetOSThreadID | Returns the OS Thread ID. |
| GetState | Returns the current thread state. |
| Modify |  Modify the last evaluated expression. ResultStr and ResultVal will be set the to the evaluated ValueStr values Like Evaluate, the result could be erDeferred. See the ModifyComplete method on the IOTAThreadNotifier.  If the result is erError then ResultStr may contain an error message. |
| RemoveNotifier |  Remove the Index'd notifier. | 

## Properties
| Property | Description |
| ------------- | ------------- |
| CallCount | Calls GetCallCount. | 
| CallHeaders | Calls GetCallHeaders. | 
| Context | Calls GetContext. | 
| CurrentFile | Calls GetCurrentFile. | 
| CurrentLine | Calls GetCurrentLine. | 
| Handle | Calls GetHandle. | 
| State | Calls GetState. |
 
