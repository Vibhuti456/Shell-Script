#!/bin/bash 

# Write a script that will keep printing numbers from 1 to 10, if the number in loop is 2 then loop must break and shall not continue to print ?

for i in {1..10} 
do 
	echo $i
	if [[ $i -eq 2 ]]; then
		break
	fi 
done
