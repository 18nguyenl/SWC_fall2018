#!/bin/bash
# usage MyFirstScript_Good.sh input comparison year size

input=$1
comparison=$2
year=$3 
size=$4

cut -f1,3,$comparison $input | grep -v lifeExp | grep $year| sort -n -k3 | head -n$size > Country_HighestLifeExp.txt