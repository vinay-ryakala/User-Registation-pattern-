#!/bin/bash -x

#welcome to user registration

read -p "give first name" firstName

namePattern="^[A-Z]{1}[A-Za-z]{2,}$"

if [[ $firstName =~ $namePattern ]]
then
   echo " $firstName  is valid input"
else
   echo "$firstName is Invaild  Input "
fi
