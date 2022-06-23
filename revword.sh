#!bin/bash

echo "Enter the  words which yo want to reverse: "
read -a wd
 
revword()
{
z=`echo "$1" | wc -c`


for((i=$z;i>0;i--))
do
	echo "$1"|cut -c"$i">>temp
	
done

rw=`tr -d "\n" <temp`
echo "Reverse of $1 is '$rw'" 
rm temp
}


for j in ${wd[@]}
do
	revword $j
done
