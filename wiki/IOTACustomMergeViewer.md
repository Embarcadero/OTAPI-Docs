## Description
Allows a developer to show a merge view.

## Hierarchy
Up to Parent: [IOTABaseCustomDifferenceViewer](IOTABaseCustomDifferenceViewer)

## Methods
| Method | Description |
| ------------- | ------------- |
| ShowMerge | Called to request that a Merge view be shown.  Base, Theirs, and Mine represent the file contents to show in the Merge view. BaseDisplayName,TheirsDisplayName and MineDisplayName are strings that the Merge viewer should show in its user interface.  FileName represents the actual file name.  BaseFileName, TheirsFileName and MineFileName (if specified) are the actual file names of the files being shown in the Merge viewer. If Wait is True, then this call should not return until the merge is complete (this is mainly here in case a custom Merge viewer calls an external tool). |

## Properties
| Property | Description |
| ------------- | ------------- |
There are no properties.
