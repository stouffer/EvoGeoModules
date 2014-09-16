library(RColorBrewer)
library(rworldmap)
library(igraph)

load("metrics.Rdata")
load("paco_fig1.Rdata")

sites <- read.table("../data/coordinates.csv", h=T, sep="\t")

pp <- list(x=sites$Long, y=sites$Lat)

pdf(file="../figures/figure1.pdf")

palette(brewer.pal(9, "Set2"))

map <- getMap(resolution="low")
plot(map, xlim=range(pp$x), ylim=range(pp$y), asp=1, col=rgb(0.9, 0.9, 0.9))
points(pp$x, pp$y, pch=22+(fig1dat$loc <= 0.05), bg=1+(fig1dat$reg <= 0.05), cex=1.5)
legend("bottomleft", c("Loc. + Reg.", "Loc. only", "Reg. only", "None"), pch=c(23, 23, 22, 22), pt.bg=c(2,1,2,1), title="PACo", bg="white")
box()

dev.off()
