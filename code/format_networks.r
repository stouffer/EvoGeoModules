library(plyr)
library(igraph)
library(stringr)
library(reshape2)

raw_data <- read.csv("../data/count.csv")

raw_data <- melt(raw_data, id=c("Host.species", "Region", "no.hosts.sampled"))

raw_data <- aggregate(cbind(no.hosts.sampled, value)~Region*Host.species*variable, raw_data, sum)
raw_data <- subset(raw_data, value>0)

by_reg <- split(raw_data, raw_data$Region)

dh = acast(x, .~Host.species, value.var="no.hosts.sampled", mean)
dh = dh/sum(dh)
dp = acast(x, .~variable, value.var="value", sum)
dp = dp/sum(dp)
m = kronecker(dp[1,], t(dh[1,]))

format_data <- data.frame(from=raw_data$variable)
format_data$to <- raw_data$Host.species
format_data$weight <- raw_data$value / raw_data$no.hosts.sampled
format_data$region <- raw_data$Region
format_data$from <- str_replace(format_data$from, "\\.", " ")

webs <- llply(split(format_data, format_data$region), graph.data.frame)

# In case this is needed
raw <- webs
raw <- llply(raw, function(x) remove.edge.attribute(x, "weight"))
raw <- llply(raw, function(x) remove.edge.attribute(x, "region"))

save(raw, webs, file="webs.Rdata")
