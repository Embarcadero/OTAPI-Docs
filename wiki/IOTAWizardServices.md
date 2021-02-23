## Description
IOTAWizardServices is an interface for services to dynamically load and unload wizards.

Use IOTAWizardServices when you want to write a wizard that can manage other wizards. Most of the time, you do not need to use IOTAWizardServices, and can use RegisterPackageWizard instead. The limitation of RegisterPackageWizard, however, is that there is no UnregisterPackageWizard function and IOTAWizardServices provides this missing functionality.

Use the BorlandIDEServices variable to obtain the IOTAWizardServices object by calling the [Supports](http://docwiki.embarcadero.com/Libraries/en/System.SysUtils.Supports) function, or the [as](http://docwiki.embarcadero.com/RADStudio/en/Class_References#The_as_Operator) keyword.

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| AddWizard | Call this to register an IOTAWizard interface. |
| RemoveWizard | Remove the index'd Wizard. |

## Properties
| Property | Description |
| ------------- | ------------- |
There are no properties.
