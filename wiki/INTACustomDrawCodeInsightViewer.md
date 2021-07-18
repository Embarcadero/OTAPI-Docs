## Description
A custom Code Insight manager can control drawing the code completion viewer by implementing the INTACustomDrawCodeInsightViewer interface, and so the INTACustomDrawCodeInsightViewer interface is an interface for custom drawing in the code completion popup viewer.

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| DrawLine | DrawLine is called when the caller wants the viewer to draw the item at index 'Index'.  if DoDraw is false, then only a rectangle calculation is being requested.  The rectangle should be returned by the 'Rect' out parameter.|

## Properties
| Property | Description |
| ------------- | ------------- |
There are no properties.

