library(rworldmap)
library(igraph)

load("metrics.Rdata")
load("paco_fig1.Rdata")

sites <- read.table("../data/coordinates.csv", h=T, sep="\t")

pp <- list(x=sites$Long, y=sites$Lat)

pdf(file="../figures/figure1.pdf", height=5.5)

map <- getMap(resolution="low")
plot(map, xlim=range(pp$x), ylim=range(pp$y), col=rgb(0.88, 0.88, 0.82), border=rgb(0.87, 0.81, 0.81), asp=1)

points(pp$x, pp$y, pch=21, bg=c("darkgrey", "black")[1+(fig1dat$loc <= 0.05)], cex=0.7, col=NA)
points(pp$x, pp$y, pch=1, col=c("darkgrey", "black")[1+(fig1dat$reg <= 0.05)], cex=0.7, lwd=1.5)
legend("topright", c("Significant", "Non significant"), pch=21, bty="n", pt.bg=c("black", "darkgrey"), pt.cex=0.7, col=NA, title="Local network")
legend("topleft", c("Significant", "Non significant"), pch=1, bty="n", col=c("black", "darkgrey"), pt.cex=0.7, title="Regional network")
box()

dev.off()

z = function(x){return((x-mean(x))/sd(x))}

pdf(file="../figures/figureLocReg.pdf")
par(asp=1)

plot(z(loc_ss)~z(reg_ss), fig1dat, pch=19,
  xlab="Relative cophylogenetic signal (regional)", ylab="Relative cophylogenetic signal (local)")
abline(h=0, lty=2, col="grey")
abline(v=0, lty=2, col="grey")
abline(a=0, b=1, col="darkgrey")

dev.off()
