## Description
Allows a developer to access the call stack, among other functionality.

## Hierarchy
Up to Parent: [IOTAThread70](IOTAThread70)

## Methods
| Method | Description |
| ------------- | ------------- |
| StartCallStackAccess |  Tells the thread that you are about to access the call stack. Returns the current state of the call stack for this thread. Check the state before using the GetCallCount, GetCallHeader, or GetCallPos methods.<br><br>csAccessible -- stack can be queried.<br>csInaccessible -- stack can not be queried.<br>csWait -- stack is temporarily unavailable. Try again after letting the message loop spin for a bit (i.e post yourself a message to try again).  |
| EndCallStackAccess |  Tells the thread that you are done accessing the call stack. |
| Evaluate |  Evaluate the given expression. This overloaded version adds a FileName and LineNumber parameter which tells the evaluator to uses that source location as the scope in which to evaluate the expression.  |
| GetDisplayString |  Gets the string displayed in the "Thread Id" column of the thread view for this thread.  If am empty string is returned, the value returned by GetOSThreadID will be displayed. |
| GetLocationString |  Gets the string to be displayed in the "Location" column of the thread view for this thread. This string is only used if CurrentFile is an empty string. |
| GetOwningProcess |  Gets the process which owns this thread  |
| GetStateString |  Gets the string to be displayed in the "State" column of the thread view for this thread.  This string is only used if GetState returns tsOther. |
| GetStatusString |  Gets the string to be displayed in the "Status" column of the thread view for this thread. |
 
 # Properties
| Property | Description |
| ------------- | ------------- |
| DisplayString | Calls GetDisplayString. | 
| Location | Calls GetLocation. | 
| OSThreadID | Calls GetOSThreadID. | 
| OwningProcess | Calls GetOwningProcess. | 
| StateString | Calls GetStateString. | 
| Status | Calls GetStatus. |
 
