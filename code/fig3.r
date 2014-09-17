load("paco_fig3.Rdata")

library(ggplot2)

pdf(file="../figures/figure3.pdf")
ggplot(fig3dat, aes(x=proba, y=stat, size=weight)) + geom_point() + geom_smooth() + theme_minimal()
dev.off()
