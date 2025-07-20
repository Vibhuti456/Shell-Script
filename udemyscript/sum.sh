#!/bin/bash

#Write a script that will ask 2 numbers from user and then prints the sum of given 2 numbers ?

read -p "enter 1st number: " num1
read -p "enter 2nd number: " num2 

sum=$((num1+num2))
echo "$sum" 

