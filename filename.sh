#!/bin/bash 

FILENAME=$1

if [ -f $FILENAME ]; then
	echo "${FILENAME} is exists in the system" 
	cat ${FILENAME} 
else
	echo "${FILENAME} doesn't exists in the system" 
fi 
