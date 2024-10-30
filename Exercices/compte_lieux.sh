#!/bin/bash

ANNEE=$1
MOIS=$2
NOMBRE=$3

if [ ! -d "$ANNEE/" ]
then
	echo "Le dossier $ANNEE n'existe pas"
	exit
fi

if [ $MOIS -lt 0 ]
then
	echo "Le mois n'est pas valide"
	exit
fi

if [ $MOIS -gt 12 ]
then
	echo "Le mois n'est pas valide"
	exit
fi

if [ $NOMBRE -lt 0 ]
then
	echo "Le nombre n'est pas valide"
	exit
fi

grep -E "Location" $ANNEE/$ANNEE_$MOIS_*.ann | cut -f 3 | sort | uniq -c | sort -n | tail -n $NOMBRE