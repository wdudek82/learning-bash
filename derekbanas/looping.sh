#!/usr/bin/env bash

count=1

while [ $count -le 10 ]; do
	echo $count
	count=$((count + 1))
done

printf "\n"

while [ $count -le 20 ]; do
	if (( $count >= 15 )); then
		break;
	fi
	echo $count
	count=$((count + 1))
done

printf "\n"

while [ $count -ge 0 ]; do
	if (( ((count % 2)) == 0 )); then
		echo $count
	fi
	count=$((count - 1))
done

printf "\n"

while [ $count -le 20 ]; do 
	count=$((count + 1))
	if (( ((count % 2)) == 0  )); then
		echo "Countinuing..."
		continue
	fi
	echo $count
done

printf "\n"

until [ $count -lt 10  ]; do
	echo $count
	count=$((count - 1))
done

