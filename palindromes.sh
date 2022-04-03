#!/bin/bash -x

read -p "Enter the number : " n;

function palindrome
{
	x=0;
	reverse=0;
	number=$n;
	while [ $n -ne 0 ]
	do
		x=$(( $n % 10 ))
		reverse=$(( reverse*10+x ))
		n=$(( $n / 10 ))
	done
	echo $reverse
	if [ $number -eq $reverse ]
	then
		echo " Number is Palindrome. ";
	else
		echo " Number is not Palindrome. ";
	fi
}
Number=`palindrome $n`
echo " $Number "
