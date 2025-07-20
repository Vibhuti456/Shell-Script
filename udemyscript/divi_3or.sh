#!/bin/bash

# Write a script that will ask a number from user and then using if condition verify if number is divisible by 3 or 5 (any one) , if condition meets then print "Divisible" else print "Not Divisible" ?

read -p "Enter the first number" num1

if (( $num1 % 3 == 0 || $num1 % 5 == 0 )); then
        echo "Divisible"
else
        echo "Not divisible"
fi
