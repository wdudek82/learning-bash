#!/usr/bin/env bash

# touch samp_file && vim samp_file

if [ -d samp_dir ]; then
	echo "samp_dir exist"
	echo "deleting..."
	rmdir	samp_dir
	echo "done!"
else
	echo "samp_dir does not exist"
	echo "creating..."
	mkdir samp_dir
	echo "done!"
fi

# shorter syntax:
[ -d samp_dir_2 ] || mkdir samp_dir_2
