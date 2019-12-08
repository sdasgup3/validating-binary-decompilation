export BIN_OPT=O0
export NORM=O3

cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log
cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match.log
cp docs/match.log docs/match_5.log

export BIN_OPT=O0
unset NORM
cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log
cat docs/compdPass_2.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
cat docs/compdPass_2.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match.log
cp docs/match.log docs/match_6.log
