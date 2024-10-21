#!/bin/bash

TYPE=$1
ANNEE=$2

grep -E "$TYPE" ~/Cours/2024\ -\ 2025/Semestre\ 1/Programmation\ et\ projet\ encadré/Seance\ 1/Exercice1/ann/$ANNEE/*.ann | wc -l