library(paco)
library(stringr)
library(igraph)
library(betalink)
library(doMC)
library(ape)

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


cat("PACO on all data STARTED\n")
D <- PACo(prepare_paco_data(H=h_mat, P=p_mat, HP=A), nperm=5000)
save(D, file="D.Rdata")
cat("PACO on all data DONE\n")

local_paco <- function(n)
{
   blues <- V(n)$name[degree(n, mode="out")>0]
   reds <- V(n)$name[degree(n, mode="in")>0]
   reduced_A <- A[blues,reds]
   local_A <- incidence(n)
   regD <- PACo(prepare_paco_data(H=h_mat[reds,reds], P=p_mat[blues,blues], reduced_A), nperm=5000)
   locD <- PACo(prepare_paco_data(H=h_mat[reds,reds], P=p_mat[blues,blues], local_A), nperm=5000)
   output <- data.frame(loc=locD$gof$p, reg=regD$gof$p, loc_ss=locD$gof$ss, reg_ss=regD$gof$ss)
   return(output)
}

## Parallel version
registerDoMC(3)
fig1dat <- ldply(raw, local_paco, .parallel=TRUE)
save(fig1dat, file="paco_fig1.Rdata")
