#!/bin/bash 

# Write a script that will print numbers 1 to 10 on screen using while loop ?

num=1

while [ $num -le 10 ]; 
do 
	echo $num
	num=$((num+1))
done

echo "done"

