## Description
Provides access to native IDE objects: main menu, action list, image list, and tool bars. See [Using Native IDE Objects](http://docwiki.embarcadero.com/RADStudio/en/Using_Native_IDE_Objects). 

## Hierarchy
Up to Parent: [IUnknown](IUnknown)

## Methods
| Method | Description |
| ------------- | ------------- |
| AddMasked |  Adds an image to the IDE's main image list.  Use the return value as an image index for an action item added to the IDE's main action list. This method is deprecated in favor of the new AddMasked method on the INTAServices interface defined below.  | 
| GetActionList | Returns the IDE's Main ActionList component. | 
| GetImageList | Returns the IDE's Main ImageList component. |
| GetMainMenu | Returns the IDE's Main Menu component.  | 
| GetToolBar |  Returns the named Toolbar. | 


## Properties
| Property | Description |
| ------------- | ------------- |
| ActionList | Calls GetActionList. | 
| ImageList | Calls GetImageList. | 
| MainMenu | Calls GetMainMenu. | 
| ToolBar | Calls GetToolBar. | 
