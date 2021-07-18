## Description
IOTAProjectCreator is a base interface for creating a project. The base interface IOTAProjectCreator exists for backward compatibility. New project creators should inherit from [IOTAProjectCreator190](IOTAProjectCreator190).

In order to work properly in the current IDE, each IOTAProjectCreator should also implement IOTAProjectCreator80.  Failing to do so will cause your creator to either 
  1) take on the active personality in the IDE or 
  2) fail if there is no active personality at the time your creator is called.

## Hierarchy
Up to Parent: [IOTACreator](IOTACreator)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetFileName |  Return the project filename. NOTE: This *must* be a fully qualified file name.  | 
| GetOptionFileName |  Deprecated!! Return the option file name (C++ .bpr, .bpk, etc...)  | 
| GetShowSource |  Return True to show the source.  | 
| NewDefaultModule |  Deprecated!! Called to create a new default module for this project. | 
| NewOptionSource |  Deprecated!! Create and return the project option source. (C++)  | 
| NewProjectResource |  Called to indicate when to create/modify the project resource file. | 
| NewProjectSource |  Create and return the Project source file.  | 

## Properties
| Property | Description |
| ------------- | ------------- |
| FileName | Calls GetFileName. | 
| OptionFileName | Calls GetOptionFileName. | 
| ShowSource | Calls GetShowSource. | 
