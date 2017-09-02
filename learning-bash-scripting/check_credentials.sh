#!/usr/bin/env bash

while getopts u:p:ab option; do
    case $option in
        u) user=$OPTARG;;
        p) pass=$OPTARG;;
        a) echo "Got the A flag";;
        b) echo "Got the B flag";;
        ?) echo "I don't know what $OPTARG is!";;
    esac
done

if [[ $user == "admin" && $pass == "admin12345" ]]; then
    echo "Success!"
else
    echo "Failed attempt to login"
fi

echo "User: $user / Pass: $pass"