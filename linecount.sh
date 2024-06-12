#!/bin/bash

count_lines(){
local filename="$1"

if[ -f "$filename" ]; then
	local line_count=$(wc -1 < "$filename")
	echo "The file '$filename' has $line_count lines."
else
	echo "File '$filename' not found."
fi
}
