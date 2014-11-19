load("paco_fig3.Rdata")

library(ggplot2)


fig3dat$vary = cut(fig3dat$proba, breaks=seq(0.0, 1.0, 0.2))

pdf(file="../figures/figure3.pdf")
print(ggplot(fig3dat, aes(x=vary, y=stat, fill=vary)) + geom_violin() + scale_y_log10() + geom_jitter() + theme_bw() + xlab("Interaction spatial consistency") + ylab("Importance for coevolution")) 
dev.off()
