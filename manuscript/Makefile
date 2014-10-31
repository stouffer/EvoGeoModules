PDF=coevo_ms.pdf
MD=manuscript.md
BIB=/home/tp/.pandoc/default.bib
CSL=/home/tp/vrac/styles/nature.csl
OPT=--biblio=$(BIB) --csl=$(CSL) --latex-engine=xelatex --template=template.tex

all: $(PDF)

$(PDF): $(MD)
	pandoc $< -o $@ $(OPT)
