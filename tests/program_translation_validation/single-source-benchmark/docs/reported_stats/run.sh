ONE=$(wc -l 1.log | cut -f1 -d ' ' )
TWO=$(wc -l 2.log | cut -f1 -d ' ' )
THREE=$(wc -l 3.log | cut -f1 -d ' ' )
FOUR=$(wc -l 4.log | cut -f1 -d ' ' )
FIVE=$(wc -l 5.log | cut -f1 -d ' ' )
SIX=$(wc -l 6.log | cut -f1 -d ' ' )
SEVEN=$(wc -l 7.log | cut -f1 -d ' ' )
EIGHT=$(wc -l 8.log | cut -f1 -d ' ' )
OT=$(wc -l opentuner_pass.log | cut -f1 -d ' ' )

echo "Before submission"
echo -n "Pass (1): "
echo $ONE

echo -n "Fail = (include Exitplt (4) + Actual Fail (2)): "
echo $TWO + $FOUR | bc 
echo -n "   (2): "
echo $TWO
echo -n "   (4): "
echo $FOUR

echo -n "Ignore (3) = Float (3): "
echo $THREE
echo -n "   (3): "
echo $THREE

TOTAL_B=$(echo $ONE + $TWO + $THREE + $FOUR | bc)
echo -n "Total: "
echo $TOTAL_B

echo 
echo "After submission"

echo -n "Fail (2) = Pass(7) + Fail (8): "
echo $SEVEN + $EIGHT    | bc
echo -n "   (7): "
echo $SEVEN
echo -n "       contain Opentuner Passes: "
echo $OT
echo -n "   (8): "
echo $EIGHT
echo
echo -n "Ignore (3) = Pass(6) + Fail (5): "
echo $SIX + $FIVE    | bc
echo -n "   (6): "
echo $SIX
echo -n "   (5): "
echo $FIVE
echo
echo -n "TOTAL Pass (1) + (7) + (6): "
echo $ONE + $SIX  + $SEVEN   | bc
echo -n "TOTAL Fail (5) + (8) + (4): "
echo $FIVE + $EIGHT + $FOUR | bc
echo 
TOTAL_A=$(echo $ONE + $SIX + $SEVEN + $FIVE  + $EIGHT + $FOUR| bc)
echo -n "Total: "
echo $TOTAL_A



## Determining 6
# cat docs/matchPass_2.log | parallel "grep -l \"movsd\" {}/mcsema/compd.log"  > docs/reported_stats/6_tmp.log

# clean up
# cat docs/reported_stats/6_tmp.log | parallel "echo {}; cd {}; make llstat; cd -" |& tee ~/Junk/log
# In R
# df <- read.table("~/Junk/log", header=FALSE, sep=",")
# new_df <- head(df[order(df$V2),], 622)
# write.csv(new_df, "docs/reported_stats/6.log")

## Determining 7
# ~/scripts-n-docs/scripts/perl/comparefiles.pl --file  docs/matchPass_2.log --file docs/reported_stats/6.log --show 0 > docs/reported_stats/7_tmp.log 
# cat docs/reported_stats/7_tmp.log | parallel "echo {}; cd {}; make llstat; cd -" |& tee ~/Junk/log
# clean up for "funcname,size" format
# In R
# df <- read.table("~/Junk/log", header=FALSE, sep=",")
# new_df <- head(df[order(df$V2),], 106)
# write.csv(new_df, "docs/reported_stats/7.log")
