## Description
IOTAProject is a module interface for a project. Cast an [IOTAModule](IOTAModule) to IOTAProject using the [Supports](http://docwiki.embarcadero.com/Libraries/en/System.SysUtils.Supports) function, or the [as](http://docwiki.embarcadero.com/RADStudio/en/Class_References#The_as_Operator) keyword.

Using a project interface, you can obtain information about the modules in a project, get or set the project options, compile the project, add a file to the project, or remove a file from the project.

## Hierarchy
Up to Parent: [IOTAProject40](IOTAProject40)

## Methods
| Method | Description |
| ------------- | ------------- |
| AddFile | Call this function to add an arbitrary file to the project.  NOTE: some files have special meaning to different projects.  For example: adding the VCL package will cause a new entry in a package project's "requires" list while it will be a raw file to any other project type.  Set IsUnitOrForm to true for files that are considered items that the project would process directly or indirectly (ie. .pas, .cpp, .rc, etc..) or can be opened in the code editor. For all others, including binary files (.res, .bpi, .dcp, etc..) set this to False. | 
| RemoveFile | Call this function to remove an arbitrary file from the project. This  must be a fully qualified filename. See GetModule in [IOTAProject40](IOTAProject40) above for info on obtaining this information from a Form name or unit name. |

## Properties
There are no properties.
