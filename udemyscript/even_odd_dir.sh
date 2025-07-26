#!/bin/bash 

# Write a script that will create 2 directories named "odd" and "even", then write a for loop that will generate empty files in these 2 directories. If number is odd then file will be created in odd directory else inside even directory for eg: odd/1.txt, odd/3.txt , even/2.txt and so on till 20.txt ?

workdir=$(pwd)
mkdir -p even
mkdir -p odd

for ((i=1;i<=20;i++ ))
do 
	if (( $i%2==0 )); then
	       touch "$workdir/even/even${i}.txt"
	else
	       touch "$workdir/odd/odd${i}.txt"
	fi

done


