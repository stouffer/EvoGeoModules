load("paco_fig3.Rdata")

fig3dat$vary = cut(fig3dat$proba, breaks=seq(0.0, 1.0, 0.2))

pdf(file="../figures/figure3.pdf", height=6)

boxplot(stat~vary, fig3dat, ylim=rev(c(0,3e4)), lty=1, pch=19, xlab="Interaction spatial consistency", ylab="Interaction-level contribution to cophylogenetic signal")
points(jitter(match(fig3dat$vary, levels(fig3dat$vary))), fig3dat$stat, pch=21, cex=fig3dat$weight/7, bg=rgb(0, 0, 0, alpha=0.2), col=NA)

dev.off()
