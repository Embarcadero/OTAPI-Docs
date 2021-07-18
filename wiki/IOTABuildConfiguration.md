## Description
Provides access to a Build Configuration.  For methods that take a "PropName"
parameter, the list of valid PropNames can be found in the following source
files:

| File | Description |
| ------------- | ------------- |
| DCCStrs.pas   | names for Delphi compiler options | 
| BCCStrs.pas   | names for the C++ compiler options | 
| ILinkStrs.pas | names for the C++ linker options | 
| TLibStrs.pas  | names for the TLib tool options | 
| TasmStrs.pas  | names for the turbo assembler options | 
| BRCCStrs.pas  | names for the resource compiler options | 
| CommonOptionStrs.pas  | names for general project options shared between Delphi and C++ | 
| CppCommonOptionStrs.pas | names for general C++ project options | 

## Hierarchy

Up to Parent: [IOTABuildConfiguration150](IOTABuildConfiguration150)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetLocalOverride | Returns the [IOTABuildConfiguration](IOTABuildConfiguration) for the specified Filename. | 

## Properties
| Property | Description |
| ------------- | ------------- |
| LocalOverride | Calls GetLocalOverride.|
