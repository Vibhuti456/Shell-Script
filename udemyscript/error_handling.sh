#!/bin/bash 

# Write a script that will take 2 command line arguments (numbers) from user and then print the sum on screen, if user don’t input 2 numbers as argument, then display an error message ?

num1=$1
num2=$2

if [[ $# -eq 0 ]]; then
	echo "No agrument has given"
	exit 1
else
	function sum(){
	sum=$((num1 + num2))
	echo "${sum}"
}
fi 

sum
