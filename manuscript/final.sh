#! /usr/bin/bash

make SOURCE=submitted.md EXT=tex TITLE=submitted OUTPUT=subm.tex
make SOURCE=manuscript.md EXT=tex TITLE=revised OUTPUT=revi.tex

latexdiff subm.tex revi.tex > resub.tex
pdflatex resub.tex
pdflatex resub.tex

pdftops resub.pdf resub.ps
ps2pdf13 resub.ps resub.pdf
rm resub.ps

rm {subm,revi,resub}.tex
