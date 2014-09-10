library(spatgraphs)
library(rworldmap)
library(igraph)
library(betalink)
library(bipartite)

sites <- read.table("../data/coordinates.csv", h=T, sep="\t")

pp <- list(x=sites$Long, y=sites$Lat)

ga_graph <- spatgraph(pp, "gabriel")

map <- getMap(resolution="low")
#plot(map, xlim=range(pp$x), ylim=range(pp$y), asp=1, col="lightgrey")
#plot(graph.adjlist(ga_graph$edges), rescale=F, add=T, layout=cbind(pp$x, pp$y), vertex.size=out$mod*600, vertex.label=NA, edge.arrow.size=0.0, vertex.frame.color=NA, vertex.color="darkorange", edge.color="orange")

### Co-oc networks

mw <- metaweb(raw)
Sites <- names(raw)
Species <- V(mw)$name
cmat <- matrix(0, ncol=length(Species), nrow=length(Sites))
rownames(cmat) <- Sites
colnames(cmat) <- Species
for(s in names(raw)){
   cmat[s,V(raw[[s]])$name] = 1
}

