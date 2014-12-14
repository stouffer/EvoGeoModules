library(rworldmap)
library(igraph)

load("metrics.Rdata")
load("paco_fig1.Rdata")

sites <- read.table("../data/coordinates.csv", h=T, sep="\t")

pp <- list(x=sites$Long, y=sites$Lat)

pdf(file="../figures/figure1.pdf")

map <- getMap(resolution="low")
plot(map, xlim=range(pp$x), ylim=range(pp$y), asp=1, col=rgb(0.88, 0.88, 0.82), border=rgb(0.88, 0.88, 0.82))

points(pp$x, pp$y, pch=1, col=c("grey", "black")[1+(fig1dat$reg <= 0.05)], cex=1.2)
points(pp$x, pp$y, pch=24, bg=c("grey", "black")[1+(fig1dat$loc <= 0.05)], cex=0.6, col=NA)
legend("topright", c("Loc. interactions sign.", "Loc. interactions not sign."), pch=24, bty="n", pt.bg=c("black", "grey"), pt.cex=0.6, col=NA)
legend("topleft", c("Reg. interactions sign.", "Reg. interactions not sign."), pch=1, bty="n", col=c("black", "grey"), pt.cex=1.2)
box()

dev.off()
