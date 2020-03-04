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

  cat("Mean:", mean, "\n")
  cat("Median:", median, "\n")
  cat("Max:", max, "\n")
  cat("Min:", min, "\n")
  cat("Quantile:", quantile(v), "\n")
}

print_stats <- function (df) {
  size <- as.vector(df[,1])
  label <- as.vector(df[,1])
  print_quartile(size)

}

# cat docs/reported_stats/1_7.log | parallel wc -w  {}/mcsema/normalizer_final_config.json |& tee docs/reported_stats/opentuner_pass_length.log
df <- read.table("opentuner_pass_length.log", header = FALSE, sep=',')
print_stats(df)
