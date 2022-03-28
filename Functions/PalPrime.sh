#!/bin/bash -x

echo "Enter the number : ";
read n;

function prime() {
	prime=$1;

	for((i=2; i<=$n/2; i++))
	do
		ans=$(( n%i ))
		if [ $ans -eq 0 ]
		then
			echo "n is not prime number.";
		fi
	done
	echo "$n is a prime number.";
}

function Palindrome() {
	number=$n;
	reverse=0;
	while [ $n -gt 0 ]
	do
		a=` expr $n % 10 `
		n=` expr $n / 10 `
		reverse=` expr $reverse \* 10 + $a `
	done
	echo $reverse
	if [ $number -eq $reverse ]
	then
		echo "Number is Palindrome. ";
	else
		echo "Number is not Palindrome. ";
	fi
}
r=` Palindrome $n `
echo "$r"

