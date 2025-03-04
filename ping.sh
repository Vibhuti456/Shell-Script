#!/bin/bash

ping "$1" 

if [ $? -eq 0 ]; then
	echo "Hurray!! Packacts are transferring successfully"
else
	echo "Oh no!!! It's a failure" 
fi
