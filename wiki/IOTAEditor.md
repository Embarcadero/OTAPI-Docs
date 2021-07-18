## Description
IOTAEditor is a base interface for all editors. A module has one or more editors, where each editor represents a single file and its design-time editor. Given an IOTAEditor interface, you can determine what kind of file and editor it is by using the [Supports](http://docwiki.embarcadero.com/Libraries/Sydney/en/System.SysUtils.Supports) function, or the [as](http://docwiki.embarcadero.com/RADStudio/en/Class_References#The_as_Operator) keyword.


## Hierarchy
Up to Parent: [IUnknown](IUnknown)

## Methods
| Method | Description |
| ------------- | ------------- |
| AddNotifier |  Call this to register an IOTANotifier. The result is the index to be used when calling RemoveNotifier. If <0 then an error occurred.|
| GetFileName |  Returns the actual filename of this module editor. Rename through [IOTAModule](IOTAModule). |
| GetModified |  Returns the editor specific modified status.  |
| GetModule |  Returns the associated [IOTAModule](IOTAModule).  |
| MarkModified |  Mark this editor modified.  The associated module will also be modified.  |
| RemoveNotifier |  Call with the index obtained from AddNotifier.  |
| Show |  Show this editor.  If no views are active, at least one will be created. |
 
## Properties
| Property | Description |
| ------------- | ------------- |
| FileName | Calls GetFileName.|
| Modified | Calls GetModified. |
| Module | Calls GetModule. |
