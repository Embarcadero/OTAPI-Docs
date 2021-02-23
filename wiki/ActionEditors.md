ActionEditors contain actions for interacting with the IDE.

| Classes | Description |
| ------------- | ------------- |
| [TIDEActions](ActionEditors_TIDEActions) | This class is designed to interact with actions and surfaces of forms in the IDE.  The implementation of the methods are in implemented in descendants. |


| Types | Description |
| -- | -- |
| [TIDEActionsClass](ActionEditors_TIDEActionsClass) | TIDEActions class |


| Routines | Description |
| ------------- | ------------- |
| [GetIDEActions](ActionEditors_GetIDEActions) | Searches a class for interacting actions with the IDE, by the name of framework. |
| [GetIDEActions](ActionEditors_GetIDEActions_2) | Search a class for interacting action with the IDE, by list of actions. |
| [GetIDEActionsList](ActionEditors_GetIDEActionsList) | |
| [GetFrameworkType](ActionEditors_GetFrameworkType) | The function returns the framework of the current module being edited. |
| [RegisterActionsInFramework](ActionEditors_RegisterActionsInFramework) | Adds a class to communicate with the IDE, for a specified framework. If a specified framework has already been registered class, then raised an exception. |
| [UnregisterActionsInFramework](ActionEditors_UnregisterActionsInFramework) | This procedure unregisters a class registered by [RegisterActionsInFramework](ActionEditors_RegisterActionsInFramework). |
