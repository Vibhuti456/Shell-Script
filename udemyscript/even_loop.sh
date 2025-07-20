#!/bin/bash

#Write a script that will keep printing even numbers between 1 to 100 ?

num=1

while [ $num -le 100 ]; 
do
      if (( $num % 2 == 0 )); then
                echo $num
      fi 
      ((num++))
done

       	      
