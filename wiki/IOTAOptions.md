## Description

IOTAOptions is a base interface for environment and project options. Options are stored as a list of option names, types, and values. Most options are integers, enumerated literals, or strings. Some are string lists, in which case the type is tkClass, and the value is a TStringList pointer.
Editor, search, and replace options do not use IOTAOptions.

## Hierarchy
Up to Parent: [IUnknown](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| EditOptions | Opens the options dialog. |
| GetOptionValue | Get the value of the named option. |
| SetOptionValue | Set the value of the named option. |
| GetOptionNames | Get the list of available options for this option structure. |

## Properties
| Property | Description |
| ------------- | ------------- |
| Values | Calls GetOptionValue.|
