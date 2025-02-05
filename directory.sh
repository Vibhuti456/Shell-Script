#!/bin/bash

# This script is for creating the directory 

echo "Please give the necessary things to make a directory" 

directory=$1
start_num=$2
end_num=$3

# for loop for checking the conditions 

for (( i=${start_num} ; i<=${end_num} ; i++ )); 
do 
	# command for creating directories
	
	cd /home/ubuntu 
        mkdir ${directory}${i}
done 
        echo "Created directories" 




