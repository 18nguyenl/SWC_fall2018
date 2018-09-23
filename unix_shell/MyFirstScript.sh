#!/bin/bash
# usage: MyFirstScript.sh input year
# Takes gapminder and finds country with highest life expectancy in 2002

input=$1
year=$2 

cut -f1,3,4 $input Data/gapminder.txt | grep -v lifeExp | grep $year| sort -n -k3 | tail -n1 > Country_HighestLifeExp.txt
