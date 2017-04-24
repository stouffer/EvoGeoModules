FILE=manuscript
SOURCE=$(FILE).md
BIB=references.json
CSL=.plmt/plab.csl
MARKED= ./.plmt/temp.md
PFLAGS= --filter pandoc-citeproc
TAG=revised
AS=preprint

PHONY: all diff

diff: diff_$(AS)_from_$(TAG).pdf

all: $(FILE)_preprint.pdf $(FILE)_draft.pdf $(FILE).odt

clean:
	rm $(MARKED)

.metadata.yaml: infos.yaml authors.yaml ABSTRACT
	node .plmt/metadata.js
	@sed -i '1s/^/---\n/' $@
	@echo "..." >> $@

$(MARKED): $(SOURCE) .metadata.yaml
	node .plmt/critic.js $< $@

$(FILE)_preprint.pdf: $(MARKED)
	pandoc $(MARKED) -o $@ $(PFLAGS) --template ./.plmt/templates/preprint.template .metadata.yaml --bibliography $(BIB) --csl $(CSL)

$(FILE)_draft.pdf: $(MARKED)
	pandoc $(MARKED) -o $@ $(PFLAGS) --template ./.plmt/templates/draft.template .metadata.yaml --bibliography $(BIB) --csl $(CSL)

$(FILE).odt: $(MARKED)
	pandoc $(MARKED) -o $@ $(PFLAGS) --template ./.plmt/templates/opendocument.template .metadata.yaml --bibliography $(BIB) --csl $(CSL)

# Other templates
$(FILE)_plos.pdf: $(MARKED)
	pandoc $(MARKED) -o $@ $(PFLAGS) --template ./.plmt/templates/plos.template .metadata.yaml --bibliography $(BIB) --csl $(CSL)

# Revised format
revised.md:
	cp $(SOURCE) temp.md
	git checkout $(TAG) $(SOURCE)
	mv $(SOURCE) $@
	mv temp.md $(SOURCE)

diff_$(AS)_from_$(TAG).pdf: revised.md
	node .plmt/critic.js $< oldmk.md
	pandoc oldmk.md -o old.tex $(PFLAGS) --template ./.plmt/templates/$(AS).template .metadata.yaml --bibliography $(BIB) --csl $(CSL)
	pandoc $(MARKED) -o new.tex $(PFLAGS) --template ./.plmt/templates/$(AS).template .metadata.yaml --bibliography $(BIB) --csl $(CSL)
	latexdiff -t UNDERLINE old.tex new.tex > diff.tex
	latexmk -pdf diff.tex
	latexmk -c
	pdf2ps diff.pdf diff.ps
	ps2pdf13 diff.ps diff.pdf
	rm diff.ps
	rm {old,new,diff}.tex
	mv diff.pdf $@
	rm oldmk.md
