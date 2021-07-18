## Description
IOTAModuleNotifier is an interface for a module notifier. When a developer wants to receive notifications on a specific module, the developer developers a class that implements an IOTAModuleNotifier. 

A module notifier informs an expert about events that concern a particular module. The notifier methods do not have any reference to the module, so you probably want to write the module notifier class to keep track of the module.

A module notifier uses all the inherited methods of IOTANotifier. Note that the Modified function is called when the source file is modified. To learn when the form is modified, you must use a form notifier. To learn when the interface file is modified, use a source notifier for the file’s source editor.

## Hierarchy
Up to Parent: [IOTANotifier](IOTANotifier)

## Methods
| Method | Description |
| ------------- | ------------- |
| CheckOverwrite | CheckOverwrite is called during a SaveAs operation to determine if any files associated with this module will overwrite any other files. Return True to allow the overwrite or no overwrite will occur. |
| ModuleRenamed | User has renamed the module. |

## Properties
| Property | Description |
| ------------- | ------------- |
There are no properties.
