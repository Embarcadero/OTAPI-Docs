## Description
IOTAModuleCreator is an interface for creating a module. 

Write a class that implements IOTAModuleCreator (and its parent interface, [IOTACreator](IOTACreator)), and use an instance of your creator class to create modules. The modules can open existing files, create new files, or even simulate files using a virtual file system.

The module creator can create the default unit or form, just as though the user selected File | New Unit or File | New Form from the menu bar, or you can write the creator so it supplies custom file contents, file names, and more.

## Hierarchy
Up to Parent: [IOTACreator](IOTACreator)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetAncestorName |  Return the Ancestor form name.  | 
| GetImplFileName |  Return the implementation filename, or blank to have the IDE create a new unique one. (C++ .cpp file or Delphi unit) NOTE: If a value is returned then it *must* be a fully qualified filename.  This also applies to GetIntfFileName and GetAdditionalFileName on the IOTAAdditionalFilesModuleCreator interface. | 
| GetIntfFileName |  Return the interface filename, or blank to have the IDE create a new unique one.  (C++ header)  | 
| GetFormName |  Return the form name. | 
| GetMainForm |  Return True to Make this module the main form of the given Owner/Project. | 
| GetShowForm |  Return True to show the form. | 
| GetShowSource |  Return True to show the source. | 
| NewFormFile |  Create and return the Form resource for this new module if applicable. | 
| NewImplSource |  Create and return the Implementation source for this module. (C++ .cpp file or Delphi unit). | 
| NewIntfSource |  Create and return the Interface (C++ header) source for this module.  | 
| FormCreated |  Called when the new form/datamodule/custom module is created.  | 

## Properties
| Property | Description |
| ------------- | ------------- |
| AncestorName | Calls GetAncestorName. | 
| FormName | Calls GetFormName. | 
| ImplFileName | Calls GetImplFileName. | 
| IntfFileName | Calls GetIntfFileName. | 
| MainForm | Calls GetMainForm. | 
| ShowForm | Calls GetShowForm. | 
| ShowSource | Calls GetShowSource. | 
