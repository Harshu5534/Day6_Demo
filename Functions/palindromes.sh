#!/bin/bash -x

echo "Enter the number : ";
read n;

function palindrome
{
	number=$n;
	reverse=0;
	while [ $n -gt 0 ]
	do
		a=($n%10);
		n=($n/10);
		reverse=($reverse \* 10 + $a );
	done
	echo $reverse
	if [ $number -eq $reverse ]
	then
		echo " Number is Palindrome ";
	else
		echo " Number is not Palindrome ";
	fi
}
B=( palindrome $n )
echo " $B "
