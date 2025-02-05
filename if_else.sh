#!/bin/bash 

username=$1
#password=$2 

#read -p "Enter the username" username 
#read -p "Enter the password" password

if [ $? -eq 0 ];  then

	sudo useradd ${username}
	sudo passwd ${username} 

	echo "Congrats!!!, user and password has been created" 
else
	echo "Creation of user and password has failed, Try again!!"

fi 



