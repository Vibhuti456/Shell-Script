#!/bin/bash 

# check username is provided 

if [ $# -eq 0 ]; then
	echo "error no username provided"
	exit 1
fi 

USER=$1
GROUP=$2

# check the user is already created
if id "${USER}"; then
       echo "user with this ${USER} name already exists" 
else 
	# Create the group if it doesn't exist
	if ! getent group "$GROUP" ; then
		echo "creating group ${GROUP}" 
		sudo groupadd "${GROUP}" 
	fi 

	#create a new user 
	sudo useradd -m "${USER}" 

	#add the new user into the group 
	sudo usermod -aG "${GROUP}" "${USER}"

	# Set a default password (optional, force change on first login)
        echo "$USER:ChangeMe123" | sudo chpasswd
        sudo passwd --expire "$USER"

	echo "✅ User '$USER' created successfully and added to group '$GROUP'."
        echo "ℹ️ Default password: ChangeMe123 (User must change it on first login)"

fi
              


