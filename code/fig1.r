library(rworldmap)
library(igraph)

load("metrics.Rdata")
load("paco_fig1.Rdata")

sites <- read.table("../data/coordinates.csv", h=T, sep="\t")

pp <- list(x=sites$Long, y=sites$Lat)

pdf(file="../figures/figure1.pdf")

map <- getMap(resolution="low")
plot(map, xlim=range(pp$x), ylim=range(pp$y), asp=1, col=rgb(0.88, 0.88, 0.82), border=rgb(0.88, 0.88, 0.82))

points(pp$x, pp$y, pch=21, bg=c("#66666644", "#66666688")[1+(fig1dat$reg <= 0.05)], cex=1.2, col=NA)
points(pp$x, pp$y, pch=21, bg=c("#DE935F55", "#DE935FFF")[1+(fig1dat$loc <= 0.05)], cex=0.6, col=NA)
legend("topright", c("Loc. interactions sign.", "Loc. interactions not sign."), pch=21, bty="n", pt.bg=c("#DE935FFF", "#DE935F55"), col=NA, pt.cex=1.2)
legend("topleft", c("Reg. interactions sign.", "Reg. interactions not sign."), pch=21, bty="n", pt.bg=c("#66666688", "#66666644"), col=NA, pt.cex=1.2)
box()

dev.off()
