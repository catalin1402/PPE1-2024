#!/usr/bin/env bash

if [ $# -ne 1 ]
then
	echo "$0 prend un argument exactement"
	exit 1
fi

fichier=$1
n=1

while read -r line
do
	code=$(curl -o /dev/null -s -w "%{http_code}" "${line}")
	encodage=$(curl -s -I "$line" | grep "charset" | cut -d "=" -f2 | tr -d "\r\n")
	mots=$(curl -s "${line}" | wc -w)
	echo -e "${n}\t${line}\t${code}\t${encodage}\t${mots}"
	n=$((n+1))
done < "$fichier"
