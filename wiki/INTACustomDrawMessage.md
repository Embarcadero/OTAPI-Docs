## Description
INTACustomDrawMessage is an interface for a custom-drawn message.

If you want to add a custom-drawn message to the message view, then write a class that implements the INTACustomDrawMessage interface (and its ancestor interfaces), and use an instance of that class to add a custom-drawn message to the message view. 

If you do not need to custom draw the message, you can use the base interface, [IOTACustomMessage](IOTACustomMessage) instead of INTACustomDrawMessage.

You can derive your interface from [INTACustomDrawMessage](INTACustomDrawMessage) and [IOTACustomMessage50](IOTACustomMessage50) to custom-draw messages in a hierarchy.

An expert must ensure that all of its custom messages are cleared when the expert is destroyed.

As with any other INTA… interface, you can use INTACustomDrawMessage only in an expert that uses packages (either by being installed in a package or by being installed in a DLL that uses runtime packages).

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| CalcRect | CalcRect computes the bounding box required by the entire message. The message view itself always displays messages in a single line of a fixed size. If the user hovers the cursor over a long message, a tooltip displays the entire message. CalcRect returns the size of the tooltip window. |
| Draw | Draw draws the message in the message view window or in a tooltip window. |

## Properties
| Property | Description |
| ------------- | ------------- |
There are no properties.
