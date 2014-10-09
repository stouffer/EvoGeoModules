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

D <- PACo(prepare_paco_data(H=h_mat, P=p_mat, HP=A), nperm=100)

int_stat <- A
int_stat[TRUE] <- NA
int_p <- int_stat

flip <- function(x) ifelse(as.logical(x), 0, 1)

registerDoMC(7)

AAA <- foreach(i=c(1:nrow(int_stat)), .combine=rbind) %dopar% {
   for(j in c(1:ncol(int_stat)))
   {
      t <- A
      t[i,j] <- flip(t[i,j])
      tD <- PACo(prepare_paco_data(h_mat, p_mat, t),nperm=100)$gof
      #int_stat[i,j] <- tD$ss
      #int_p[i,j] <- tD$p
      data.frame(c("S"=tD$ss, "p"=tD$p, "i"=i, "j"=j))
   }
}

Stat <- (D$gof$ss - int_stat)/sd(int_stat)

