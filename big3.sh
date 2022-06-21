#!bin/bash

echo "To find biggest of the 3 numbers"
echo "Enter first number : "
read num1

i=1
while [ $i -eq 1 ]
do
    if [[ $num1 =~ ^[0-9]+$ ]];then
        echo "OK: Enter second number : "
        read num2
        ((i++))
else
        echo "Invaid Entry"
        echo "Please re-enter the first number : "
        read num1
fi
done

while [ $i -eq 2 ]
do
    if [[ $num2 =~ ^[0-9]+$ ]];then
        echo "OK: Enter third number : "
        read num3
        ((i++))
else
        echo "Invaid Entry"
        echo "Please re-enter the second number : "
        read num2
fi
done

while [ $i -eq 3 ]
do
    if [[ $num3 =~ ^[0-9]+$ ]];then
        echo -e "OK: \n"
        ((i++))
else
        echo "Invaid Entry"
        echo "Please re-enter the third number : "
        read num3
fi
done



if [ $num1 -eq $num2 ]
then
        if [ $num2 -eq $num3 ]; then
                echo "All numbers are equal "
                echo " $num1 is the biggest "
        elif [ $num1 -gt $num3 ]; then
                echo "First and second numbers are equal & $num1 is the biggest"
        else
                echo "$num3,the Third number is the biggest"
        fi
elif [ $num1 -eq $num3 ]; then
        if  [ $num1 -gt $num2 ]; then
                echo "First and third numbers are equal & $num1 is the biggest"
        else
                echo "$num2,the second number is the biggest"
        fi
elif [ $num2 -eq $num3 ]; then
        if  [ $num2 -gt $num1 ]; then
                echo "Second and third numbers are equal & $num2 is the biggest"
        else
                echo "$num1,the first number is the biggest"
        fi
elif [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]; then
        echo "$num1, the first number is the biggest"
elif [ $num2 -gt $num3 ]; then
        echo "$num2, the second number is the biggest"
else
        echo "$num3, the third number is the biggest"
fi


