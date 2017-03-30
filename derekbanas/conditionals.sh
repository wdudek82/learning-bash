#!/usr/bin/env bash

read -p "Enter a number: " num

if (( $num > 0 && $num < 11 )); then
	echo "Num is between 1 and 10"
elif (( $num <= 0 )); then
	echo "Num is le 0"
elif (( $num >= 11 )); then
	echo "Num is ge 11"
fi
