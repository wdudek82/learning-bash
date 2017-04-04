#!/usr/bin/env bash

str1=""
str2="Sad"
str3="Happy"

if [ "$str1" ]; then
	echo "String is empty!"
fi

if [ -z "$str1" ]; then
	echo "str1 has no value"
fi

if [ "$str2" == "$str3" ]; then
	echo "$str2 equals $str3"
elif [ "$str2" != "$str3" ]; then
	echo "$str2 is not equal to $str3"
fi

if [ "$str2" > "$str3" ]; then
	echo "$str2 is greater then $str3"
elif [ "$str2" < "$str3" ]; then
	echo "$str2 is less then $str3"
fi
