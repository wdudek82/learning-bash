#!/usr/bin/env bash

if [ $# -lt 3 ]; then
    cat <<- EOM
    This command requires three arguments:
    username, userid, and favorite number.
EOM
else
    # the program goes here
    echo "Username: $1"
    echo "UserID: $2"
    echo "Favorite Number: $3"
fi


read -p "Favorite number? [1] " num
while [[ -z "$num" ]]; do
    num=1
done

echo "$num was selected"


read -p "What year? [yyyy] " year
while [[ ! $year =~ [0-9]{4} ]]; do
    read -p "A year, please! [yyyy] " year
done

echo "Year: $year"