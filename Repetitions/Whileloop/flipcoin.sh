#!/bin/bash -x

Result=0;

while [ $Result -lt 12 ]
do
	cnt=$((RANDOM%2))
	if [ $cnt -eq 1 ]
	then
		echo "Head";
	else
		echo "Tails";
	fi
	echo $Result;
	((Result++));

done

