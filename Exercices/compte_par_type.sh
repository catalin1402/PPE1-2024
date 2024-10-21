#!/bin/bash

TYPE=$1
ANNEE=$2

if [ ! -d "$HOME/Cours/2024 - 2025/Semestre 1/Programmation et projet encadré/Seance 1/Exercice1/ann/$ANNEE/" ]
then
	echo "Le dossier $ANNEE n'existe pas"
	exit
fi

grep -E "$TYPE" ~/Cours/2024\ -\ 2025/Semestre\ 1/Programmation\ et\ projet\ encadré/Seance\ 1/Exercice1/ann/$ANNEE/*.ann | wc -l