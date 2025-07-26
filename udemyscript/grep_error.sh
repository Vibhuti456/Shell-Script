#!/bin/bash 

# Write a script which will grep "error" in all the "*.log" files at /var/log directory, you need to print the unique file names which are having "error" string in them and remove duplicate file names from output ?

print=$(grep -R --exclude-dir=dir "error" /var/log | awk -F: '{print $1}' | sort | uniq) 

echo "${print}"
