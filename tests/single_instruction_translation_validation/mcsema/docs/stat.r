library(ggplot2)
library(grid)
library(gridExtra)

options(scipen=10)
options(width=250)

#cls <- function() cat(rep("\n",100))
#cls()
# Remove all the variables 
rm(list=setdiff(ls(), lsf.str()))

print_stats <- function (df, chart, range_min, range_max, step) {
  label <- as.vector(df[,1])
  user <-  as.vector(df[,2])
  system <- as.vector(df[,3])
  elapsed <- sapply(df[,4], function(x) toString(x))
  
  real_sec <- user + system
  real_min <- real_sec/60
  
  elapsed_sec <- sapply(elapsed, function(x) eval(parse(text=x)))
  median <- median(elapsed_sec)
  max <- max(elapsed_sec)
  min <- min(elapsed_sec)

  max_idx <- which(elapsed_sec == max)
  min_idx <- which(elapsed_sec == min)
  median_idx <-  which(elapsed_sec == median)

  max_idx
  min_idx
  median_idx
  max_label <- label[max_idx[1]]
  max_label <- gsub("(.*?)_.*","\\1", max_label)

  min_label <- label[min_idx[1]]
  min_label <- gsub("(.*?)_.*","\\1", min_label)

  median_label <- label[median_idx[1]]
  median_label <- gsub("(.*?)_.*","\\1", median_label)
 
  cat("Median:", median, ":", median_label, "\n")
  cat("Max:", max, ":" , max_label, "\n")
  cat("Min:", min, ":", min_label, "\n")

  imp_point <- c(min, max)
  imp_label <- c(min_label, max_label)

#range_min <- floor(min)
#  range_max <- ceiling(min)

#boxplot(elapsed_sec, ylab =  "Time (secs)", main = chart, horizontal = TRUE, axes = FALSE, staplewex = 1);
  boxplot(elapsed_sec, ylab =  "Time (secs)", main = chart, axes=FALSE)
  text(y=imp_point, labels=imp_label, x=1.25)
  axis(2, at = seq(range_min,range_max,step))
}

# Give the chart file a name.
pdf(file = "test.pdf")

print("Stats: Xspec \n")
# cat docs/kliPassR.log | parallel "echo {}; echo ==; tail -n3 register-variants/{}/Output/test-xspec.out" > docs/stat_xspec.time
df <- read.table("docs/stat_xspec.time", header = FALSE, sep=',')
print_stats(df, "Summary Generation Time for X86-64 instructions", 110, 370, 20)

print("Stats: Lspec \n")
# cat docs/kliPassR.log | parallel "echo {}; echo ==; tail -n3 register-variants/{}/Output/test-lspec.out" > docs/stat_lspec.time
df <- read.table("docs/stat_lspec.time", header = FALSE, sep=',')
print_stats(df, "Summary generation Time for Lifted LLVM IR", 110, 310, 20)

print("Stats: Prove \n")
# cat docs/genz3PassR.log  | parallel  "echo; echo; cd register-variants/{}; make provez3; cd -" |& tee log  
df <- read.table("docs/stat_prove.time", header = FALSE, sep=',')
print_stats(df, "Z3 Solver Time", 0, 30, 1)

# Save the file.
dev.off()
