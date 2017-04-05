#!/usr/bin/env bash

rand_str="A random string"

# String length
echo "String length: ${#rand_str}"

# String slice
echo "${rand_str:2}"
echo "${rand_str:2:7}"
# echo "${rand_str:}" 43:27
