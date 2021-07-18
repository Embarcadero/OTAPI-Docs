## Descrption
INTAAddInOptions allows a developer to show options in the Tools Options dialog under a specified section.

## Hierarchy

Up to Parent: [IUnknown](IInterface)

## Methods

| Method | Description |
| ------------- | ------------- |
| GetArea | Indicates where this option page should appear in the treeview in the Tools \| Options dialog. If this function returns an empty string, this page will appear under the Third Party area.  It is strongly suggested that you return an empty string from this function. |
| GetCaption | Indicates the name of the node that should appear in the treeview in the Tools \| Options dialog.  This node will appear under the node specified by "GetArea".  To nest multiple levels below the Area, include a dot in the Caption.  For instance if you return a blank string from GetArea and you return "MyAddin.MyOptions" from GetCaption, your options page will appear as follows in the treeview:<br> Third Party<br>\|--MyAddin<br>      "   " \|--MyOptions |
| GetFrameClass | Returns the class of the frame that you want embedded in this options page. |
| FrameCreated | Called when the instance of the specified frame class is created. |
| DialogClosed | Called when the user closes the Options dialog that contains this page. The "Accepted" parameter is True if the user clicked OK, or False if the user clicked Cancel. |
| ValidateContents | Called before the dialog is closed. Allows you to validate the input on your option page.  If there is invalid input, you should display an error message and return False.  Return True if there are no errors. |
| GetHelpContext | Return the Help Context for this options page. | 
| IncludeInIDEInsight | Indicates whether or not this page will be automatically included in IDE Insight.  If True, it will be included in the "Preferences" node like all built-in pages from the Tools \| Options dialog.  It is recommended that you return True. |

## Properties

| Property | Description |
| ------------- | ------------- |
| Area | Calls GetArea. |
| Caption | Calls GetCaption. |
| FrameClass | Calls GetFrameClass. |
| HelpContext | Calls GetHelpContext. |
