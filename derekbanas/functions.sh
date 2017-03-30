#!/usr/bin/env bash

getDate(){
	date
	return
}

getDate

# global vs local variable
name="Wojtek"

demLocal(){
	local name="Neevor"
	return
}

demLocal
echo $name

getSum(){
	local num3=$1
	local num4=$2

	local sum=$((num3+num4))

	echo $sum
}

num1=5
num2=6

sum=$(getSum num1 num2)
echo "Sum: $sum"
echo $(getSum 5 10)


foo(){
	echo "bar"
}

foo
