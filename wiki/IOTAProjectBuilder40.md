## Descrption
IOTAProjectBuilder40 is a base interface for compiling a project. IOTAProjectBuilder40 is a base interface of [IOTAProjectBuilder](IOTAProjectBuilder). You should use [IOTAProjectBuilder](IOTAProjectBuilder) to compile projects.

## Hierarchy
Up to Parent: [IUnknown](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetShouldBuild| Returns True if the project is out of date and needs to be built. |
|BuildProject| Returns True if successfully built.  If Wait then the compile progress dialog waits for the user press OK.  If False, it does not wait if successful. |

## Properties
| Property | Description |
| ------------- | ------------- |
| ShouldBuild| Calls GetShouldBuild.|

