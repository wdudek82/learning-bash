#!/bin/bash

echo "Files in PWD ${PWD}:"

for FILE in ${PWD}/*; do
    echo "$FILE"
done

# *
