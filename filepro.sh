#!/bin/bash

file_name="data.txt"
line_number=1

if [ -f "$file_name" ];then
	while IFS= read -r line; do
		echo "$line_number: $line"
		((line_number++))
	done < "$file_name"
else
	echo "ERROR: File '$file_name' not found."
fi
