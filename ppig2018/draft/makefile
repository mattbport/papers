## Put this Makefile in your project directory---i.e., the directory
## containing the paper you are writing. Assuming you are using the
## rest of the toolchain here, you can use it to create .html, .tex,
## and .pdf output files (complete with bibliography, if present) from
## your markdown file. 
## -	Change the paths at the top of the file as needed.
## -	Using `make` without arguments will generate html, tex, and pdf 
## 	output files from all of the files with the designated markdown
##	extension. The default is `.md` but you can change this. 
## -	You can specify an output format with `make tex`, `make pdf` or 
## - 	`make html`. 
## -	Doing `make clean` will remove all the .tex, .html, and .pdf files 
## 	in your working directory. Make sure you do not have files in these
##	formats that you want to keep!

SHELL := /bin/bash

## Markdown extension (e.g. md, markdown, mdown).
MEXT = md

## All markdown files in the working directory
SRC = $(wildcard *.$(MEXT))

## Location of Pandoc support files.
PREFIX = /Users/matt/.pandoc

## Location of your working bibliography file
BIB = /Users/matt/Google\ Drive/Airlock/Research/bib/bib.bib

## CSL stylesheet (located in the csl folder of the PREFIX directory).
CSL = /Users/matt/Google\ Drive/Airlock/Research/bib/the-open-university-harvard.csl


PDFS=$(SRC:.md=.pdf)
DOCX=$(SRC:.md=.docx)
HTML=$(SRC:.md=.html)
TEX=$(SRC:.md=.tex)


all:	$(PDFS) $(DOCX) $(HTML) $(TEX)

pdf:	clean $(PDFS)
docx:	clean $(DOCX)
html:	clean $(HTML)
tex:	clean $(TEX)

%.pdf:	%.md	
	pandoc -r markdown+pipe_tables+table_captions+yaml_metadata_block+smart -F pandoc-crossref -F pandoc-citeproc --pdf-engine=xelatex --toc --standalone -N -V papersize=A4 -V fontsize=10pt -V mainfont='Minion Pro' -V sansfont=Helvetica -V monofont=Inconsolata -V classoption=onecolumn -V documentclass=article -V colorlinks -V lang=en-GB --csl=$(CSL) --bibliography=$(BIB) -o $@ $<


%.docx:	%.md
	pandoc -r markdown+pipe_tables+table_captions+yaml_metadata_block+smart --mathjax -F pandoc-crossref -F pandoc-citeproc --standalone -N --ascii  --toc --toc-depth=2 --csl=$(CSL) --bibliography=$(BIB) -o $@ $<

%.html:	%.md
	pandoc -r markdown+pipe_tables+table_captions+yaml_metadata_block+smart --mathjax -F pandoc-crossref -F pandoc-citeproc --standalone -N --ascii  --toc --toc-depth=2 --csl=$(CSL) --bibliography=$(BIB) -o $@ $<
	
%.tex: %.md
		pandoc -r markdown+pipe_tables+table_captions+yaml_metadata_block+smart -F pandoc-crossref -F pandoc-citeproc --toc --biblatex --standalone -N -V papersize=A4 -V classoption=onecolumn -V documentclass=article -V lang=en-GB --csl=$(CSL) --bibliography=$(BIB) -o $@ $<

clean:
	rm -f *.pdf *.docx *.html *.tex