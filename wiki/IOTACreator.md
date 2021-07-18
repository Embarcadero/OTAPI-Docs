## Description
IOTACreator is a base interface for all creators. 

All creators inherit from IOTACreator, so your creator class must implement all the methods of IOTACreator in addition to the methods of the derived class.

To use a creator, you must write a class that implements one of the creator subclasses ([IOTAModuleCreator](IOTAModuleCreator), [IOTAAdditionalFilesModuleCreator](IOTAAdditionalFilesModuleCreator), [IOTAProjectCreator](IOTAProjectCreator), or [IOTAProjectGroupCreator](IOTAProjectGroupCreator)). The creator can create a default project or file by returning a predefined creator type and returning empty values for all the other methods. A creator can take more control over the module being created by returning an empty string for the creator type and supplying all necessary information for the other methods.

Note that a creator object creates a module, and that a module is a logically related group of open files. The module might represent a new unit or other files, but it can just as easily represent existing files.

Thus, there are two common uses for creators:
1) Create a new unit, project, or other file. The creator can create a default file, or can customize the file. For example, a new unit might have a custom list of #include headers or use a company-standard comment block. A creator has an advantage over a static template in the Object Repository because a creator is dynamic and can include the current date, the author’s name, or other information that is available only at runtime.
2) Open a file under nonstandard circumstances, such as using a virtual file system or supplying additional files.

## Hierarchy
Up to Parent: [IUnknown](IUnknown)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetCreatorType |  Return a string representing the default creator type in which to augment, or an empty string indicating that this creator will provide *all* information. |
| GetExisting | Return False if this is a new module.  |
| GetFileSystem | Return the File system IDString that this module uses for reading/writing. |
| GetOwner | Return the Owning module, if one exists (for a project module, this would be a project; for a project this is a project group). |
| GetUnnamed |  Return true, if this item is to be marked as un-named.  This will force the save as dialog to appear the first time the user saves.  | 

## Properties
| Property | Description |
| ------------- | ------------- |
| CreatorType | Calls GetCreatorType. | 
| Existing | Calls GetExisting. | 
| FileSystem | Calls GetFileSystem. | 
| Owner | Calls GetOwner. | 
| Unnamed | Calls GetUnnamed. | 

