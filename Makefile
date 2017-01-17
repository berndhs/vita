#!/bin/make

# Makefile for Bernd's CV

cv.pdf: cv.tex
	-lualatex --interaction=batchmode --draftmode cv.tex > /dev/null && echo -e ".\c"; 
	-bibtex cv > /dev/null
	-lualatex --interaction=batchmode cv.tex > /dev/null && echo -e ".\c"; 
	-lualatex --interaction=batchmode cv.tex > /dev/null && echo -e ".\c"; 
	ls -ltr | tail -3
