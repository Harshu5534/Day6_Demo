#!/bin/bash -x

cnt=0;

while [ $cnt -lt 5 ]
do
	echo $cnt;
	((cnt++));
done
