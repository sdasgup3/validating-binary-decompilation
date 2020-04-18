library(ggplot2)
library(grid)
library(gridExtra)

#cls <- function() cat(rep("\n",100))
#cls()
# Remove all the variables 
rm(list=setdiff(ls(), lsf.str()))

print_quartile <- function (v) {
  median <- median(v)
  mean <- mean(v)
  max <- max(v)
  min <- min(v)
  q <- quantile(v)

  cat("Mean:", mean, "\n")
  cat("Median:", median, "\n")
  cat("Max:", max, "\n")
  cat("Min:", min, "\n")
  cat("Quantile:", q, "\n")
}

print_stats <- function (df, c) {
  time <- as.vector(df[,c])
  
  elapsed_sec <- as.vector(sapply(time, function(x) eval(parse(text=x))))

  print_quartile(elapsed_sec)
}

## cat docs/reported_stats/1_7.log | parallel tail -n2 {}/mcsema/tuner.log > docs/reported_stats/ot.time
#df <- read.table("ot.time", header = FALSE, sep=',')
#print_stats(df, 3)
#cat("\n\nSize: \n")
## cat docs/reported_stats/1_7.log | parallel wc -w  {}/mcsema/normalizer_final_config.json > docs/reported_stats/ot.size
#df <- read.table("ot.size", header = FALSE, sep=',')
#print_stats(df, 1)

# cat docs/reported_stats/full_O3_OT.log | parallel tail -n2 {}/mcsema/tuner.log > docs/reported_stats/ot.time
df <- read.table("ot.time", header = FALSE, sep=',')
print_stats(df, 3)
cat("\n\nSize: \n")
# cat docs/reported_stats/full_O3_OT.log | parallel wc -w  {}/mcsema/normalizer_final_config.json > docs/reported_stats/ot.size
df <- read.table("ot.size", header = FALSE, sep=',')
print_stats(df, 1)
