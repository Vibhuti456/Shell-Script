#!/bin/bash

#Create a script that will print "OK" if current hour is an even number ?

hour=$(date)

format=$(date | awk '{print $4}'| cut -c2)
echo "${format}"


if (( $format % 2 == 0 )); then
	echo "Even Hour"
        echo "Ok"	
else
	echo "Odd Hour"
	echo "Not Ok"
fi

