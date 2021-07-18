## Description

## Hierarchy
Up to Parent: [IOTAModuleNotifier](IOTAModuleNotifier)

## Methods
| Method | Description |
| ------------- | ------------- |
| AllowSave |  AllowSave is called immediately prior to doing any type of save operation in order to allow any add-ins to enable/disable the saving of any specific module.  This is useful when one module is to be kept in sync with another module such as keeping the name of a module the same base name as the project.  | 
| GetOverwriteFileNameCount |  GetOverwriteFileNameCount returns the number of filenames to check for an overwrite during a save as operation.  This is simply a list of files that the IDE will check if they exist.  If any of these files exist, then the IDE will prompt for an overwrite and display the filename in the overwrite prompt dialog.  | 
| GetOverwriteFileName |  GetOverwriteFileName returns the index'd filename for the IDE to check for existence during a save as operation.  | 
| SetSaveFileName |  SetSaveFileName will be called with the fully qualified filename that the user entered in the Save As dialog.  This name can then be used to determine all the resulting names  | 

## Properties
| Property | Description |
| ------------- | ------------- |
| OverwriteFileNameCount | Calls GetOverwriteFileNameCount. | 
| OverwriteFileNames | Calls OverwriteFileNames. |

