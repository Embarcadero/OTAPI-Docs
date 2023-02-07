## Description

IOTAFile is a base interface to supply file content for creators. If you want to supply custom file content for a creator, you must write a class that implements the IOTAFile interface. The creator returns an instance of your class, and the IDE calls back to your IOTAFile-derived class to obtain the file contents and related information.

## Hierarchy

Up to Parent: [IUnknown](IUnknown)

## Methods 
| Method | Description |
| ------------- | ------------- |
| GetSource | Return the actual source code. |
| GetAge | Return the age of the file, -1 if new. |

## Properties

| Property | Description |
| ------------- | ------------- |
| Age | Calls GetAge. | 
| Source | Calls GetSource. |
