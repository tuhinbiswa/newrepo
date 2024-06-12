#!/bin/bash
counter=19

while [ $counter -gt 0 ]; do
	echo $counter
	counter=$((counter-1))
done

echo "Boom!"
