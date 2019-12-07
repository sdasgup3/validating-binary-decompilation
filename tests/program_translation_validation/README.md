## Run Stats
| Test-suite  | Binary Opt Level | Graph Traits | Matcher | Normalizer | Pass/Fail | Comments | run ID |
|---|---|---|---|---|---|---|---|
|  toy-examples (90)|  -O0 |  SSA edges only | Naive | O3       | 77/13   | | 1 |
|  toy-examples|  -O0 |  SSA edges only | Naive | custom        | 80/10   | | 2 |

|  toy-examples (78)|  -O3 |  SSA edges only | Naive | O3 | 63/15 | 3 extra passes failing in 1 | 3 |
|  toy-examples|  -O3 |  SSA edges only | Naive | custom  | 62/16 | | 4 |

|  single-source (2538)|  -O0 |  SSA edges only | Naive | O3     | 2331| | 5|
|  single-source       |  -O0 |  SSA edges only | Naive | custom | 2379| | 6 |

|  single-source|  -O3 |  SSA edges only | Naive | O3 | | | |
|  single-source|  -O3 |  SSA edges only | Naive | custom | | | |

|  spec2006|  -O0 |  SSA edges only | Naive | O3 | | | 7 |
|  spec2006|  -O0 |  SSA edges only | Naive | custom | | | |

|  spec2006|  -O3 |  SSA edges only | Naive | O3 | | | |
|  spec2006|  -O3 |  SSA edges only | Naive | custom | | | |


### Commands for run IDs
 -  Setup Cache
 ```
  export COMPD_CACHE=/home/ubuntu/Junk/compd_cache/
 ```

 - 1
 ```
  export BIN_OPT=O0
  export NORM=O3

  # Common Code
  export REPO_PATH=${HOME}/Github/
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make binary; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make reloc_binary; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log

  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} compd" |& tee docs/compd.log
  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match.log
  cp docs/match.log docs/match_1.log
 ```

 - 2
 ```
  export BIN_OPT=O0
  unset NORM
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log
  cat docs/compdPass_2.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
  cat docs/compdPass_2.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match.log
  cp docs/match.log docs/match_2.log
 ```

 - 3
 ```
  export BIN_OPT=O3
  export NORM=O3

  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make binary; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make reloc_binary; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log

  cat docs/compdPass_3.log | parallel  " echo; echo {}; make -C {} compd" |& tee docs/compd.log
  cat docs/compdPass_3.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
  cat docs/compdPass_3.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match.log
  cp docs/match.log docs/match_3.log
 ```

 - 4
 ```
  export BIN_OPT=O3
  unset NORM
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log
  cat docs/compdPass_4.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
  cat docs/compdPass_4.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match.log
  cp docs/match.log docs/match_4.log
 ```

  - 5
 ```
  export BIN_OPT=O0
  export NORM=O3

  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make binary; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make reloc_binary; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log

  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} compd" |& tee docs/compd.log
  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match.log
  cp docs/match.log docs/match_5.log
 ```
  - 6
 ```
  export BIN_OPT=O0
  unset NORM
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log
  cat docs/compdPass_2.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
  cat docs/compdPass_2.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match.log
  cp docs/match.log docs/match_6.log
 ```

  - 7
 ```
  export BIN_OPT=O0
  export NORM=O3

  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make binary; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make reloc_binary; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema; cd .." |& tee ~/Junk/log
  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log

  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} compd" |& tee docs/compd.log
  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match.log
  cp docs/match.log docs/match_5.log
