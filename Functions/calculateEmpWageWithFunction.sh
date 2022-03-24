#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;

function getWorkingHour() {
	case $1 in

		$PRESENT)
			wHour=8;
		;;

		$PART_TIME)
			wHour=4;
		;;

		*)
			wHour=0;
		;;
	esac;

	echo $wHour;
}

TotalWorkingHour=0;

day=0;

while [[ $day -lt $MAX_WORKING_DAY && $TotalWorkigHour -lt $MAX_WORKING_HOUR ]]
do
	if [ $((TotalWorkingHour + 4)) -ge $MAX_WORKING_HOUR ]
	then
		isPresent=$PART_TIME;
	else
		isPresent=$((RANDOM%3));
	fi

	WorkingHour=$(getWorkingHour $isPresent );
	TotalWorkingHour=$((TotalWorkingHour+WorkingHour));
	((day++));
done

TotalSalary=$((TotalWorkingHour*WAGE_PER_HOUR));

echo "Employee monthly wage : $"$TotalSalary "USD";
echo "Total working hour : $TotalWorkingHour Hr";
echo "Total working day : $day";
