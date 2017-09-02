#!/usr/bin/env bash

echo "What is your name?"
echo ">"
read name

echo "What is your password?"
echo ">"
read -s passwd

read -p "What is your favorite animal? > " animal

echo name: $name, passwd: $passwd, animal: $animal