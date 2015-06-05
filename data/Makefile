DL=wget

all: count.csv host.tre para.tre

count.csv:
	$(DL) http://datadryad.org/bitstream/handle/10255/dryad.54849/DoublePhyloData.csv
	mv DoublePhyloData.csv count.csv

host.tre:
	$(DL) http://datadryad.org/bitstream/handle/10255/dryad.54850/HostTree.tre
	mv HostTree.tre host.tre

para.tre:
	$(DL) http://datadryad.org/bitstream/handle/10255/dryad.54851/FleaTree.tre
	mv FleaTree.tre para.tre
