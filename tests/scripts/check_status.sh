#!/bin/bash

usage()
{
    echo "Usage: check_status.sh [--compd|--match]"
}

compdCheck() {
  msg=$1
  if grep -qw "error\|Error" compd.log; then
    echo -e "\e[31mCompd Fail\e[39m:-" `pwd`:$msg
    exit 1
  fi

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
  if grep -q "Iso Match Found" match.log; then
    echo -e "\e[32mMatch Pass\e[39m:-" `pwd`:$msg
    sed -i -n -e '/Check for multiple matches/,$p' match.log
    exit 0
  elif grep -q "Iso Match NOT Found" match.log; then
    echo -e "\e[32mMatch Pass:multi-matches\e[39m:-" `pwd`:$msg
    sed -i -n -e '/Check for multiple matches/,$p' match.log
    exit 0
  else
    echo -e "\e[31mMatch Fail\e[39m:-" `pwd`:$msg
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
