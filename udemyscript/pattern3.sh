#!/bin/bash

#Write a script that will display 2 Columns (Mounted and Used%) , mount name and disk usage percentage in sorted order from low used % to high % ?

usage=$(df -k | awk '{print $6,$5}' | sort -k2 -n | grep -v Use%) 
echo "${usage}"


