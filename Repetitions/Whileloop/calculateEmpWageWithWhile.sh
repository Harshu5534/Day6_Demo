#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;
TotalWorkingHour=0;

day=0;
while [[ $day -lt $MAX_WORKING_DAY && $TotalWorkingHour -lt $MAX_WORKING_HOUR ]]
do
	if [ $((TotalWorkingHour + 4)) -ge $MAX_WORKING_HOUR ]
	then
		isPresent=$PART_TIME;
	else
		isPresent=$((RANDOM%3));
	fi
	case $isPresent in

		$PRESENT)
			workingHour=8;
		;;

		$PART_TIME)
			workingHour=4;
		;;

		*)
			workingHour=0;
		;;
	esac;

	TotalWorkingHour=$((TotalWorkingHour+workingHour));
	((day++));
done

TotalSalary=$((TotalWorkingHour*WAGE_PER_HOUR));

echo "Employee monthly wage : $"$TotalSalary "USD";
echo "Total working hour : $TotalWorkingHour Hr";
echo "Total working day : $day";
