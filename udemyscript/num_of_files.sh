#!/bin/bash

#Write a script that will ask user to input directory path and script will count total number of files in the given directory ?

location=$1
cd "${location}"
count=$(cd ${location} | ls -l | wc -l) 





echo "The count of total number of file in ${location} is: ${count}"


