Provides access to a Build Configuration.  For methods that take a "PropName"
parameter, the list of valid PropNames can be found in the following source
files:

      DCCStrs.pas:   names for Delphi compiler options
      BCCStrs.pas:   names for the C++ compiler options
      ILinkStrs.pas: names for the C++ linker options
      TLibStrs.pas:  names for the TLib tool options
      TasmStrs.pas:  names for the turbo assembler options
      BRCCStrs.pas:  names for the resource compiler options
      CommonOptionStrs.pas: names for general project options shared between Delphi and C++
      CppCommonOptionStrs.pas: names for general C++ project options

IOTABuildConfiguration140 methods and properties.

***

Up to Parent: [IUnknown](IUnknown)

| Method | Description |
| ------------- | ------------- |
| Clear |  Remove all properties. |
| ContainsValue |  For properties that are a list type, return whether or not the property "PropName" contains "Value" as one of its elements. |
| GetBoolean | Perform a full evaluation the value of property "PropName" as a boolean, recursing through parent configurations to determine the value if none is specified on this configuration. Assumes empty value to be 'false' if no default value for the property is specified. Raises an exception if the property value cannot be converted to a boolean. |
| GetBoolean | Perform an evaluation the value of property "PropName" as a boolean, optionally recursing through parent configurations. If IncludeInheritedValues=false, the value is determined at this configuration only. Assumes empty value to be 'false' if no default value for the property is specified. Raises an exception if the property value cannot be converted to a boolean. |
| GetChild | Return the index'd configuration based directly on this build configuration, including local overrides. |
| GetChildCount | Return the number of configurations based directly on this build configuration, including local overrides. |
| GetInteger |  Perform a full evaluation the value of property "PropName" as an integer, recursing through parent configurations to determine the value if none is specified on this configuration. Raises an exception if the property value cannot be converted to an integer. |
| GetInteger |  Perform an evaluation the value of property "PropName" as an integer, optionally recursing through parent configurations. If IncludeInheritedValues=false, the value is determined at this configuration only. Assumes empty value to be 'false' if no default value for the property is specified. Raises an exception if the property value cannot be converted to an integer. |
| GetKey |  Return the configuration's unique key -- this is non-translatable  | | GetParent |  Return the parent of this IOTABuildConfiguration. Only the "Base" configuration should return nil. |
| GetMerged |  Return whether or not the property inherits values from its parent configuration.  Merging only makes sense for list-type properties. To illustrate:  If a parent configuration defines a property as: ```        ListItem1;ListItem2``` and a child configuration defines the same property as: ```        ListItem3;ListItem4``` then if the property is merged, the fully-merged value in the child configuration would be: ``` ListItem3;ListItem4;ListItem1;ListItem2```. If the property is not merged, the value in the child configuration would be just: ``` ListItem3;ListItem4``` In the project file, merged properties contain a reference to their own name as one of their values:```<PropertyName>ListItem3;Listitem4;$(PropertyName)</PropertyName>``` |
| GetName |  Get the name of the configuration.  This may be translated  |
| GetPropertyCount | Return the number of properties specified at this configuration. |
| GetPropertyName |  Return the index'd property specified at this configuration. |
| GetValue | Perform an evaluation the value of property "PropName" as a string, optionally recursing through parent configurations. If IncludeInheritedValues=false, the value is determined at this configuration only. |
| GetValue | Retrieve the value of property "PropName" recursing through parent configurations. Returns empty string if the property doesn't exist. Can't tell empty properties from non-existent ones, use PropertyExists() to determine if a property actually is specified.  |
| GetValues |  Perform an evaluation the value of property "PropName" as a string list, optionally recursing through parent configurations. If IncludeInheritedValues=false, the value is determined at this configuration only. |
| InheritedValues | Evaluates the value of "PropName" up to, but not including, this build configuration as a string list. Only valid for list-type properties. |
| InsertValues |  Insert one or more values into a list-type property, at index 'Location'. |
| IsEmpty | Returns whether or not the configuration has any properties at all. |
| IsModified | Returns whether or not the configuration has been modified since last save. |
| PropertyExists |  Returns true if the property "PropName" has any value, including a null or empty value, false if no property of that name exists in the configuration. |
| Remove | Remove all properties with name "PropName" from the configuration. |
| RemoveValues | Removes 'Values' from list-type properties if they exist. |
| SetBoolean |  Sets value of "PropName" as a boolean on this configuration. |
| SetInteger |  Sets value of "PropName" as an integer on this configuration  |
| SetMerged | Controls whether or not the property "PropName" has it's value merged with inherited values from parent configurations.  |
| SetName | Set the name of this configuration  |
| SetValue | Set the value of property "PropName". |
| SetValues | Replaces all values of list-type property "PropName" with "Values". |

| Property | Description |
| ------------- | ------------- |
| AsBoolean | Calls GetBoolean or SetBoolean. |
| AsInteger | Calls GetInteger or SetInteger. |
| ChildCount | Calls GetChildCount. |
| Children | Calls GetChild ro return the Index'd item. |
| Key | Calls GetKey. |
| Merged | Calls GetMerged or SetMerged. |
| Name | Calls GetName or SetName. |
| Parent | Calls GetParent. |
| Properties | Calls GetPropertyName to return the Index'd item. |
| PropertyCount | Calls GetPropertyCount. |
| Value | Calls GetValue or SetValue. |

