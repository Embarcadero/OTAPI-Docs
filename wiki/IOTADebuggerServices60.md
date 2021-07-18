## Description
This interface allows developers to manipulate processes, breakpoints and debugger notifiers.

## Hierarchy
Up to Parent: [IUnknown](IUnknown)

## Methods
| Method | Description |
| ------------- | ------------- |
| AddNotifier | Adds an [IOTADebuggerNotifier](IOTADebuggerNotifier). |
| AttachProcess | Attaches to an existing process. |
| CreateProcess | Creates a new process. |
| EnumerateRunningProcesses | Enumerates all the current running processes on the local machine or remote machine. |
| GetAddressBkptCount | Returns the count of address breakpoints. |
| GetAddressBkpt | Returns the index'd Address Breakpoint. |
| GetCurrentProcess | Returns the currently active process. This is set whenever a debug event occurs. |
| GetProcessCount | Returns the number of active processes. |
| GetProcess | Returns the Index'd process. |
| GetSourceBkptCount | Returns the count of source breakpoints. |
| GetSourceBkpt | Returns the index'd source Breakpoint. |
| LogString | Log event string to Event log window if present. |
| NewAddressBreakpoint | Creates a new Address breakpoint, will create a source BP if the address given is on a line boundary. |
| NewModuleBreakpoint | Creates a new Module load Breakpoint. Deprecated: Use new overloaded version that takes only a ModuleName. Use overloaded NewModuleBreakpoint. |
| NewSourceBreakpoint | Creates a new Source Breakpoint. |
| RemoveNotifier | Removes the index'd [IOTADebuggerNotifier](IOTADebuggerNotifier). |
| SetCurrentProcess | Sets the current process. |

## Properties
| Property | Description |
| ------------- | ------------- |
| AddressBkptCount | Returns the count of address breakpoints. |
| AddressBkpts | Returns the index'd Address Breakpoint. |
| CurrentProcess | Returns or set the currently active process |
| ProcessCount | Returns the number of active processes. |
| Processes | Returns the Index'd process. | |
| SourceBkptCount | Returns the count of source breakpoints. |
| SourceBkpts| Returns the index'd source Breakpoint. |
