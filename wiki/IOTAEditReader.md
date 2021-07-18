## Description
Use the IOTAEditReader class to gain read access to an editor buffer:

    NOTES:
     o The buffer is accessed as a linear "file" with line breaks included.
     o This reader interface could be accessed through a custom read-only
       TStream descendant.
     o "Buffer" will contain UTF8-encoded data if the editor contains Unicode
       characters

    WARNING!!!
     o An IOTAEditReader should never be active at the same time as an IOTAEditWriter.

## Hierarchy
Up to Parent: [IUnknown](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetText |  | 

## Properties
There are no properties.
