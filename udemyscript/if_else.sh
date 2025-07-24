#!/bin/bash

# Write a script that will capture the current date and then prints "Less than 10" if current date is less than 10 or prints "Equals to 10" if current date is equal to 10 else prints "Greater than 10" if current date is greater than 10 ?

current_date=$(date | awk '{print $3}') 
echo "${current_date}" 



if [[ $current_date -lt 10 ]]; then
	echo "Less than 10" 
     if [[ $current_date -eq 10 ]]; then
	     echo "Equals to 10" 
     else 
	     echo "Not less and equal to 10" 
     fi 
else 
	echo "greater than 10" 
fi






