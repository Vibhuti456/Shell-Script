#!/bin/bash

#Write a bash script which will fulfill the below requirements:
#Create new directory if not exists /root/Users_Login_Data/ from within the script.
#capture the current logged in users data [ Username , Login Date and Time , IP Address of User Machine ] only in a file under the /root/Users_Login_Data/ directory.
#The Script must be triggered every minute from Crontab and new file must be created every minute under the  /root/Users_Login_Data/ directory, Keep your file names as Users_Month-Date-Year-Hour-Minute.txt
#So the script will keep on generating txt files under /root/Users_Login_Data/ directory every minute.


dir=/root/User_Login_Data/

if [ ! -d ${dir} ]; then
	echo "File doesn't exists"
	mkdir -p ${dir}
fi 

DATE=$(date +%Y-%m-%d-%H-%S-%M) 

user_dir=$(who| awk '{print $1,$3,$4,$5}' | tee -a ${dir}/Users_${DATE}.txt)







