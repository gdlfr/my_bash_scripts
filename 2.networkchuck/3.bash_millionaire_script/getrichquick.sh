#!/bin/bash

echo "What is your name?"

read name

echo "How old are you?"

read age

#name=$1
#age=$2
 
#echo "Hello, $1, you are $2 years old."

echo "Hello, $name, you are $age yeras old."

sleep 2

echo "Calculating"
echo ".........."
sleep 1
echo "**........"
sleep 1
echo "****......"
sleep 1
echo "******...."
sleep 1
echo "********.."
sleep 1
echo "**********"

getrich=$((( $RANDOM % 14 ) + $age ))
# Integer between 1-15, not 0-32767
echo "You will be rich in $getrich"

