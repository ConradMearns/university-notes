@echo off

REM Takes a single filename argument as input and uses pdflatex to build into a PDF before cleaning temp files

pdflatex %1
rm *.aux
rm *.log
