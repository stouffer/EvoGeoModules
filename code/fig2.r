library(ggplot2)

load("paco_fig2.Rdata")

pdf("../figures/figure2.pdf")
print(ggplot(fig2dat, aes(x=rvalue, y=score, color=type)) + geom_abline(intercept=0) + geom_point() + geom_smooth(method="lm", se=FALSE) + facet_wrap(~site) + theme_bw())
dev.off()
