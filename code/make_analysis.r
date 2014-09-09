source("network_metrics.r")
source("parafit_analyses.r")

out <- merge(cophylo, metrics)
save(out, file="metrics.Rdata")
