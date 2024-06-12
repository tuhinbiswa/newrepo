#!/bin/bash
if [-z "$1" ]; then
	echp "Usage: $0 directory_path"
	exit 1
fi

if [ ! -d "$1" ]; then
	echo "The provided path is not a directory"
	exit 1
fi

for file in "$1"/*; do
	if [-f "$file" ]; then
		chmod o=r "$file"
		echo "changed file to read-only for the users: $file"
	fi
done

echo "permissions updated for
