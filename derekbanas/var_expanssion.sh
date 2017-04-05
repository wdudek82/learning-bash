#!/usr/bin/env bash

name="Wojtek"
echo "${name}'s"

samp_string="The dog climbed the tree"
echo "${samp_string//dog/cat}"

echo "I am ${name1:-Derek}"
echo "I am ${name1:=Derek}"
