#!/bin/bash

# Write a script that will take 2 command line arguments (numbers) from user and then print the sum on screen ?

num1=$1
num2=$2

function sum(){
	sum=$((num1 + num2))
	echo "${sum}"
}

sum
