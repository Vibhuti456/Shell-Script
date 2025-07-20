# Write a script that will ask username and password from user and then using if condition verify if username="admin" and password="admin" , if condition meets then print "Login Success" else print "Wrong Login" ?

#!/bin/bash 

echo "Enter the username: " 
read username

echo "Enter your password: "
read -s password 

if [[ $username=="admin" && $password=="admin" ]]; then 
	echo "Login Success" 
else 
	echo "Wrong Login" 
fi 

