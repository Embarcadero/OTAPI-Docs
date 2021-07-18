## Description
IOTAProject40 is a base and module interface for a project, it exists for backward compatibility; new code should use IOTAProject, which inherits all the member functions of IOTAProject40. Cast an [IOTAModule](IOTAModule) to IOTAProject using the [Supports](http://docwiki.embarcadero.com/Libraries/en/System.SysUtils.Supports) function, or the [as](http://docwiki.embarcadero.com/RADStudio/en/Class_References#The_as_Operator) keyword.

Using a project interface, you can obtain information about the modules in a project, get or set the project options, compile the project, add a file to the project, or remove a file from the project.

## Hierarchy
Up to Parent: [IOTAModule](IOTAModule)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetModuleCount |  Return the number of owned modules. |
| GetModule |  Return the Indexed owned Module Info. |
| GetProjectOptions |  Return the Project options. |
| GetProjectBuilder |  Return the Project Builder. |
 
## Properties
| Property | Description |
| ------------- | ------------- |
| ProjectOptions | Calls GetProjectOptions. |
| ProjectBuilder | Calls GetProjectBuilder. |
