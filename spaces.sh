#!/bin/bash 

df -h | awk 'NR>1 {print $5, " ", $1}' | while read output;
do 
	echo "Detail Disk: $output"
	usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
	#echo "${usage}"
	file_sys=$(echo $output | awk '{print $2}')
	#echo $usage
	if [ $usage -ge 90 ]; then
		echo "CRITICAL for $file_sys" 
	fi
done

