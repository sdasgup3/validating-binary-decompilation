STATUS=$1
FILE=$2
SUITE=$3
grep $STATUS $FILE | sed -e "s/.*$SUITE\///g" | sed -e 's/:.*//g'
#grep $1 $2 | sed -e 's/.*toy-examples\///g' | sed -e 's/:.*//g'
#grep $1 $2 | sed -e 's/.*single-source-benchmark\///g' | sed -e 's/:.*//g'
#grep $1 $2 | sed -e 's/.*spec2006\///g' | sed -e 's/:.*//g'
