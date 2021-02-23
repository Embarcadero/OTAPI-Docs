General references related to working with Markdown.


## Wiki notes 
In a table / cell within a wiki, escape a \| by specifying a \ before a |\, like so: \\|\. <br />
In Markdown, use \<br /\> to break a line (ie, newline).

## Markdown Editors 
* **[HackMD](https://hackmd.io/)** - Collaborative editor with GitHub integration
* **[Typora](https://typora.io/)** - Minimalistic with realtime preview
* **[Mark Text ](https://marktext.app/)** _is a Markdown editor for Mac, Windows, and Linux. It is a concise text editor, dedicated to improving your editing efficiency._
* **[Zettlr ](https://www.zettlr.com/)** - _A Markdown editor for 21st-century academics, authors, and journalists._
* **[Joplin](https://joplinapp.org/)** - _An open-source, markdown based, note taking and to-do application with synchronization capabilities._

## Markdown Reference
* [GitHub's Markdown Guide](https://guides.github.com/features/mastering-markdown/) _with their own variations_
* [Original Spec](https://daringfireball.net/projects/markdown/syntax)
* [Concise Cheat Sheet](https://commonmark.org/help/)

## Converting between Markdown and Media Wiki
[pandoc](http://pandoc.org/) universal document converter
~~~
pandoc --help  
pandoc [OPTIONS] [FILES]  
Input formats:  docbook, haddock, html, json, latex, markdown, markdown_github,  
                markdown_mmd, markdown_phpextra, markdown_strict, mediawiki,  
                native, opml, rst, textile  
Output formats: asciidoc, beamer, context, docbook, docx, dzslides, epub, epub3,  
                fb2, html, html5, json, latex, man, markdown, markdown_github,  
                markdown_mmd, markdown_phpextra, markdown_strict, mediawiki,  
                native, odt, opendocument, opml, org, pdf*, plain, revealjs,  
                rst, rtf, s5, slideous, slidy, texinfo, textile  
~~~