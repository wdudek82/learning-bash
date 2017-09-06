#!/usr/bin/env bash

select option in "cat" "dog" "bird" "fish" "exit"
do
    case $option in
        exit) echo "Bye!"; break;;
        *) echo "You selected $option!";;
    esac
done
