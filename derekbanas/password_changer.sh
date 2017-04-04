#!/usr/bin/env bash

npasswd1=""
npasswd2=1

while [ "$npasswd1" != "$npasswd2" ]; do
	read -sp "Enter new password: " npasswd1
	printf '\n'	
	read -sp "Enter new password again: " npasswd2
	printf '\n'
	printf '\n'
done
