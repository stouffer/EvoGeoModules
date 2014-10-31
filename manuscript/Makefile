PDF=coevo_ms.pdf
MD=manuscript.md
BIB=/home/tp/.pandoc/default.bib
CSL=/home/tp/vrac/styles/nature.csl

all: $(PDF)

$(PDF): $(MD)
	pandoc $< -o $@ --biblio=$(BIB) --csl=$(CSL) --latex-engine=xelatex
