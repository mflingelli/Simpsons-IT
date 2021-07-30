#!/bin/bash

echo "Erzeuge allgemeine Ausgabe"

echo "Erzeuge Präsentation"
pdflatex --interaction=batchmode Simpsons-IT.tex 2>&1 > /dev/null
pdflatex --interaction=batchmode Simpsons-IT.tex 2>&1 > /dev/null

echo "Erzeuge Artikel"
pdflatex --interaction=batchmode Simpsons-IT_article.tex 2>&1 > /dev/null
pdflatex --interaction=batchmode Simpsons-IT_article.tex 2>&1 > /dev/null


echo "Erzeuge feuerwehrspezifische Ausgabe"

echo "Erzeuge Präsentation"
pdflatex --interaction=batchmode Simpsons-IT_FF_Edition.tex 2>&1 > /dev/null
pdflatex --interaction=batchmode Simpsons-IT_FF_Edition.tex 2>&1 > /dev/null

echo "Erzeuge Artikel"
pdflatex --interaction=batchmode Simpsons-IT_FF_Edition_article.tex 2>&1 > /dev/null
pdflatex --interaction=batchmode Simpsons-IT_FF_Edition_article.tex 2>&1 > /dev/null

echo "Löschen der unnötigen Dateien"
rm *.aux
rm *.log
rm *.nav
rm *.out
rm *.snm
rm *.toc
rm *.vrb

exit 0
