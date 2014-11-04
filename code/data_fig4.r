library(betalink)
library(stringr)
library(igraph)
library(plyr)

load("webs.Rdata")
load("D.Rdata")

mw <- as.undirected(metaweb(raw))
lg <- line.graph(mw)

lg_cent <- edge.betweenness(mw)

el <- get.edgelist(mw)

ints <- data.frame(cbind(int = str_c(el[,2], el[,1], sep='-'), c = lg_cent))
allints <- data.frame(cbind(int=names(D$jacknife$mean), s=D$jacknife$mean))

fig4dat <- merge(ints, allints)
fig4dat$c <- as.numeric(as.vector(fig4dat$c))
fig4dat$s <- as.numeric(as.vector(fig4dat$s))
