#!/bin/bash
#set -x

SCRIPTDIR="`dirname \"$0\"`"

executeNPrint() {
  cmd=$1
  echo $cmd
  eval $cmd
}

selectPassSeq() {
  OUTDIR=$1

  ## Pass list reported during PLDI submission.
  NORM_PASS="-mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa  \
             -aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim \
             -simplifycfg -basicaa -aa -instcombine"

  ## More effective pass list derived after submission.
  NORM_PASS="-mem2reg -licm -gvn -early-cse -globalopt -simplifycfg -basicaa  \
             -aa -memdep -dse -deadargelim -libcalls-shrinkwrap -tailcallelim \
             -simplifycfg -basicaa -aa -instcombine -simplifycfg -early-cse   \
             -gvn -basicaa -aa -memdep -dse -memcpyopt"

  if [ -v NORM ]; then
    if [ "$NORM" != "CUSTOM" ]; then
      NORM_PASS="-${NORM}"
    fi
    return 0
  fi


  if [ -f ${OUTDIR}/normalizer_final_config.json ]; then
    NORM_PASS=`tail -n 1 ${OUTDIR}/normalizer_final_config.json`
  fi

  return 0 
}

compdOpt() {
  OUTDIR=$1
  PROG=$2

  selectPassSeq $OUTDIR
  executeNPrint "opt -S ${NORM_PASS} ${OUTDIR}test.proposed.inline.ll -o ${OUTDIR}test.proposed.opt.ll"

  if [ $? -ne 0 ]; then
    echo -e "\e[31mCompd Opt Fail\e[39m:-" `pwd`:$PROG  
    exit 1
  fi
}

mcsemaOpt() {
  OUTDIR=$1
  INDIR=$2
  PROG=$3

  selectPassSeq $OUTDIR
  executeNPrint "opt -S ${NORM_PASS} ${INDIR}test.mcsema.inline.ll -o ${OUTDIR}test.mcsema.opt.ll"

  if [ $? -ne 0 ]; then
    echo -e "\e[31mMcSema Opt Fail\e[39m:-" `pwd`:$PROG  
    exit 1
  fi
}

match() {
  OUTDIR=$1
  TOOLDIR=$2
  PROG=$3

  executeNPrint "( time ${TOOLDIR}/matcher --file1 ${OUTDIR}test.mcsema.opt.ll:${PROG} --file2 ${OUTDIR}test.proposed.opt.ll:${PROG} ) 1>${OUTDIR}match_mcsema_proposed.log 2>&1"
  executeNPrint "( time ${TOOLDIR}/matcher --file1 ${OUTDIR}test.proposed.opt.ll:${PROG} --file2 ${OUTDIR}test.mcsema.opt.ll:${PROG} )  1>${OUTDIR}match_proposed_mcsema.log 2>&1"
  ${SCRIPTDIR}/check_status.sh --msg ${PROG} --dir ${OUTDIR}  --match
}

shouldContinue() {
  # Return in NORM is defined.
  if [ -v NORM ]; then
    return 0
  fi

  if [ -f "${OUTDIR}/normalizer_final_config.json" ]; then
    return 1
  fi

  return 0
}

matchDriver() {
  OUTDIR=$1
  INDIR=$2
  TOOLDIR=$3
  PROG=$4
  
  while true
  do  
    compdOpt ${OUTDIR} ${PROG}
    mcsemaOpt ${OUTDIR} ${INDIR} ${PROG}
    match ${OUTDIR} ${TOOLDIR} ${PROG}
    matchstat=$?

    shouldContinue
    continue=$?


    if [ $continue -eq 0 ]; then
      exit $matchstat
    fi

    if [ $matchstat -eq 0 ]; then
      tail -n 1 ${OUTDIR}/normalizer_final_config.json > ${OUTDIR}/normalizer_final_config.json.tmp && mv ${OUTDIR}/normalizer_final_config.json.tmp ${OUTDIR}/normalizer_final_config.json
      exit 0
    fi

    sed -i '$d' ${OUTDIR}/normalizer_final_config.json
    if [ ! -s ${OUTDIR}/normalizer_final_config.json ]; then  
      rm -rf ${OUTDIR}/normalizer_final_config.json
    fi
  done
}

while [ "$1" != "" ]; do
    case $1 in
        --compd_opt )    shift
                         compdOpt $OUTDIR $PROG
                         ;;
        --mcsema_opt )   shift
                         mcsemaOpt $OUTDIR $INDIR $PROG
                         ;;
        --match )        shift
                         matchDriver $OUTDIR $INDIR $TOOLDIR $PROG
                         ;;
        --outdir )       shift
                         OUTDIR=$1
                         ;;
        --indir )        shift
                         INDIR=$1
                         ;;
        --tooldir )      shift
                         TOOLDIR=$1
                         ;;
        --prog )         shift
                         PROG=$1
                         ;;
        --help )         usage
                         exit 0
                         ;;
        * )              usage
                         exit 1
    esac
    shift
done

exit 0
