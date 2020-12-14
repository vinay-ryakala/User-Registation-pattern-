#!/bin/bash -x

#welcome to user registration

function pattern()
{
input=$1
patternCheck=$2

if [[ $input =~ $patternCheck ]]
then
   echo " $input  is valid input"
else
   echo "$input is Invaild  Input "
fi
}
read -p "give first name" firstName
read -p "give last name" lastName
read -p "emter email" email

namePattern="^[A-Z]{1}[A-Za-z]{2,}$"
emailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,4})*$"

pattern $firstName $namePattern
pattern $lastName $namePattern
pattern $email $emailPattern
