#!/bin/bash

for ELEMENT in 2016 2017 2018
do
	echo "Annotations de lieux en $ELEMENT :"
	grep -E "Location" ~/Cours/2024\ -\ 2025/Semestre\ 1/Programmation\ et\ projet\ encadré/Seance\ 1/Exercice1/ann/$ELEMENT/*.ann | wc -l
done