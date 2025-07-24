#!/bin/bash 

# Write a script that will check if you are currently logged in as root user or not ?

read -p "Enter the username: " username

name=$(whoami) 

if [[ ${name} -eq ${username} ]]; then
	echo "Logged in as ${name}"
else
	echo "Logged in as ${name}" 
fi 
