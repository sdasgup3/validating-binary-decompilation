#!/bin/bash

usage()
{
    echo "Usage: check_status.sh [--compd|--match]"
}

genZ3Check() {
  msg=$1
  if grep -q "status == True" Output/test-z3.py; then
    echo -e "\e[32mGenZ3 Pass\e[39m:-" `pwd`:$msg
    exit 0
  else
    echo -e "\e[31mGenZ3 Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi
}

compdCheck() {
  msg=$1
  dir=$2
  if grep -qw "Error 1" $dir/compd.log; then
    echo -e "\e[31mCompd Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi

  if grep -q "Decompiling: Done" $dir/compd.log; then
    echo -e "\e[32mCompd Pass\e[39m:-" `pwd`:$msg
    exit 0
  else
    echo -e "\e[31mCompd Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi
}

tunerCheck() {
  msg=$1
  dir=$2

  if [ -f $dir/normalizer_final_config.json ]; then
    echo -e "\e[32mTuner Pass\e[39m:-" `pwd`:$msg
    exit 0
  else
    echo -e "\e[31mTuner Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi
}

matchCheck() {
  msg=$1
  dir=$2
  status_M2P=0  
  status_P2M=0  

  if grep -q "Iso Match Found" $dir/match_mcsema_proposed.log; then
    status_M2P=1
  elif grep -q "Iso Match NOT Found" $dir/match_mcsema_proposed.log; then
    status_M2P=2
  else 
    echo -e "\e[31mMatch Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi

  if grep -q "Iso Match Found" $dir/match_proposed_mcsema.log; then
    status_P2M=1
  elif grep -q "Iso Match NOT Found" $dir/match_proposed_mcsema.log; then
    status_P2M=2
  else 
    echo -e "\e[31mMatch Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi

  if [ $status_M2P -eq 1 ] && [ $status_M2P -eq 1 ]; then
    echo -e "\e[32mMatch Pass:both-exact-match\e[39m:-" `pwd`:$msg
    sed -i -n -e '/Check for multiple matches/,$p'  $dir/match_proposed_mcsema.log
    sed -i -n -e '/Check for multiple matches/,$p'  $dir/match_mcsema_proposed.log
    exit 0
  elif [ $status_M2P -eq 2 ]; then
    echo -e "\e[32mMatch Pass:m2p-multi-match\e[39m:-" `pwd`:$msg
    sed -i -n -e '/Check for multiple matches/,$p'  $dir/match_proposed_mcsema.log
    sed -i -n -e '/Check for multiple matches/,$p'  $dir/match_mcsema_proposed.log
    exit 0
  else 
    echo -e "\e[32mMatch Pass:p2m-multi-match\e[39m:-" `pwd`:$msg
    sed -i -n -e '/Check for multiple matches/,$p'  $dir/match_proposed_mcsema.log
    sed -i -n -e '/Check for multiple matches/,$p'  $dir/match_mcsema_proposed.log
    exit 0
  fi
}

lproveCheck() {
  msg=$1
  if grep -q "Success final states" Output/test-lspec.out; then
    echo -e "\e[32mLProve Pass\e[39m:-" `pwd`:$msg
    exit 0
  else
    echo -e "\e[31mLProve Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi
}

xproveCheck() {
  msg=$1
  if sed -ne '/SPEC FAILED/,$ p' Output/test-xspec.out | grep -q exit_0 ; then
    echo -e "\e[32mXProve Pass\e[39m:-" `pwd`:$msg
    exit 0
  else
    echo -e "\e[31mXProve Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi
}

kliCheck() {
  msg=$1
  if grep -q "exitCode ( 0 )" Output/test-lstate.out; then
    echo -e "\e[32mKli Pass\e[39m:-" `pwd`:$msg
    exit 0
  else
    echo -e "\e[31mKli Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi
}

fileSize() {
#wc -l < $1
  head -n 1 $1
}

aaInfoCheck() {
  f1=$1
  f2=$2
  size1=$(fileSize $f1)
  size2=$(fileSize $f2)
  echo "Matching $f1: " $size1 Vs  "$f2: " $size2
#if (( $(fileSize $f1) eq $(fileSize $f2) )); then
  if [ $size1 == $size2 ]; then
    echo -e "\e[32mKli Pass\e[39m:-" `pwd`:$msg
  else
    echo -e "\e[31mKli Fail\e[39m:-" `pwd`:$msg
  fi
  exit 0
}


while [ "$1" != "" ]; do
    case $1 in
        --tuner )        shift
                         tunerCheck $msg $dir
                         ;;
        --compd )        shift
                         compdCheck $msg $dir
                         ;;
        --aainfo )       shift
                         aaInfoCheck $1 $2
                         exit 0
                         ;;
        --match )        shift
                         matchCheck $msg $dir
                         ;;
        --lprove )       shift
                         lproveCheck $msg
                         ;;
        --xprove )       shift
                         xproveCheck $msg
                         ;;
        --genz3 )        shift
                         genZ3Check $msg
                         ;;
        --kli )          shift
                         kliCheck $msg
                         ;;
        --msg )          shift
                         msg=$1
                         ;;
        --dir )          shift
                         dir=$1
                         ;;
        --help )         usage
                         exit
                         ;;
        * )              usage
                         exit 1
    esac
    shift
done
