library(paco)
library(stringr)
library(igraph)
library(betalink)
library(doMC)

source("commons.r")

load("D.Rdata")
load("webs.Rdata")
load("paco_fig1.Rdata")
mw <- metaweb(raw)

host_tree <- read.tree("../data/host.tre")
host_tree$tip.label <- str_replace(host_tree$tip.label, "_", " ")
para_tree <- compute.brlen(read.tree("../data/para.tre"))
para_tree$tip.label <- str_replace(para_tree$tip.label, "_", " ")

A <- incidence(mw)

h_mat <- cophenetic(host_tree)[colnames(A), colnames(A)]
p_mat <- cophenetic(para_tree)[rownames(A), rownames(A)]

D <- link_contribution(D)
save(D, file="D.Rdata")

l_contrib <- function(n, hc, pc)
{
   blues <- V(n)$name[degree(n, mode="out")>0]
   reds <- V(n)$name[degree(n, mode="in")>0]
   reduced_A <- A[blues,reds]
   local_A <- incidence(n)
   regD <- link_contribution(proc_analysis(paco(pre_paco(H=h_mat[reds,reds], P=p_mat[blues,blues], reduced_A)), nperm=50))
   locD <- link_contribution(proc_analysis(paco(pre_paco(H=h_mat[reds,reds], P=p_mat[blues,blues], local_A)), nperm=50))
   output <- list(loc=locD$jacknife$mean, reg=regD$jacknife$mean)
   return(output)
}

coevolved_locales <- subset(fig1dat, loc <= .05 & reg <= .05)$`.id`
co_raw <- raw[coevolved_locales]

## Parallel version
registerDoMC(6)
fig2dat <- llply(co_raw, l_contrib, .parallel=TRUE)

f2d <- data.frame()
for(S in names(fig2dat))
{
   sites <- fig2dat[[S]]
   df_loc <- data.frame(cbind(int=names(sites$loc), score=sites$loc))
   df_loc$type <- rep("loc", nrow(df_loc))
   sr <- sites$reg[names(sites$loc)]
   df_reg <- data.frame(cbind(int=names(sr), score=sr))
   df_reg$type <- rep("reg", nrow(df_reg))
   df_all <- data.frame(rbind(df_loc, df_reg))
   df_all$site <- rep(S, nrow(df_all))
   f2d <- rbind(f2d, df_all)
}

f2d$rvalue <- D$jacknife$mean[as.character(f2d$int)]
rownames(f2d) <- c(1:nrow(f2d))
f2d$score <- as.numeric(as.vector(f2d$score))


fig2dat <- f2d

save(fig2dat, file="paco_fig2.Rdata")
