#!/bin/bash 

PACKAGES=("git" "vim" "curl")

for package in "${PACKAGES[@]}" 
do 

        if dpkg -l | grep -qw "${package}" ; then 
	        echo "${package} is already installed"
	else
		echo "Installing ${package} in the process" 
		sudo apt-get install -y "${package}" 
		echo "${package} installed successfully"
	fi 
done




