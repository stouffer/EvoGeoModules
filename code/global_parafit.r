library(ape)
library(stringr)
library(igraph)
library(betalink)

source("commons.r")

load("webs.Rdata")
mw <- metaweb(raw)

host_tree <- read.tree("../data/host.tre")
host_tree$tip.label <- str_replace(host_tree$tip.label, "_", " ")
para_tree <- compute.brlen(read.tree("../data/para.tre"))
para_tree$tip.label <- str_replace(para_tree$tip.label, "_", " ")

A <- incidence(mw)
h_mat <- cophenetic(host_tree)[colnames(A), colnames(A)]
p_mat <- cophenetic(para_tree)[rownames(A), rownames(A)]

modules <- walktrap.community(mw)
members <- sort(table(modules$membership),decreasing=TRUE)

errors <- list()

for(comm in c(1:5))
{
   cname <- names(members)[comm]
   mod_members <- V(mw)[modules$membership == cname]
   imw <- induced.subgraph(mw, mod_members)
   A <- incidence(imw)
   h_mat <- cophenetic(host_tree)[colnames(A), colnames(A)]
   p_mat <- cophenetic(para_tree)[rownames(A), rownames(A)]
   Z <- parafit(h_mat, p_mat, A)$ParaFitGlobal/prod(dim(A))
   zs <- numeric(100)
   for(i in c(1:10))
   {
      imw <- induced.subgraph(mw, sample(V(mw), vcount(imw)))
      A <- incidence(imw)
      h_mat <- cophenetic(host_tree)[colnames(A), colnames(A)]
      p_mat <- cophenetic(para_tree)[rownames(A), rownames(A)]
      zs[i] <- parafit(h_mat, p_mat, A)$ParaFitGlobal/prod(dim(A))
   }
   errors[[comm]] <- (zs-Z)/sd(zs)
}
