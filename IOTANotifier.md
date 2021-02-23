## Description

IOTANotifier is the base interface for all notifiers and experts. All experts and notifiers have IOTANotifier as a base interface, so you must implement all the methods of IOTANotifier. Most of the time, these methods are never called, so your implementation can often be an empty method. You can choose to inherit your class from [TNotifierObject](TNotifierObject) and add IOTANotifier to your class inheritance.

## Hierarchy
Up to Parent: [IUnknown](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| [AfterSave](IOTANotifier_AfterSave) | This procedure is called immediately after the item is successfully saved. This is not called for IOTAWizard. |
| [BeforeSave](IOTANotifier_BeforeSave) | This function is called immediately before the item is saved. This is not called for IOTAWizard. |
| [Destroyed](IOTANotifier_Destroyed) | The associated item is being destroyed so all references should be dropped. Exceptions are ignored. |
| [Modified](IOTANotifier_Modified) | This associated item was modified in some way. This is not called for IOTAWizard. |

## Properties
There are no properties.
