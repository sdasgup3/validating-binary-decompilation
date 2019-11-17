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
#  if grep -qw "error" compd.log; then
#    echo -e "\e[31mCompd Fail\e[39m:-" `pwd`:$msg
#    exit 1
#  fi

  if grep -q "Decompiling: Done" compd.log; then
    echo -e "\e[32mCompd Pass\e[39m:-" `pwd`:$msg
    exit 0
  else
    echo -e "\e[31mCompd Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi
}

matchCheck() {
  msg=$1

  if grep -q "Found exact, syntactic match" match.log; then
    echo -e "\e[32mMatch Pass\e[39m:-" `pwd`:$msg
    exit 0
  elif grep -q "Exhausted iterations" match.log; then
    echo -e "\e[31mMatch Fail:\e[39m:-" `pwd`:$msg
    exit 0
  else 
    echo -e "\e[31mMatch Error\e[39m:-" `pwd`:$msg
    exit 1
  fi
}

lproveCheck() {
  msg=$1
  if grep -q "Success final states" Output/test-lspec.out; then
    echo -e "\e[32mLProve Pass\e[39m:-" `pwd`:$msg
  else
    echo -e "\e[31mLProve Fail\e[39m:-" `pwd`:$msg
  fi
}

xproveCheck() {
  msg=$1
  if sed -ne '/SPEC FAILED/,$ p' Output/test-xspec.out | grep -q exit_0 ; then
    echo -e "\e[32mXProve Pass\e[39m:-" `pwd`:$msg
  else
    echo -e "\e[31mXProve Fail\e[39m:-" `pwd`:$msg
  fi
}

kliCheck() {
  msg=$1
  if grep -q "exitCode ( 0 )" Output/test-lstate.out; then
    echo -e "\e[32mKli Pass\e[39m:-" `pwd`:$msg
  else
    echo -e "\e[31mKli Fail\e[39m:-" `pwd`:$msg
  fi
}

while [ "$1" != "" ]; do
    case $1 in
        --compd )        shift
                         compdCheck $msg
                         ;;
        --match )        shift
                         matchCheck $msg
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
        --help )         usage
                         exit
                         ;;
        * )              usage
                         exit 1
    esac
    shift
done
