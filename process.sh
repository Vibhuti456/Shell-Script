#!/bin/bash 

echo "These all are the processes running on your Linux system"

ps -aux

read -p "Please write what process you need to find all of the processes: " process

ps -aux | grep ${process} | awk '{print $2}' 

if [ $? -eq 0 ]; then
	echo "You got the process, you have searched"

else
	echo "Please give again process name, We couldn't find Sorry!!!" 
fi 
