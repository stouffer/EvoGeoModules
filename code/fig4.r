library(RColorBrewer)
palette(brewer.pal(9, "Set1"))

load("paco_fig2.Rdata")
load("paco_fig1.Rdata")
load("D.Rdata")

pdf(width=14, file="../figures/figure4.pdf")
par(mfcol=c(1,2), xaxs="i", yaxs="i",pty="s")





LOC = fig1dat$loc_ss / max(D$gof$ss)
REG = fig1dat$reg_ss / max(D$gof$ss)


plot(density(LOC, from=0, to=0.3),
	xlab = "Network-level coevolution (relative to continental)",
	ylab = "Density",
	col = 2,
	xlim = c(0, 0.4),
	ylim = c(0, 20),
	main=""
)
lines(density(REG, from=0, to=1),col=3)
box()

legend("topright", fill=c(2,3), legend=c("Regional", "Local"), bty="n")





plot(density(unique(fig2dat[,c("int","rvalue")])$rvalue, from=1e3, to=max(fig2dat$rvalue)), log="x",
	xlab = "Contribution to coevolution",
	ylab = "Density",
	col = 1,
	xlim = c(1e3, 4e4),
	ylim = c(0, 0.0002),
	main=""
)
lines(density(subset(fig2dat, type=="reg")$score, from=1e3, to=max(fig2dat$rvalue)),col=2)
lines(density(subset(fig2dat, type=="loc")$score, from=1e3, to=max(fig2dat$rvalue)),col=3)

legend("topright", fill=c(1,2,3), legend=c("Continental", "Regional", "Local"), bty="n")

dev.off()
