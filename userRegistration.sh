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
read -p "enter email" email
read -p "give mobile number" phone
read -p  "give pass word" Password

namePattern="^[A-Z]{1}[A-Za-z]{2,}$"
emailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,4})*$"
phonePattern="^[0-9]{2}[[:space:]][0-9]{10}$"
passwordPattern="^[A-Za-z0-9]{8,}$"
uppercasePattern="^[a-z0-9]*[A-Z]+[a-zA-Z0-9]*$"
numericPattern="^[a-zA-Z]*[0-9]+[a-zA-Z0-9]*$"
<<<<<<< HEAD

=======
>>>>>>> 43df327f2852bd5788553ff7843cb5d801019cac

pattern $firstName $namePattern
pattern $lastName $namePattern
pattern $email $emailPattern
pattern "$phone" $phonePattern


if [[ $Password =~ $uppercasePattern ]]
then
	if [[ $Password =~ $numericPattern ]]
	then
		pattern $Password $passwordPattern
	else
		echo "give atleast one number"
	fi
else
<<<<<<< HEAD
	echo "give atleast one uppercase"		

=======
	echo "give atleast one uppercase"	
>>>>>>> 43df327f2852bd5788553ff7843cb5d801019cac
fi
