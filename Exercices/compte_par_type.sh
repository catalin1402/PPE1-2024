#!/bin/bash

TYPE=$1
ANNEE=$2

if [ ! -d "$ANNEE/" ]
then
	echo "Le dossier $ANNEE n'existe pas"
	exit
fi

grep -E "$TYPE" $ANNEE/*.ann | wc -l