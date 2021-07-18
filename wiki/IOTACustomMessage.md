## Description
IOTACustomMessage is the base interface for custom messages.

You use this interface when you want to write a custom message to the message view. 

Write a class that implements this interface and use an instance of your class to add a message to the message view. You can also use one of the descendant interfaces for additional functionality in the custom message.

An expert must ensure that all of its custom messages are cleared when the expert is destroyed.

## Hierarchy
Up to Parent: [IUnknown](IUnknown)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetColumnNumber |  Returns the Column number of the file if the file is given.  | 
| GetFileName |  Returns a Fully qualified filename if this message line can navigate to afile line.  | 
| GetLineNumber |  Returns the Line number of the above file if the above file is given.  | 
| GetLineText |  Returns the Raw line text.  | 
| ShowHelp |  F1 pressed on this line.  | 

## Properties
| Property | Description |
| ------------- | ------------- |
| ColumnNumber | Calls GetColumnNumber. | 
| FileName | Calls GetFileName. | 
| LineNumber | Calls GetLineNumber. | 
| LineText | Calls GetLineText. | 
