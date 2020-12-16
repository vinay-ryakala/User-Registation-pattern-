#!/bin/bash 

read -p "Enter email to validate the Pattern " input
emailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"

if [[ $input =~ $emailPattern ]]
then
        echo "$input valid email"
else
        echo "$input Invalid email"
fi
