CP=$(wc -l docs/matchPass_2.log | cut -f1 -d ' ')
EXITPLT_ACTUALFAIL2=$(wc -l docs/exit_plt.log | cut -f1 -d ' ' )
STILLMOVSD=$(wc -l docs/still_movsd.log | cut -f1 -d ' ' )
ACTUALFAIL1=$(wc -l docs/actual_fail.log | cut -f1 -d ' ' )

echo -n "Total Pass: "
echo $CP

TOTALFAIL=$(echo $EXITPLT_ACTUALFAIL2 + $ACTUALFAIL1 | bc)
echo -n "Total Fail: "
echo $TOTALFAIL

echo -n "Still Ignore : "
echo $STILLMOVSD

echo -n "Total: "
echo $CP + $TOTALFAIL  + $STILLMOVSD  | bc
