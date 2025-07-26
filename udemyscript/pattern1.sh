#!/bin/bash 

# Write a script which will grep "error" in all the "*.log" files at /var/log directory, you need to make a copy of all the log files having "error" keyword in them and place the copy file at your current directory ?

pattern=$(grep -R --exclude-dir=dir "error" /var/log | awk '{print $1}' | sort | tee -a logs.txt /home/master/scripts) 
