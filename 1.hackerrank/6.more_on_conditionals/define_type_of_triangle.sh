#!/bin/bash

echo "input A, B and C sides of tirangle. Each on new line"

read X
read Y
read Z

if [ $X == $Y ] && [ $Y == $Z ]; then
    echo 'EQUILATERAL'
elif [ $X == $Y ] || [ $X == $Z ] || [ $Y == $Z ]; then
    echo 'ISOSCELES' 
else
    echo 'SCALENE'
fi
