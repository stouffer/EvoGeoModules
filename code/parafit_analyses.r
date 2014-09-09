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

local_parafit <- function(n, hc, pc)
{
   blues <- V(n)$name[degree(n, mode="out")>0]
   reds <- V(n)$name[degree(n, mode="in")>0]
   reduced_A <- A[blues,reds]
   local_A <- incidence(n)
   max_h <- sum(pcoa(h_mat[reds,reds])$values$Eigenvalues^2)
   max_p <- sum(pcoa(p_mat[blues,blues])$values$Eigenvalues^2)
   PFL <- parafit(h_mat[reds,reds], p_mat[blues,blues], local_A)$ParaFitGlobal
   PFM <- parafit(h_mat[reds,reds], p_mat[blues,blues], reduced_A)$ParaFitGlobal
   return(data.frame(PFreg=PFL/max(max_h, max_p), PFloc=PFM/max(max_h, max_p)))
}

cophylo <- ldply(raw, local_parafit)
