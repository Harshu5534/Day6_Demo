#!/bin/bash -x
cnt=0;
while [ $cnt -lt 9 ]
do
	echo $((2**cnt));
	((cnt++));
done

