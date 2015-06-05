PDF=coevo_ms.pdf
TEX=maintext.tex
MD=manuscript.md
BIB=/home/tpoisot/.pandoc/default.bib
CSL=/home/tpoisot/.pandoc/styles/pnas.csl
OPT=--biblio=$(BIB) --csl=$(CSL)

all: $(PDF) $(TEX)

$(PDF): $(MD)
	pandoc $< -o $@ $(OPT) --latex-engine=pdflatex

$(TEX): $(MD)
	pandoc $< -o $@ $(OPT) --natbib
