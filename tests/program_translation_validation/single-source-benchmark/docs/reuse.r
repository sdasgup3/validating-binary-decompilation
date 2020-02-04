library(ggplot2)
library(grid)
library(gridExtra)

pdf(file = "reuse.pdf")
df <- read.table("docs/reuse_percentage.log", header = FALSE)

data <- as.vector(df[,1])
#plot(data)

counts <- table(data)
barplot(counts, main="Distribution of Reuse Percentage within & across functions\nfor a given sequence of execution of compositional decompiler\non test-subjects (i.e. functions)", xlab="Perc. of instructions reused", ylab="# of test-subjects(functions)")

dev.off()
