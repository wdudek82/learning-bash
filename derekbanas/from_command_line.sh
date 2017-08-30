#!/usr/bin/env bash

# $0 - path to executed script

echo "1st Argument: $1"

sum=0

while [[ $# -gt 0 ]]; do
	num=$1
	sum=$((sum + num))

	# moves 2nd argument ($2) to 1st ($1) possition
	shift
done

echo "Sum: $sum"
