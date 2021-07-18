## Description
IOTAProjectOptionsConfigurations140 methods and properties.

## Hierarchy
Up to Parent: [IUnknown](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetConfigurationCount |  Return the number of configurations in this project.  |
| GetConfiguration |  Return the index'd configuration in this project.  |
| GetActiveConfiguration |  Return the active configuration for this project.  |
| SetActiveConfiguration |  Set the active configuration for this project.  |
| GetBaseConfiguration |  Return the Base configuration in this project.  |
| AddConfiguration |  Add a new configuration with the specified name, descending from the specified Parent configuration.  Returns the added configuration.  |
| RemoveConfiguration |  Remove the configuration with the specified Name or Key.  | 

## Properties
| Property | Description |
| ------------- | ------------- |
| ConfigurationCount| Calls GetConfigurationCount.|
| Configurations | Calls GetConfiguration with the given Index. |
| ActiveConfiguration| Calls GetActiveConfiguration or SetActiveConfiguration to get or set the active IOTABuildConfiguration. |
| BaseConfiguration | Calls GetBaseConfiguration. |

