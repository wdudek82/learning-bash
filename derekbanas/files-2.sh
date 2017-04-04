#!/usr/bin/env bash

file1="./test_file1"
file2="./test_file2"

if [ -e "$file1" ]; then
	echo "File $file1 exists"
fi

if [ -e "$file2" ]; then
	echo "File $file2 exists"
else
	echo "File $file2 does not exists"
fi

[ -e "$file1" ] && echo "$file1 exists" || echo "File $file1 does not exists"
[ -e "$file2" ] && echo "$file2 exists" || echo "File $file2 does not exists"

