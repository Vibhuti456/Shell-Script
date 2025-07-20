#/bin/bash

#Write a script that will ask 2 numbers from user and then prints the multiplication of given 2 numbers ?

read -p "enter the 1st number:"  num1
read -p "enter the 2nd number:"  num2

mul=$((num1*num2))
echo $mul
