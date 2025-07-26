#!/bin/bash 

#Write a script that will allow the user choose a color and shows a comment against that color (using case statement) ?

read -p "Enter the color you want: " color

case $color in
	Violet) 
		echo "You have choosen the Violet" 
		;;
	Red) 
		echo "You have choosen the Red" 
		;;
	White) 
		echo "You have choosen the White"
		;;
	Purple) 
		echo "You have choosen the Purple" 
		;;
	*) 
		echo "Nothing has choosen"
		;;

esac 

