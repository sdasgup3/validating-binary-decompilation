#!/bin/bash

if [ "$#" -ne 2 ];  then
    echo "$0 requires base and destination argument"
    exit 1
fi

replace='s/Github/'"${2//\//\\\/}"'/g'
echo "$replace"

find $1 -name Makefile | xargs sed -i ${replace}
