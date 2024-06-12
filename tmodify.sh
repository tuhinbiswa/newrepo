#!/bin/bash

for file in T*; do
	if [ -f "$file" ]; then
		chmod g+rwx "$file"
		echo "Changed group permisssions to rwx for $file"
	fi
done
