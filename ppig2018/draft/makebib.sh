#!/bin/bash


# from https://tex.stackexchange.com/questions/392070/pandoc-markdown-create-self-contained-bib-file-from-cited-references

latex *.tex

biber --output-format=bibtex *.bcf

rm -f *.aux *.bcf *.blg *.dvi *.log *.out *.run.xml *.toc

echo 'cleanup done!'