#!/usr/bin/env bash

read -p "How old are you: " age
case $age in
[0-4])
	echo "To young for school"
	;;

5)
	echo "Go to Kindergarten"
	;;

# 6 to 9 and 10 to 18
[6-9]|1[0-8])
	grade=$((age-5))
	echo "Go to grade $grade"
	;;

*)
	echo "You are to old for school"
	;;
esac
