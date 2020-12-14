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

namePattern="^[A-Z]{1}[A-Za-z]{2,}$"

pattern $firstName $namePattern
pattern $lastName $namePattern
