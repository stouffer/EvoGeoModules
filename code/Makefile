R=Rscript
DL=wget

all: webs.Rdata metrics.Rdata

betalink:
	$(DL) https://github.com/tpoisot/betalink/archive/newdoc.zip
	unzip newdoc.zip
	R CMD INSTALL betalink-newdoc
	rm -r betalink-newdoc
	rm -r newdoc.zip

webs.Rdata: format_networks.r
	$(R) format_networks.r

metrics.Rdata: network_metrics.r parafit_analyses.r commons.r make_analysis.r
	$(R) make_analysis.r

