## Description
IOTAThread is the debugger’s interface for a single thread. 

A process always has at least one thread. Use the thread interface to query the thread’s state, context, and call stack. Information such as the call stack and context are valid only when the thread is stopped.

## Hierarchy
Up to Parent: [IOTAThread90](IOTAThread90)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetSimpleCallHeader | Return the evaluator generated string for the given stack index.  GetCallCount must be called before GetSimpleCallHeader. CallHeaders are one-based (not zero-based) so the first item in the list is at index 1. This differs from GetCallHeader in that it returns stack frame names that are not fully qualified (method names only, no namespace, class, etc. names). |

## Properties
| Property | Description |
| ------------- | ------------- |
| SimpleCallHeaders | Calls SimpleCallHeader with the specified Index. |

