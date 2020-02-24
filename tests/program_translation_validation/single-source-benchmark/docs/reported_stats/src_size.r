library(ggplot2)
library(grid)
library(gridExtra)

tailcount = 1

cat("############ ")
cat("Before Submission ")
cat("############\n\n")
# cat docs/reported_stats/1_2_4.log | parallel  "grep -w \"{}\" docs/reported_stats/all_source_sizes.log"  |& tee docs/reported_stats/BS_source_sizes_all.log
df <- read.table("BS_source_sizes_all.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("\nSource size for Total Valid cases", sz))
tail(df[order(df$V2),],tailcount)
cat("min: ", min(df$V2), ", max :", max(df$V2), ", median: ", median(df$V2), ", mean: ", mean(df$V2))

# cat docs/reported_stats/1.log | parallel  " grep -w \"{}\" docs/reported_stats/all_source_sizes.log   "  |& tee docs/reported_stats/BS_source_sizes_pass.log
df <- read.table("BS_source_sizes_pass.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("\n\nSource size for Total Pass cases", sz))
tail(df[order(df$V2),],tailcount)
cat("min: ", min(df$V2), ", max :", max(df$V2), ", median: ", median(df$V2), ", mean: ", mean(df$V2))

# cat docs/reported_stats/1_2_4.log | parallel "echo {}; cd {}; make llstat; cd -" |& tee docs/reported_stats/BS_ll_size_all.log
df <- read.table("BS_ll_size_all.log", header=FALSE, sep=",")
sz <- nrow(df)
cat("\n\nLL size for Total Valid cases: ", sz)
tail(df[order(df$V2),],tailcount)
cat("min: ", min(df$V2), ", max :", max(df$V2), ", median: ", median(df$V2), ", mean: ", mean(df$V2))


# cat docs/reported_stats/1.log | parallel "echo {}; cd {}; make llstat; cd -" |& tee docs/reported_stats/BS_ll_size_pass.log
df <- read.table("BS_ll_size_pass.log", header=FALSE, sep=",")
sz <- nrow(df)
cat("\n\nLL size for Total Pass  cases", sz)
tail(df[order(df$V2),],tailcount)
cat("min: ", min(df$V2), ", max :", max(df$V2), ", median: ", median(df$V2), ", mean: ", mean(df$V2))

cat("\n\n############ ")
cat(" After Submission ")
cat("############\n\n")
# cat docs/reported_stats/1_6_7_5_8.log | parallel  "grep -w \"{}\" docs/reported_stats/all_source_sizes.log"  |& tee docs/reported_stats/tee AS_source_sizes_all.log
df <- read.table("AS_source_sizes_all.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("\nSource size for Total Valid cases", sz))
tail(df[order(df$V2),],tailcount)
cat("min: ", min(df$V2), ", max :", max(df$V2), ", median: ", median(df$V2), ", mean: ", mean(df$V2))

# cat docs/reported_stats/1_6_7.log | parallel  " grep -w \"{}\" docs/reported_stats/all_source_sizes.log   "  |& tee docs/reported_stats/AS_source_sizes_pass.log
df <- read.table("AS_source_sizes_pass.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("\n\nSource size for Total Pass cases", sz))
tail(df[order(df$V2),],tailcount)
cat("min: ", min(df$V2), ", max :", max(df$V2), ", median: ", median(df$V2), ", mean: ", mean(df$V2))

# cat docs/reported_stats/1_6_7_5_8.log | parallel "echo {}; cd {}; make llstat; cd -" |& tee docs/reported_stats/AS_ll_size_all.log
df <- read.table("AS_ll_size_all.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("\n\nLL size for Total Valid cases", sz))
tail(df[order(df$V2),],tailcount)
cat("min: ", min(df$V2), ", max :", max(df$V2), ", median: ", median(df$V2), ", mean: ", mean(df$V2))

# cat docs/reported_stats/1_6_7.log | parallel "echo {}; cd {}; make llstat; cd -" |& tee docs/reported_stats/AS_ll_size_pass.log
df <- read.table("AS_ll_size_pass.log", header=FALSE, sep=",")
sz <- nrow(df)
cat(paste("\n\nLL size for Total Pass cases", sz))
tail(df[order(df$V2),],tailcount)
cat("min: ", min(df$V2), ", max :", max(df$V2), ", median: ", median(df$V2), ", mean: ", mean(df$V2))

