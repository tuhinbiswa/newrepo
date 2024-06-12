#!/bin/bash

while true; do
	echo "Menu "
	echo "1.Add"
	echo "2.Delete"
	echo "3.View"
	echo "4.Exit"
	read -p "Please select an option " choice

	case $choice in
		1)
			echo "you chose : ADD"
			;;
		2)
			echo "you chose : DELETE"
			;;
		3)
			echo "you chose : View"
			;;
		4)
			echo "EXIting, BYE BYE !!!"
			exit 0;
			;;
		*)
			echo "Invalid option. Please select again"
			;;
	esac
done
