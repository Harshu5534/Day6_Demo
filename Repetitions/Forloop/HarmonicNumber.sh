#!/bin/bash -x
read -p "Enter a number: " num;

fv=1;

for (( i=1;i<=num;i++ ))
do
	value=`echo $fv $i | awk '{print $1/$2}'`;
	harm=`echo $harm $value | awk '{print $1+$2}'`;
done

echo "harmonic number is: " $harm;
