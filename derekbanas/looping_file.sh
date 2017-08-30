#!/usr/bin/env bash

while read avg rbis hrs; do
	printf "Avg: ${avg}\nRBIs: ${rbis}\nHRs: ${hrs}\n\n"
done < barry_bonds.txt
