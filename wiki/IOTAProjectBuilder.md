## Description
IOTAProjectBuilder is an interface for compiling a project, and lets an expert compile or build a project. To obtain a project builder interface, start with a [project interface](IOTAProject), and use its ProjectBuilder property. A project builder is tied to a specific project, namely, the project used to obtain the project builder.

## Hierarchy
Up to Parent: [IOTAProjectBuilder140](IOTAProjectBuilder140)

## Methods
| Method | Description |
| ------------- | ------------- |
| AddCompileNotifier| Call this to register an IOTAProjectCompileNotifier. The result is the index to be used when calling RemoveNotifier. If <0 then an error occurred. | 
| RemoveCompileNotifier | Removes the specified notifier (NotifierIndex should be an index returned by a previous call to RemoveCompileNotifier). |

## Properties
There are no properties.
