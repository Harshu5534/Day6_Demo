#!/bin/bash -x

read -p "Enter the number is: " Num;
Fact=1;

for(( i=2;i<=$Num;i++))
do
	Fact=$(( Fact * i ));
done
echo "Factorial Number is : "$Fact;
