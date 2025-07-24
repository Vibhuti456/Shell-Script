#/bin/bash 

#Write a script that will have a function named as "area" that will take two parameters within the script to calculate the area of rectangle ?

width=$1 
length=$2

function area(){
	area=$((width * length))
	echo $area

}
 
area
