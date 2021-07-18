## Description
IOTAIDENotifier is a base interface for IDE notifiers. 

Use [IOTAIDENotifier50](IOTAIDENotifier50) for writing new notifier classes. All IDE notifiers must implement all the methods of IOTAIDENotifier.

## Hierarchy
Up to Parent: [IOTANotifier](IOTANotifier)

## Methods
| Method | Description |
| ------------- | ------------- |
| AfterCompile | This procedure is called immediately following a compile.  Succeeded will be true if the compile was successful. |
| BeforeCompile | This function is called immediately before the compiler is invoked. Set Cancel to True to cancel the compile. |
| FileNotification | This procedure is called for many various file operations within the IDE. |


## Properties
| Property | Description |
| ------------- | ------------- |
There are no properties.
