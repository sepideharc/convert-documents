#!/bin/bash

# Declare input argument as a variable

a=myblogpost

# Convert markdown to HTML
pandoc -o $a.html $a.md
# Convert markdown to DOCX
pandoc -o $a.docx $a.md 
# Convert markdown to ODT
pandoc -o $a.odt $a.md
# Convert markdown to PDF
pandoc -S -o $a.pdf $a.md

#convert markdown to Latex
pandoc $a --latex-engine=pdflatex -o $a.pdf 


# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF"
echo "Converted $a to HTML, DOCX, ODT, PDF , Latex"
