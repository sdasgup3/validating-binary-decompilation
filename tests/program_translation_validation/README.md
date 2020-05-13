## Run Stats
| Test-suite  | Binary Opt Level | Graph Traits | Matcher | Normalizer | Pass/Fail | Comments | run ID |
|---|---|---|---|---|---|---|---|
|  toy-examples (88)|  -O0 |  Mem edges only | Naive | custom      | 81/7   |  | A.1 |
|                   |  -O0 |  Mem edges only | Naive | tuner       | 82/6   |  | A.2 |
|  single-source (3021)|  -O0 |  Mem edges only | Naive | O3     | \*2544/477 | 2555/507 with ssa edges| B.1|
|                      |  -O0 |  Mem edges only | Naive | custom | 2901/120 | 2791/271 with ssa edges|  B.2|
|  spec2006 (3870 partial)|  -O0 |  Mem edges only | Naive | O3 | \*2065/1805 | saved in matchPass\_1 | C.1 |
|                         |  -O0 |  Mem edges only | Naive | custom | 2262/1608 | saved in matchPass\_2 | C.2|

\*: not updated for a while

## Initial Setup (Required)
### Compd Cache Setup
Note: Unlike previously, compd cache is decoupled from
validating-binary-decompilation.  This minimizes the size of
validating-binary-decompilation repo and also alleviates  the need of mcsema
during single-instruction-validation (as all the decompiled artifacts of all
    possibly occuring instruction are already populated in the cache).
```
  cd <compd_dir>
  git clone https://github.com/sdasgup3/compd_cache.git
  export COMPD_CACHE=<comd_dir>
```

### Project Repo setup
In case validating-binary-decompilation  repository is checked-out at a local path other that `${HOME}/Github`, setup the `REPO` env variable as follows
```
export REPO_PATH=<path of the directory containing validating-binary-decompilation  repository>
```

### Binary-opt and normalizer setup
The binaries can be built with different optimization level (like O0, O2, O3) and similarly there are different choices of normalizers (O3 or custom). There are two env variables
`BIN_OPT` and `NORM` for the selection,  whose default values are `-O0` and `custom` resp. The usages of these variables are mentioned below (in Section `Commands for run IDs`).

### Typically NO need to generate binary/mcsema output/compd output
All the test directories (toy-examples, single-source, spec2006) are already prepopulated with binaries (using `make binary`), mcsema output (using `make mcsema`) and compd output (using `make compd`).
In typical case, you SHOULD NOT have to run those.
Only if needed, you may run the following pipeline
```
cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make binary; cd .." |& tee ~/Junk/log
cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make reloc_binary; cd .." |& tee ~/Junk/log
cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema; cd .." |& tee ~/Junk/log

cat docs/compdPass_N.log | parallel  " echo; echo {}; make -C {} compd" |& tee docs/compd.log
cat docs/compdPass_N.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match.log
```

## Check binary size (optional)
```
cat docs/matchFail_2.log | parallel "echo -n \"{}: \" ; sed '/Disassembling Done/q' {}/mcsema/compd.log | wc -l"
```


## Commands for run IDs
 - A.1
 ```
  export BIN_OPT=O0
  export NORM=CUSTOM


  cat docs/functionList.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match_1.log
  ../../scripts/triage.sh Pass  docs/match_1.log toy-examples &> docs/matchPass_1.log
  ../../scripts/triage.sh Fail  docs/match_1.log toy-examples &> docs/matchFail_1.log
 ```

 - A.2
 ```
  export BIN_OPT=O0
  unset NORM
  cat docs/functionList.log | parallel  " echo; echo {}; make -C {} tuner" |& tee docs/tuner.log
  cat docs/functionList.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match_2.log
  ../../scripts/triage.sh Pass  docs/match_2.log toy-examples &> docs/matchPass_2.log
  ../../scripts/triage.sh Fail  docs/match_2.log toy-examples &> docs/matchFail_2.log
 ```

 - B.1
 ```
  # export BIN_OPT=O0
  export NORM=O3

  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match_1.log
  ../../scripts/triage.sh Pass  docs/match_1.log  single-source-benchmark &> docs/matchPass_1.log
  ../../scripts/triage.sh Fail  docs/match_1.log  single-source-benchmark &> docs/matchFail_1.log
 ```

 - B.2
 ```
  # export BIN_OPT=O0
  unset NORM
  cat docs/matchPass_2.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match_2.log
  ../../scripts/triage.sh Pass  docs/match_2.log  single-source-benchmark &> docs/matchPass_2.log
  ../../scripts/triage.sh Fail  docs/match_2.log  single-source-benchmark &> docs/matchFail_2.log
 ```

 - C.1
 ```
  export BIN_OPT=O0
  export NORM=O3

  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log
  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
  cat docs/compdPass_1.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match_1.log
  matcher Pass/Fails are saved in matchPass/Fail\_1.log
 ```

 - C.2
 ```
  export BIN_OPT=O0
  unset NORM

  cat docs/filelist.txt | parallel   " echo; echo {}; cd {}; make mcsema_opt; cd .." |& tee ~/Junk/log
  cat docs/matchFail_2.log | parallel  " echo; echo {}; make -C {} compd_opt" |& tee docs/opt.log
  cat docs/matchFail_2.log | parallel  " echo; echo {}; make -C {} match" |& tee docs/match_2.log
  ../../scripts/triage.sh Pass  docs/match_2.log  spec2006 &> docs/matchPass_2.log
  ../../scripts/triage.sh Fail  docs/match_2.log  spec2006 &> docs/matchFail_2.log
 ```
