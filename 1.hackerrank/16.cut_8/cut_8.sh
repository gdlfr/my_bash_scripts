#!/bin/bash

#Given a sentence, identify and display its first three words. Assume that the space (' ') is the only delimiter between words.

cut -d' ' -f1,2,3

#or
#cut -d' ' -f1-3

#or
#while read x
#do
#    echo $x | cut -d ' ' -f1-3
#done
#exit 0
