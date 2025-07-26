#!/bin/bash 

# Create a file named as "devops.txt" , then using vi editor insert 1..10 numbers like shown below
#1
#2
#.
#.
#10
#hen write a script to calculate sum of all numbers written inside devops.txt file ?

file=devops.txt

if [ -e $file ]; then
	echo "file exists"
else
	echo "file doesn't exists"
fi 

sum=0
while read num; do 
	sum=$((sum + num))
done < $file

echo $sum 
