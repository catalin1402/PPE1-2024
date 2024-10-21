#!/bin/bash

ANNEE=$1
MOIS=$2
NOMBRE=$3

grep -E "Location" ~/Cours/2024\ -\ 2025/Semestre\ 1/Programmation\ et\ projet\ encadré/Seance\ 1/Exercice1/ann/$ANNEE/$ANNEE_$MOIS_*.ann | cut -f 3 | sort | uniq -c | sort -n | tail -n $NOMBRE