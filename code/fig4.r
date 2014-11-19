library(ggplot2)
library(reshape2)
library(plyr)
library(gridExtra)

load("paco_fig4.Rdata")

pA <- melt(fig4dat[,c("sp", "ppcdp", "hpcdp")], id.vars=c("sp"))
levels(pA$variable) = c("Parasites", "Hosts")
fa = ggplot(pA, aes(x=sp, y=value)) + geom_density2d() + geom_point()+ facet_grid(~variable) + theme_bw() + opts(strip.background=theme_blank()) + xlab("Spatial distance (km)") + ylab("Phylogenetic dissimilarity")

pB <- melt(fig4dat[,c("sp", "OS", "WN")], id.vars=c("sp"))
levels(pB$variable) = c("Interactions", "Networks")
fb = ggplot(pB, aes(x=sp, y=value)) + geom_density2d() + geom_point() + facet_grid(~variable) + theme_bw() + opts(strip.background=theme_blank()) + xlab("Spatial distance (km)") + ylab("Community dissimilarity")

fig4dat$pcd = (fig4dat$ppcd + fig4dat$hpcd)
pB <- melt(fig4dat[,c("pcd", "OS", "WN")], id.vars=c("pcd"))
levels(pB$variable) = c("Interactions", "Networks")
fc = ggplot(pB, aes(x=pcd, y=value)) + geom_density2d() + geom_point() + facet_grid(~variable) + theme_bw() + opts(strip.background=theme_blank()) + xlab("Phylogenetic dissimilarity") + ylab("Community dissimilarity")

pdf("../figures/figure4.pdf", width=8, height=9)
grid.arrange(fa, fb, fc, ncol=1)
dev.off()

