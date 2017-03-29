#!/bin/bash

for VAR in $*; do
    echo "$VAR";
done

VAR=10
while [ $VAR -gt 0 ]; do
    echo "Count down: $VAR";
    VAR=$(($VAR - 1));
done

# break
# continue

VAR=10
until [ $VAR -gt 25 ]; do
    echo "Until: $VAR";
    VAR=$(($VAR + 1));
done
