## Description
Suppose CodeInsightManager is an implementation of [IOTACodeInsightManager100](IOTACodeInsightManager100).

Then, by implementing this interface, CodeInsightManager is able to tell the IDE when GoToDefinition is valid for any location in a file that is handled by CodeInsightManager. 

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| EnableGotoDefinition | Called when the IDE is determining whether to call goto definition or not. Changing the value of AEnabled will override the default calculations of the IDE. |
| EnableTooltip | Called when the IDE is determining whether to call Tooltip or not. Changing the value of AEnabled will override the default calculations of the IDE. |


## Properties
| Property | Description |
| ------------- | ------------- |
There are no properties.
