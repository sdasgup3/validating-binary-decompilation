library(ggplot2)
library(grid)
library(gridExtra)

cat("Before Submission")
# cat docs/reported_stats/1_2_4.log | parallel  "grep -w \"{}\" docs/reported_stats/all_source_sizes.log"  |& tee docs/reported_stats/BS_source_sizes_all.log
cat("\nTotal Valid cases")
df <- read.table("BS_source_sizes_all.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("Source size for ", sz))
tail(df[order(df$V2),])
min(df$V2)
max(df$V2)
median(df$V2)
mean(df$V2)

# cat docs/reported_stats/1.log | parallel  " grep -w \"{}\" docs/reported_stats/all_source_sizes.log   "  |& tee docs/reported_stats/BS_source_sizes_pass.log
cat("\nTotal Pass cases")
df <- read.table("BS_source_sizes_pass.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("Source size for ", sz))
tail(df[order(df$V2),])
min(df$V2)
max(df$V2)
median(df$V2)
mean(df$V2)

# cat docs/reported_stats/1_2_4.log | parallel "echo {}; cd {}; make llstat; cd -" |& tee docs/reported_stats/BS_ll_size_all.log
cat("\nTotal Valid ll cases")
df <- read.table("BS_ll_size_all.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("Source size for ", sz))
tail(df[order(df$V2),])
min(df$V2)
max(df$V2)
median(df$V2)
mean(df$V2)

# cat docs/reported_stats/1.log | parallel "echo {}; cd {}; make llstat; cd -" |& tee docs/reported_stats/BS_ll_size_pass.log
cat("\nTotal Valid ll cases")
df <- read.table("BS_ll_size_pass.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("Source size for ", sz))
tail(df[order(df$V2),])
min(df$V2)
max(df$V2)
median(df$V2)
mean(df$V2)

############
############

cat("\n\nAfter Submission")
# cat docs/reported_stats/1_6_7_5_8.log | parallel  "grep -w \"{}\" docs/reported_stats/all_source_sizes.log"  |& tee docs/reported_stats/tee AS_source_sizes_all.log
cat("\nTotal Valid cases")
df <- read.table("AS_source_sizes_all.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("Source size for ", sz))
tail(df[order(df$V2),])
min(df$V2)
max(df$V2)
median(df$V2)
mean(df$V2)

# cat docs/reported_stats/1_6_7.log | parallel  " grep -w \"{}\" docs/reported_stats/all_source_sizes.log   "  |& tee docs/reported_stats/AS_source_sizes_pass.log
cat("\nTotal Pass cases")
df <- read.table("AS_source_sizes_pass.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("Source size for ", sz))
tail(df[order(df$V2),])
min(df$V2)
max(df$V2)
median(df$V2)
mean(df$V2)

# cat docs/reported_stats/1_6_7_5_8.log | parallel "echo {}; cd {}; make llstat; cd -" |& tee docs/reported_stats/AS_ll_size_all.log
cat("\nTotal Valid ll cases")
df <- read.table("AS_ll_size_all.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("Source size for ", sz))
tail(df[order(df$V2),])
min(df$V2)
max(df$V2)
median(df$V2)
mean(df$V2)

# cat docs/reported_stats/1_6_7.log | parallel "echo {}; cd {}; make llstat; cd -" |& tee docs/reported_stats/AS_ll_size_pass.log
cat("\nTotal Valid ll cases")
df <- read.table("AS_ll_size_pass.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("Source size for ", sz))
tail(df[order(df$V2),])
min(df$V2)
max(df$V2)
median(df$V2)
mean(df$V2)

