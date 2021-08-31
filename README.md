Welcome to the Joyner Document Format official LaTeX class.
This class was written and tested using a default MacTeX installation,
so it should work out of the box
as long as you’re running an up-to-date LaTeX distribution.

## Quick start

You can clone this repo and try typesetting `jdf-starter.tex`
with the following commands:

    biber jdf-starter
    pdflatex jdf-starter

The result should look like `jdf-starter.pdf`.
* `biber` command generates used referenes from `references.bib` 
* `pdflatex` command generates the final pdf 

### Pandoc

#### Requirements

* Updated to work with `pandoc 2.14.0.2` (other versions may work, no guarantees)
* A current LaTeX distribution with appropriate packages.
  * `tabularx` is required.

#### Using Pandoc

* A `Makefile` has been included to produce the document.

```shell
# To generate the report, execute the following command from the commandline:
make
```
* A customized `apa.csl` citation stylesheet has been included for 
enumerating the reference list.
* The `jdf-template.pandoc` has been updated to address new `CSLReferences[2]`
syntax and add `tabularx` package.
* Table formatting has been broken, for anything other than simple tables,
using LaTeX directly in the pandoc file is recommended.
* The example markdown file which can be edited is called `project_report.md`.
* The output file is a pdf called `project_report.pdf`.
* Working files are stored in `out` and can be ignored. They may be useful
for troubleshooting.
* To remove publisher information from the reference list, change the
`--csl=apa-6th-edition-numbered.csl` to `--csl=apa.csl` in the `Makefile`.
APA 7th edition removed the publisher info 
(https://forums.zotero.org/discussion/80984/changes-to-apa-style-in-7th-edition).


## License

Copyright 2019 by Jake Warner.

You have my permission to use JDF in whatever projects you wish,
whether commercial, personal, or otherwise, in whatever way you like.
Official license information can be found in [LICENSE](LICENSE)
(spoiler: it's the MIT License).
