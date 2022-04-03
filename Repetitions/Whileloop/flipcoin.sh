#!/bin/bash -x

HeadCount=0;
TailCount=o;

while [[ $HeadCount -ne 11 && $TailCount -ne 11 ]]
do
	Coin=$((RANDOM%2));
	if [ $Coin -eq 0 ]
	then
		echo "Head Wins";
		((HeadCount++));
	else
		echo "Tail Wins";
		((TailCount++));
	fi
done

echo "Head Won : $HeadCount Times";
echo "Tail Won : $TailCount Times";
