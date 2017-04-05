#!/usr/bin/env bash

read -p "Validate Date: " date

pattern="^[0-9]{4}-[0-9]{2}-[0-9]{2}$"

if [[ $date =~ $pattern ]]; then
	echo "$date is valid"
else
	echo "$date not valid"
fi

read -p "Enter 2 numbers to sum: " num1 num2

sum=$((num1+num2))
echo "$num1 + $num2 = $sum"

# p - prompt, s - secret
npassword1=0
npassword2=1
while [ "$npassword1" != "$npassword2" ]; do
	read -sp "Enter new password: " npassword1
	read -sp "\nEnter new password again: " npassword2
done

