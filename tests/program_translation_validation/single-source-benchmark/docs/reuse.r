library(ggplot2)
library(grid)
library(gridExtra)

pdf(file = "docs/reuse.png")
df <- read.table("docs/reuse_percentage.log", header = FALSE)

data <- as.vector(df[,1])
#plot(data)

counts <- table(data)
barplot(counts, xlab="Perc. of instructions reused", ylab="# of test-subjects(functions)")

dev.off()
