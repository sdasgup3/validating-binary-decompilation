library(ggplot2)
library(grid)
library(gridExtra)

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
  p <- as.vector(df[,1])
  n <- as.vector(df[,2])
  cat(head(p),"\n")
  cat(head(n), "\n")
  
#elapsed_c_sec <-  as.vector(sapply(elapsed_compd, function(x) eval(parse(text=x))))
#  elapsed_mp_sec <- as.vector(sapply(elapsed_mp, function(x) eval(parse(text=x))))
#  elapsed_pm_sec <- as.vector(sapply(elapsed_pm, function(x) eval(parse(text=x))))
#
  cat("\n\np\n")
  print_quartile(p)
  cat("\n\nn\n")
  print_quartile(n)

}

df <- read.table("avg_p.log", header = FALSE, sep=',')
print_stats(df)












