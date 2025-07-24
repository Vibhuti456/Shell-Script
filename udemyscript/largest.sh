#!/bin/bash

# Write a script that will return the 10 largest directories and file (in terms of size) in the "/var/log" directory ?

# du command 
# options -a to display all the directories and files 

directory=/var/log

largest=$(du -a ${directory} 2>/dev/null 2>/dev/null | sort -n -r | head -10) 

echo "${largest}"

