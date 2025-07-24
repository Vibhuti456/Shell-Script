#/bin/bash 

#Write a script which will print substring "like bash" from the given string "I like bash scripting" ?


print=$(echo "I like bash scripting" | cut -c2-11) 

echo "${print}" 

