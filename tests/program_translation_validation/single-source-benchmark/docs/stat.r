library(ggplot2)
library(grid)
library(gridExtra)

options(scipen=10)
options(width=250)

#cls <- function() cat(rep("\n",100))
#cls()
# Remove all the variables 
rm(list=setdiff(ls(), lsf.str()))

print_quartile <- function (mean, median, min, max, msg, minlabel, maxlabel) {
  print(msg)
  cat("Mean:", mean, "\n")
  cat("Median:", median, "\n")
  cat("Max:", max, ":" , maxlabel, "\n")
  cat("Min:", min, ":", minlabel, "\n")
}

print_stats <- function (df, chart, range_min, range_max, step) {
  test <- as.vector(df[,1])
  size <- as.vector(df[,2])
  elapsed_compd <- sapply(df[,5], function(x) toString(x))
  elapsed_mp <- sapply(df[,8], function(x) toString(x))
  elapsed_pm <- sapply(df[,11], function(x) toString(x))
  
  elapsed_c_sec <- sapply(elapsed_compd, function(x) eval(parse(text=x)))
  elapsed_mp_sec <- sapply(elapsed_mp, function(x) eval(parse(text=x)))
  elapsed_pm_sec <- sapply(elapsed_pm, function(x) eval(parse(text=x)))

  print(max(size))
  print(min(size))

  # Compd
  median_c <- median(elapsed_c_sec)
  mean_c <- mean(elapsed_c_sec)
  max_c <- max(elapsed_c_sec)
  min_c <- min(elapsed_c_sec)
  max_c_id <- which(max_c == elapsed_c_sec)
  min_c_id <- which(min_c == elapsed_c_sec)
  max_c_label <- paste("F: ", test[max_c_id[1]], "\nS: ", size[max_c_id[1]])
  min_c_label <- paste("F: ", test[min_c_id[1]], "\nS: ", size[min_c_id[1]])
  print_quartile(mean_c, median_c, min_c, max_c, "compd", min_c_label, max_c_label)

  # mp
  median_mp <- median(elapsed_mp_sec)
  mean_mp <- mean(elapsed_mp_sec)
  max_mp <- max(elapsed_mp_sec)
  min_mp <- min(elapsed_mp_sec)
  max_mp_id <- which(max_mp == elapsed_mp_sec)
  min_mp_id <- which(min_mp == elapsed_mp_sec)
  max_mp_label <- paste("F: ", test[max_mp_id[1]], "\nS: ", size[max_mp_id[1]])
  min_mp_label <- paste("F: ", test[min_mp_id[1]], "\nS: ", size[min_mp_id[1]])
  print_quartile(mean_mp, median_mp, min_mp, max_mp, "mp", min_mp_label, max_mp_label)

  # pm
  median_pm <- median(elapsed_pm_sec)
  mean_pm <- mean(elapsed_mp_sec)
  max_pm <- max(elapsed_pm_sec)
  min_pm <- min(elapsed_pm_sec)
  max_pm_id <- which(max_pm == elapsed_pm_sec)
  min_pm_id <- which(min_pm == elapsed_pm_sec)
  max_pm_label <- paste("F: ", test[max_pm_id[1]], "\nS: ", size[max_pm_id[1]])
  min_pm_label <- paste("F: ", test[min_pm_id[1]], "\nS: ", size[min_pm_id[1]])
  print_quartile(mean_pm, median_pm, min_pm, max_pm, "pm", min_pm_label, max_pm_label)

  lmts <- range(elapsed_mp_sec,elapsed_pm_sec)
  par(mfrow = c(1, 2))
#
  boxplot(elapsed_mp_sec, ylab =  "Time (secs)", main = "Proving GN\nsubgraph-isomorphic to GNP\n F:FuncName, S:Size of lifted IR", ylim=lmts)
  imp_point <- c(max_mp, min_mp)
  imp_label <- c(max_mp_label, min_mp_label)
  text(y=imp_point, labels=imp_label, x=1.25)

  boxplot(elapsed_pm_sec, ylab =  "Time (secs)", main = "Proving GNP\nsubgraph-isomorphic to GN", ylim=lmts)
  imp_point <- c(max_pm, min_pm)
  imp_label <- c(max_pm_label, min_pm_label)
  text(y=imp_point, labels=imp_label, x=1.25)

  boxplot(elapsed_c_sec, ylab =  "Time (secs)", main = "Compositional Decompiler")
  imp_point <- c(max_c, min_c)
  imp_label <- c(max_c_label, min_c_label)
  text(y=imp_point, labels=imp_label, x=1.25)
#  match <- cbind(elapsed_mp_sec, elapsed_pm_sec)
#  boxplot(match, ylab =  "Time (secs)", main = "Proving GNP isomorphic to GN")
#  axis(2, at = seq(range_min,range_max,step))
}

# Give the chart file a name.
pdf(file = "test.pdf")

print("Stats: Compd/Matcher \n")
# cat docs/matchPass_2.log | parallel "echo {}; cd {}; make llstat; tail -n2 mcsema/compd.log ; tail -n2  mcsema/match_mcsema_proposed.log; tail -n2  mcsema/match_proposed_mcsema.log;cd - "   > docs/stats_compdmatch.log
df <- read.table("docs/stats_compdmatch.time", header = FALSE, sep=',')
print_stats(df)

dev.off()
