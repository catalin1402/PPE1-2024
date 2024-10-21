#!/bin/bash

echo "Annotations de lieux en 2016 :"
grep -E "Location" ~/Cours/2024\ -\ 2025/Semestre\ 1/Programmation\ et\ projet\ encadré/Seance\ 1/Exercice1/ann/2016/*.ann | wc -l
echo "Annotations de lieux en 2017 :"
grep -E "Location" ~/Cours/2024\ -\ 2025/Semestre\ 1/Programmation\ et\ projet\ encadré/Seance\ 1/Exercice1/ann/2017/*.ann | wc -l
echo "Annotations de lieux en 2018 :"
grep -E "Location" ~/Cours/2024\ -\ 2025/Semestre\ 1/Programmation\ et\ projet\ encadré/Seance\ 1/Exercice1/ann/2018/*.ann | wc -l