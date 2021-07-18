## Description
IOTAFormNotifier is an interface for a form notifier. IOTAFormNotifier is an editor notifier that calls back to an expert when something interesting happens in the form editor. The most notable event is when a component is about to be renamed. All of the callback functions inherited from [IOTANotifier](IOTANotifier) are used. Note that Modified is called for every property change (such as moving a component), so your callback function should return promptly.

A form notifier does not call AfterSave or BeforeSave (see the FormSaving method).

## Hierarchy
Up to Parent: [IOTANotifier](IOTANotifier)

## Methods
| Method | Description |
| ------------- | ------------- |
| ComponentRenamed | Called when a component on this form was renamed. |
| FormActivated | Called when the given form is activated. |
| FormSaving | This is called immediately prior to the form being streamed out.  This may be called without first getting a BeforeSave as in the case of the project being compiled. |

## Properties
There are no properties.
