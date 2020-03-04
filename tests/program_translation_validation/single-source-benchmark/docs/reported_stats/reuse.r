library(ggplot2)
library(grid)
library(gridExtra)

  
#cd program_translation_validation/single-source-benchmark
# cat docs/reported_stats/1_2_4.log  | parallel "grep Workdir {}/mcsema/compd.log > {}/mcsema/invoke_compd_seq.log"
# cat docs/reported_stats/1_2_4.log | parallel "sed -i -e 's/.*\/\///g' {}/mcsema/invoke_compd_seq.log"
# ../../scripts/find_reuse.pl |& tee docs/reported_stats/reuse_percentage.log
# cd single-source-benchmark/docs/reported_stats
# Rscript reuse.r  

setEPS()
postscript("reuse.eps");

df <- read.table("reuse_percentage.log", header = FALSE)

data <- as.vector(df[,1])
#plot(data)

#counts <- table(data)
#barplot(counts, xlab="Perc. of instructions reused", ylab="# of test-subjects(functions)")
hist(data, xlab="Percentage of instructions reused", ylab="Number of test-functions",breaks=10, xlim=c(0,100),  las=1, main="", labels=TRUE)


dev.off()
