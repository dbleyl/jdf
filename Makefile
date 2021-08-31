#
#
# TARGETS:
# all: generate the document.
#
# NOTES:
# --listing generates a !Undefined control sequence. l.63 \passthrough error.
# --csl - the apa.csl needed to be edited to add numbers, see truongsinh:master's pull request:
#				  https://github.com/iamjakewarner/jdf/pull/10  
#				  Use apa.csl to get numbers and 7th ed, and apa-6th-edition-numbered.csl to get publisher
#				  info (removed in 7 but still listed by example in the example docs).
#	--biblatex doesn't work alone, it must be in the md document:
#				pdf_document:
#					citation_package: biblatex
#
all:
	pandoc project_report.md \
		--standalone \
		--citeproc \
		--csl=apa-6th-edition-numbered.csl \
		--bibliography=references.bib \
		--from=markdown+pipe_tables+multiline_tables+inline_notes+smart+tex_math_dollars+raw_tex+tex_math_single_backslash+inline_code_attributes \
 		--template=jdf-template.pandoc \
		--data-dir=. \
		--pdf-engine=pdflatex \
		--pdf-engine-opt=-output-directory=out \
		-o project_report.pdf
