#!/bin/bash -x

function degCTodegF() {
	degC=$1;

	if [[ $degC -gt 0 && $degC -lt 100 ]]
	then
		Div95=`echo 9 5 | awk '{ print $1/$2 }'`;
		Mul=`echo $degC $Div95 | awk '{ print $1*$2 }'`;
		degF=`echo $Mul 32 | awk '{ print $1+$2 }'`;
		echo $degF;
	else
		echo "Temprature is not within freezing point";
	fi
}

function degFTodegC() {
	degF=$1;

	if [[ $degF -gt 32 && $degF -lt 212 ]]
	then
		Div=`echo 5 9 | awk '{ print $1/$2 }'`;
		Sub=`echo $degF 32 | awk '{ print $1-$2 }'`;
		degC=`echo $Sub $Div | awk '{ print $1*$2 }'`;
		echo $degC;
	else
		echo "Temprature is not within freezing point";
	fi
}

echo "What conversion you want to do?";

echo "1. degC To degF";
echo "2. degF To degC";

read -p "select the conversion : " selection;

case $selection in
        1)
                read -p "Enter the temperature in celcius : " degC;
                degF=$( degCTodegF $degC );
        ;;

        2)
                read -p "Enter the temperature in fahrenheit : " degF;
                degC=$( degFTodegC $degF );
        ;;

esac

