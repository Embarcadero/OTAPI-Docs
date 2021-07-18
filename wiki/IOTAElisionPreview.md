## Description
If an [IOTAHighlighter](IOTAHighlighter) implements [IOTAElisionPreview](IOTAElisionPreview) in addition to [IOTAHighlighterPreview](IOTAHighlighterPreview), a preview of that highlighter's elision points will be shown in the color page. A sanity check is performed on the values returned from these methods to ensure 

1) that the End position is after the Start position and 
2) that the elision blocks do not go beyond the end of the code sample.  

Elisions that do not pass this sanity check are ignored.  You can use this, for example, if you only want to show an elidable block without also showing an elided block.  To do that, return -1 from the *Elided* methods below. The Descriptions can be blank.  In that case, no text is shown when the blocks are elided.

## Hierarchy
Up to Parent: [IInterface](IInterface)

## Methods
| Method | Description |
| ------------- | ------------- |
| GetElidableBlockStartLine |  |
| GetElidableBlockStartCol |  |
| GetElidableBlockEndLine |  |
| GetElidableBlockEndCol |  |
| GetElidedBlockStartLine |  |
| GetElidedBlockStartCol |  |
| GetElidedBlockEndLine |  |
| GetElidedBlockEndCol |  |
| GetElidedBlockDescription |  |
| GetElidableBlockDescription |  |

## Properties
There are no properties.