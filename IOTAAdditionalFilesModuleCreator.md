## Description
IOTAAdditionalFilesModuleCreator is the base interface for module creators that define additional files.
Use IOTAAdditionalFilesModuleCreator instead of [IOTAModuleCreator](IOTAModuleCreator) to create a module that supports additional files. Normal modules support a few standard files (such as implementation and interface files). Using this creator, you can create a module that supports any number of additional files, such as documentation for the unit, web pages, or any other text files that have a logical association with the unit.

The information about the module’s additional files is not persistent in the project. Every time the user opens a file, your wizard must intervene to create a module that supplies the additional files (Use [IOTAIDENotifier](IOTAIDENotifier) and cancel the fnFileOpening notification; then use IOTAAdditionalFilesModuleCreator to create the module where GetExisting returns true).

Like any other creator, you must write a class that implement IOTAAdditionalFilesModuleCreator and its ancestor classes, then pass an instance of your class to the CreateModule method of [IOTAModuleServices](IOTAModuleServices).

## Hierarchy
Up to Parent: [IOTAModuleCreator](IOTAModuleCreator)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetAdditionalFilesCount |  Get number of additional files.  | 
| NewAdditionalFileSource |  Create and return the source for this additional file.  | 
| GetAdditionalFileName |  Return the additional filename, or blank to have the IDE create a new unique one.  | 
| GetAdditionalFileExt |  Get the file extension used to create a new file name.  | 

## Properties
There are no properties.
