OUTPUT=coevo_ms.pdf
SOURCE=manuscript.md
TYPE=draft # alt. value: preprint
MARKED=$(SOURCE)_m.md
PFLAGS= --template plmt.tex --variable=$(TYPE) --filter pandoc-citeproc

all: $(OUTPUT)

.PHONY: all

clean:
	rm $(MARKED)
	rm bib.keys

bib.keys: $(SOURCE)
	grep @[-:_a-zA-Z0-9]* $< -oh --color=never | sort  | uniq -u | sed 's/@//g' > $@

coevo.bib: bib.keys
	python extractbib.py $< /home/tpoisot/.pandoc/default.bib $@

$(MARKED): $(SOURCE)
	# Removes critic marks
	./critic.sh $< $@
	# Get yaml
	grep -Pzo '\-\-\-\n((.+)\n)+\-\-\-' $@ > paper.yaml
	# Replaces figures marks
	./figures.py $@ paper.yaml $(TYPE)
	mv $@_NEW $@
	# Remove yaml
	rm paper.yaml

$(OUTPUT): $(MARKED)
	pandoc $< -o $@ $(PFLAGS)
