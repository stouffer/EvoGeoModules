library(igraph)
library(betalink)
library(vegan)

source("commons.r")

load("webs.Rdata")

mw <- metaweb(raw)

network_stats <- function(n)
{
   nbl <- sum(degree(n, mode="out")>0)
   nre <- vcount(n) - nbl
   part <- walktrap.community(n)
   A <- incidence(n)
   data.frame(
              mod = modularity(part),
              n = length(unique(part$membership)),
              blue = nbl,
              red = nre,
              co = ecount(n)/(nbl*nre),
              NODF = nestednodf(A)$statistic[3],
              div = betalink(n, mw)$OS
              )
}

metrics <- ldply(raw, network_stats)
