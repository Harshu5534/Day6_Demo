#!/bin/bash -x

for (( n=0; n<=8; n++ ))
do
	echo $((2**n));
done
