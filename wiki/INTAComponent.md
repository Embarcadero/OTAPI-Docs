## Description

INTAComponent is a native interface for a component. Cast an IOTAComponent interface to INTAComponent using the [Supports](http://docwiki.embarcadero.com/Libraries/en/System.SysUtils.Supports) function, or the [as](http://docwiki.embarcadero.com/RADStudio/en/Class_References#The_as_Operator) keyword.

A native component interface lets an expert gain access to the actual TComponent or TPersistent pointer. The actual pointer value is needed if you want to modify the value of a class-type property. As with any other INTA… interface, you can use INTAServices only in an expert that uses packages (either by being installed in a package or by being installed in a DLL that uses runtime packages).

## Hierarchy

Up to Parent: [IUnknown](IInterface)

## Methods

| Method | Description |
| ------------- | ------------- |
| GetComponent | Returns the TComponent if this interface is a TComponent else nil. |
| GetPersistent | Returns the actual TComponent/TPersistent. |

## Properties
There are no properties.
