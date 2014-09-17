load("webs.Rdata")
load("D.Rdata")

library(stringr)
library(betalink)
library(reshape2)
source("commons.r")

mw <- metaweb(raw)
A <- incidence(mw)

COPRES <- INT <- A
COPRES[A>0] <- 0
INT[A>0] <- 0

for(w in raw)
{
   a <- incidence(w)
   COPRES[rownames(a),colnames(a)] <- COPRES[rownames(a),colnames(a)] + 1
   INT[rownames(a),colnames(a)] <- INT[rownames(a),colnames(a)] + a
}

PROBA <- INT/COPRES
PROBA[is.nan(PROBA)] <- 0

PROBA <- melt(PROBA)
colnames(PROBA) <- c("parasite", "host", "proba")
PROBA$weight <- melt(COPRES)$value
lscore <- D$jacknife$mean
intnames <- ldply(str_split(names(lscore), '-'), function(x) x)
colnames(intnames) <- c("host", "parasite")
intnames$stat <- lscore

fig3dat <- merge(PROBA, intnames)
save(fig3dat, file="paco_fig3.Rdata")
