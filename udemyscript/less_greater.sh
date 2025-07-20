#!/bin/bash 

# Create a script that will check if number is less 100 and then prints "less than 100" else prints "greater than 100" ?

num1=$1

if [ $num1 -lt 100 ]; then
	echo "number is less than 100"
else  
	echo "number is greater than 100" 
fi 


