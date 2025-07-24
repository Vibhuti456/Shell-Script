#/bin/bash

read -p "Enter the file name" filename

if [ -z ${filename} ]; then
	echo "Error: File didn't provide by user" 
	exit 0 
fi 

while read line
do 
	echo ${line}>>${filename}
done

echo "Changes saved to $filename."
