## Description
This interface allows developers to manipulate breakpoints, register and unregister debug visualizers, as well as process debug events in addition to all supported methods and properties provided by the [parent interface, IOTADebuggerServices120](IOTADebuggerServices120).

## Hierarchy
Up to Parent: [IOTADebuggerServices120](IOTADebuggerServices120)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetModuleBkptCount | Returns the number of Module Load breakpoints currently set. |
| GetModuleBkpt | Returns the module name for the index'th Module Load breakpoint. |
| NewModuleBreakpoint | Creates a new Module load breakpoint. |
| RemoveModuleBreakpoint | Removes a Module Load breakpoint. |
| RemoveBreakpoint | Removes a breakpoint. |
| RegisterDebugVisualizer | Registers a debug visualizer. |
| UnregisterDebugVisualizer | Unregisters a previously registered debug visualizer. |
| ProcessDebugEvents | Tells the debugger to process debug events.  This can be used form within a loop when waiting for a deferred evaluation to complete. |

## Properties
| Property | Description |
| ------------- | ------------- |
| ModuleBkptCount | Gets the number of module breakpoints.|
| ModuleBkpts | Gets the name for the Index'th breakpoint. |
