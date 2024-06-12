#!/bin/bash

if [-z "$!" ]; then
	echo "Usage: $0 filename"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "File not found in the current directory"
	exit 1
fi

echo "AAAAAAAA" >"$1"

echo "File contents have been changed to 'AAAAAAAA'."
