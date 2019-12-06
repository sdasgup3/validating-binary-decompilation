grep $1 $2 | sed -e 's/.*toy-examples\///g' | sed -e 's/:.*//g'
