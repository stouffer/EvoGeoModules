library(ggplot2)
library(RColorBrewer)

load("paco_fig1.Rdata")
load("paco_fig2.Rdata")

colnames(fig1dat)[1] = "site"
fig1dat$loc = fig1dat$loc <= 0.05
fig1dat$reg = fig1dat$reg <= 0.05

fig2dat = merge(fig1dat, fig2dat)
fig2dat$int <- as.vector(fig2dat$int)
fig2dat <- subset(fig2dat, type=="loc")

f2d <- ddply(fig2dat, .(site, loc, reg), summarize, cor = cor(score, rvalue), l = length(int))

f2d$type = factor(paste(f2d$reg, f2d$loc))


pdf("../figures/figure2.pdf", width=9, height=8)
par(xaxs="i", yaxs="i")

palette(brewer.pal(9, "Set2"))

plot(jitter(as.numeric(f2d$type)), f2d$cor, cex=log(f2d$l, 10), col="darkgrey", bg=as.numeric(f2d$type), xlim=c(0.2, 4.8), ylim=c(-1, 1), pch=21, axes=F, ylab="Correlation between local and continental contribution to coevolutionary signal", xlab=NA)
rug(f2d$cor, side=2, col="grey")
rug(f2d$cor, side=4, col="grey")
abline(h=0, col="lightgrey", lwd=2, lty=2)

axis(2)
axis(1, at=c(1,2,3,4), labels=c("Not significant", "Significant regionally", "Significant locally", "Significant at both levels"))

box()

dev.off()
