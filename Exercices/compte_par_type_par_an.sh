#!/bin/bash

TYPE=$1
ANNEE="2016"

if [[ -z "$TYPE" ]]
then
	echo "Vous n'avez pas entré de type"
	exit
fi

echo "Annotations de $TYPE en $ANNEE :"
./compte_par_type.sh $TYPE $ANNEE

ANNEE="2017"

echo "Annotations de $TYPE en $ANNEE :"
./compte_par_type.sh $TYPE $ANNEE

ANNEE="2018"

echo "Annotations de $TYPE en $ANNEE :"
./compte_par_type.sh $TYPE $ANNEE