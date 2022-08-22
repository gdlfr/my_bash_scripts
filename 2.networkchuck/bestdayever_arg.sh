#!/bin/bash

name=$1
time_of_a_day=$2 #Midnight/Midday/Morning/Afternoon/Evening/Dawn/Dusk
#morning, day, evening

echo -e "Good $time_of_a_day, $name! \n"

sleep 1

echo -e "You now in $PWD directory \n"

sleep 1

echo -e  "it contains: \n"

ls -lsa

#echo -e "\n"

echo -e "Good luck, $name! :) \n"


user=$(whoami)
date=$(date)

echo "Also today is $date"
echo "Logged as $user"
