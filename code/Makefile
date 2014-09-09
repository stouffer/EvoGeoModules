R=Rscript
DL=wget

all: webs.Rdata

betalink:
	$(DL) https://github.com/tpoisot/betalink/archive/newdoc.zip
	unzip newdoc.zip
	R CMD INSTALL betalink-newdoc
	rm -r betalink-newdoc
	rm -r newdoc.zip

webs.Rdata: format_networks.r
	$(R) format_networks.r

