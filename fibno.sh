#!bin/bash

echo " Enter the number(n) to display fibonacci series : "
read n

a=1
while [ $a -eq 1 ];do
	if [[ $n =~ ^[0-9]+$ ]];then
		echo "OK"
		 ((a++))
	else
		echo "INVALID ENTRY. Please re-enter the number : "
		read n
		fi
done



fib[0]=1
fib[1]=1

for((i=2;i<=n-1;i++))  
do
	k=`expr $i - 1`
	j=`expr $i - 2`
        fib[$i]=`expr ${fib[$j]} + ${fib[$k]}`
done

if [ $n -eq 1 ]
then
	echo " '$n' values of Fibonacci series is : ${fib[0]}"
elif [ $n -eq 2 ];then
       echo " '$n' values of Fibonacci series is : ${fib[0]} ${fib[1]}"
else
       echo " '$n' values of Fibonacci is ${fib[@]}"
fi


        
