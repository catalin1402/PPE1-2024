#!/bin/bash

for ELEMENT in 2016 2017 2018
do
	echo "Annotations de lieux en $ELEMENT :"
	grep -E "Location" $ELEMENT/*.ann | wc -l
done