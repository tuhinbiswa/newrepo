#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 directory_path"
	exit 1
fi

if [! -d "$1" ]; then
	echo "Provided path is not a directory"
	exit 1
fi

traverse_directory() {
	local dir=$1
	for entry in "$dir"/*; do
		if [ -d "$entry" ]; then
			traverse_directory "$entry"
		elif [ -f "$entry" ]; then
			filesize=$(stat -c%s "$entry")
			echo "File: $entry, Size: $filesize bytes"
		fi
	done
}

traverse_directory "$1";
