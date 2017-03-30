#!/usr/bin/env bash

read -p "What is your name? " name
echo "Hello $name!"

read -p "How old are you? " age

if [ $age -ge 16 ]; then
	echo "You can drive"
elif [ $age -eq 15 ]; then
	echo "You can drive next year"
else
	echo "you can't drive"
fi


read -p "Enter a number: " num

# comparison operators:
# eq ne le lt ge gt
if ((num == 10)); then
	echo "Your number equals 10"
fi

if ((num > 10)); then
	echo "It is greater then 10"
else
	echo "It is less then ten"
fi

if (( ((num % 2)) == 0 )); then
	echo "Num is even number"
else
	echo "Num is odd number"
fi

# logical operator:
# and &&
# or ||
# not !

if (( ((num > 0)) && ((num <= 11)) )); then
	echo "Num is between 1 and 11"
elif (( num < 0 )); then
	echo "Num is lesser than 0"
elif (( num > 11 )); then
	echo "Num is greater than 11"
fi
