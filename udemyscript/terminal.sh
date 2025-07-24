#!/bin/bash


thershold=70

usage=$(df -h  | awk 'NR==3{print $5}' | tr -d '%')
echo "${usage}"

if [ "$usage" -gt "$thershold" ]; then
	echo "disk limit exceeds"
else 
	echo "disk is under control"
fi 



