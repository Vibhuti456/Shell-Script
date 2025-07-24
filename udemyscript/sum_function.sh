#!/bin/bash 

# Write a script in which we must a function named as sum, which will be triggered to calculate the sum of 2 numbers provided by user at runtime ?

num1=$1
num2=$2

function sum(){
	sum=$((num1+num2))
	echo "The sum of two number is:" ${sum} 
}

sum 

