library(ggplot2)

load("paco_fig1.Rdata")
load("paco_fig2.Rdata")

colnames(fig1dat)[1] = "site"
fig1dat$loc = fig1dat$loc <= 0.05
fig1dat$reg = fig1dat$reg <= 0.05

fig2dat = merge(fig1dat, fig2dat)

pdf("../figures/figure2.pdf")
print(ggplot(fig2dat, aes(x=rvalue, y=score, group=site)) + geom_smooth(method="lm", fill=NA) + geom_abline(intercept=0, colour="grey") + facet_grid(loc~reg) + theme_bw())
dev.off()
