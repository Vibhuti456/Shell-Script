#!/bin/bash

# Create a script that will check if number is divisible by 10 and then prints "divisible by 10" else prints "not divisible by 10"  ?

num=$1

if (( $num % 10 == 0 )) ; then
	echo "Divisible by 10"
else
	echo "not divisible by 10" 
fi 
