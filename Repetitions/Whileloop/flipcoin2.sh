#!/bin/bash -x
HEAD_Count=0
TAIL_Count=0
COIN=0;

while [[ COIN -lt 11 ]]
do
	if [ $COIN -eq 1 ]
	then
		COIN=$((RANDOM%2))
	fi
	case $COIN in

		$HEAD_COUNT)
			echo "HEAD"
		;;

		$TAIL_Count)
			echo "TAIL"
		;;
	esac;

	((COIN++));
done
