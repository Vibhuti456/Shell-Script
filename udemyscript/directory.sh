#!/bin/bash

# Write a script that will create a directory with name "dummy" and then generate 10 empty files named like 1, 2 ... 10 in that dummy directory using for loop ?

directory=dummy
mkdir ${directory} 
echo "${directory} created" 
cd ${directory} 


name=$1
start_num=$2
end_num=$3

for (( i=$start_num ; i<=$end_num ; i++ ))
do   
	touch ${name}${i}.txt
	echo "files created" 

done


