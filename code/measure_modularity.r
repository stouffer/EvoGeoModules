library(igraph)
library(betalink)

load("webs.Rdata")

# In case this is needed
raw <- webs
raw <- llply(raw, function(x) remove.edge.attribute(x, "weight"))
raw <- llply(raw, function(x) remove.edge.attribute(x, "region"))

mw <- metaweb(raw)

network_stats <- function(n)
{
   nbl <- sum(degree(n, mode="out")>0)
   nre <- vcount(n) - nbl
   part <- walktrap.community(n)
   data.frame(
              mod = modularity(part),
              n = length(unique(part$membership)),
              blue = nbl,
              red = nre,
              co = ecount(n)/(nbl*nre)
              )
}

