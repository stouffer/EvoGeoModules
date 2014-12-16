library(ggplot2)
library(RColorBrewer)
library(plyr)

load("paco_fig1.Rdata")
load("paco_fig2.Rdata")

colnames(fig1dat)[1] = "site"
fig1dat$loc = fig1dat$loc <= 0.05
fig1dat$reg = fig1dat$reg <= 0.05

fig2dat = merge(fig1dat, fig2dat)
fig2dat$int <- as.vector(fig2dat$int)
fig2dat <- subset(fig2dat, type=="loc")

corpval = function(x, y) cor.test(x, y)$p.value

f2d <- ddply(fig2dat, .(site, loc, reg), summarize, cor = cor(score, rvalue), l = length(int), p = corpval(score, rvalue))

f2d$type = factor(paste(f2d$reg, f2d$loc))
levels(f2d$type) = c("None", "Local only", "Regional only", "Both")

pdf("../figures/figure2.pdf", width=14)
par(xaxs="i", yaxs="i")

palette(brewer.pal(9, "Set2"))


plot(rank(f2d$p, ties.method="random"), f2d$cor, cex=log(f2d$l, 10), col="darkgrey", bg=as.numeric(f2d$type), xlim=c(0, 52), ylim=c(-1, 1), pch=NA, axes=T, ylab="Correlation between local and continental contribution to coevolutionary signal", xlab=NA)
rect(49.5, -1, 52, 1, col=rgb(0.88, 0.88, 0.82), border=NA)
rug(f2d$cor, side=2, col="grey")
rug(f2d$cor, side=4, col="grey")
abline(h=0, col="lightgrey", lwd=2, lty=2)
points(rank(f2d$p, ties.method="random"), f2d$cor, cex=log(f2d$l, 10), col="darkgrey", bg=as.numeric(f2d$type), xlim=c(0, 52), ylim=c(-1, 1), pch=21)

legend(x=-1, y=-0.5, legend=levels(f2d$type), fill=c(1,2,3,4), bty='n', title="Network coevolutionary signal", title.adj=7, xjust=0)

legend(x=-1.25, y=-0.1, legend=c(10, 30, 100), pch=19, bty='n', title="Number of interactions", title.adj=8, pt.cex=log(c(10, 30, 100),10))

box()


dev.off()


