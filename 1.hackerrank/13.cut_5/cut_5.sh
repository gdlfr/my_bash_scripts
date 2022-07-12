#!/bin/bash

# Separate tab delimited file (.tsv) by printing the 1 three fields: 

while read line
do
cut -f-3 <<< "$line"
done

#or
#cut -f -3

#or
#while read -r x
#do
#    echo "$x" | cut -f1-3
#done
#exit 0
