#!/bin/bash

number=-1

while [ $number -le 0 ]; do
	read -p "Please emter a positive number:  " number
	if ! [[ $number =~ ^[0-9]+$ ]]; then
		echo "Invalid Input. Please enter a numeric value."
		number=-1
	elif [ $number -eq 0 ]; then
		echo "The number must be than 0(zero)"
	elif [ $number -lt 0]; then
		echo "The number must be positive"
	fi
done

echo "Thank You! YOU entered positive number : $number"
