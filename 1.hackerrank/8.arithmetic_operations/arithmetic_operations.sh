#!/bin/bash

echo 'echo "5+5"'
echo "5+5"
#5+5
echo 'echo "5+5" | bc'
echo "5+5"| bc
#10
echo 'echo "5+5"| bc -l'i
echo "5+5"| bc -l
#10
echo 'echo "5+5.2"| bc -l'
echo "5+5.2"| bc -l
#10.2
echo 'echo "5+5.2"| bc'
echo "5+5.2"| bc
#10.2
echo 'echo "3/4"| bc'
echo "3/4"| bc
#0
echo 'echo "3/4"| bc -l'
echo "3/4"| bc -l
#.75000000000000000000 
echo 'echo $((3+3))'
echo $((3+3))
#6

echo " "

echo 'echo "scale =2; 10 * 100 / 30"'
echo "scale = 2; 10 * 100 / 30" | bc
#33.33
echo 'echo "scale = 2; 10 / 30 * 100"'
echo "scale = 2; 10 / 30 * 100" | bc
#33.00
echo 'echo "scale = 2; (10 / 30) * 100"'
echo "scale = 2; (10 / 30) * 100" | bc
#33.00

echo " "

echo 'echo $(expr 5 + 5)'
echo $(echo 5 + 5)
#10
echo 'echo $(expr 5 - 5 + 2 )'
echo $(expr 5 - 5 + 2 )
#2
echo 'echo $(expr 5 - 5 + 2 / 3 )'
echo $(echo 5 - 5 + 2 / 3 )
#0
echo 'echo $(expr 5 - 5 + 2 / 1 )'
echo $(echo 5 - 5 + 2 / 1 )
#2

echo ' '
echo "End of examples"

echo ' '
echo "'Please, input something like: '5+50*3/20 + (19*2)/7'"
read input
#printf "%.3f\n" `echo "$input" | bc -l`
echo " "
echo "Result is:"
echo $input | bc -l | xargs printf "%.3f\n"
