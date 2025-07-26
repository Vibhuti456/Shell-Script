#/bin/bash

#Write a script that will validate password strength. Here are few conditions that needs to be validated
#Minimum length to be 10 characters
#Must have both the Small and Upper case letters

read -p "Enter the password: " password

length=${#password}

echo "${length}"

if [[ $length -gt 10 ]]; then
    if echo "$password" | grep -q '[A-Z]' && echo "$password" | grep -q '[a-z]'; then
        echo "Password OK"
    else
        echo "Password must have small and upper characters"
    fi
else
    echo "Password must have more than 10 characters"
fi

