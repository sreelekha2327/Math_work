#!bin/bash

echo "Enter the numbers that to be added : "
read -a num

n=${#num[@]}
sum=0
for((i=0;i<$n;i++)) 
do
sum=`expr ${num[i]} + $sum`
done

echo " Sum of all the numbers is '$sum' "
