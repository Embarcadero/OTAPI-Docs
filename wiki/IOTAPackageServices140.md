## Description
IOTAPackageServices is an interface to retrieve the names of installed packages and components.

Use IOTAPackageServices to retrieve the names of all the installed packages and their components. The Tools API does not support any interfaces for obtaining additional information about the installed components.

Use the BorlandIDEServices variable to obtain the IOTAPackageServices object by calling  the [Supports](http://docwiki.embarcadero.com/Libraries/en/System.SysUtils.Supports) function, or the [as](http://docwiki.embarcadero.com/RADStudio/en/Class_References#The_as_Operator) keyword.

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetComponentCount |  Returns the number of components registered by this package index.  | 
| GetComponentName |  Returns the component name of the package index.  | 
| GetPackageCount |  Returns the number of loaded packages.  | 
| GetPackageName |  Returns the name of the loaded package.  | 

## Properties
| Property | Description |
| ------------- | ------------- |
| ComponentCount | Calls GetComponentCount. | 
| ComponentNames | Calls GetComponentNames. | 
| PackageCount | Calls GetPackageCount. | 
| PackageNames | Calls GetPackageNames. | 
