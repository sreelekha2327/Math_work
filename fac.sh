#!bin/bash

factorial()
{
n=$1
facto=1
for((i=1;i<=$n;i++))
do
	facto=`expr $facto \* $i`
done
echo "Factorial of $n is : $facto"
}


echo " Enter the numbers for which you want to find factorial : "
read -a fact
l=${#fact[@]}
echo "${fact[@]}"

for((j=0;j<l;j++))
do
	factorial ${fact[$j]}
done


