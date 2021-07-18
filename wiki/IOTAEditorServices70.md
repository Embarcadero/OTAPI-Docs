## Description
Allows a  developer access to manipulate most edit options of a file loaded in the RAD Studio IDE.

## Hierarchy
Up to Parent: [IOTAEditorServices60](IOTAEditorServices60)

## Methods
| Method | Description |
| ------------- | ------------- |
| AddEditOptions | AddEditOptions returns the current [IOTAEditOptions](IOTAEditOptions) with IDString, or adds a new one if none was found. |
| DeleteEditOptions | DeleteEditOptions deletes the [IOTAEditOptions](IOTAEditOptions) with IDString, raising an exception if IDString was not found. |
| GetEditOptions | GetEditOptions returns the [IOTAEditOptions](IOTAEditOptions) associated with the IDString passed in, or nil if none was found. |
| GetEditOptionsCount | GetEditOptionsCount/EditOptionsCount are the count of the [IOTAEditOptions](IOTAEditOptions). |
| GetEditOptionsForFile | GetEditOptionsForFile returns the [IOTAEditOptions](IOTAEditOptions) for a particular FileName, defaulting to the default options. |
| GetEditOptionsIndex | GetEditOptionsIndex is for iterating through the [IOTAEditOptions](IOTAEditOptions). | 

## Properties
| Property | Description |
| ------------- | ------------- |
| EditOptionsCount | Calls GetEditOptionsCount. | 
| EditorOptions | Calls GetEditorOptions. | 
