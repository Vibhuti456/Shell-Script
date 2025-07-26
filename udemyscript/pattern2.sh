#!/bin/bash 

#Write a script to copy all .log files from /var/log to /tmp direcory. Once all files copied to /tmp directory, replace all the "error" keyword with "Warning" keyword in all .log files at /tmp directory ?


cp /var/log/*.log /tmp/

ls /tmp/*.log | while read line ; do

sed -i 's/error/Warning/g' $line

done
