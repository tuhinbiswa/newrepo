#!/bin/bash

show_menu() {
	echo "choose an option"
	echo "1)DIsplay content of a file"
	echo "2)Exit"
}
display_file() {
	read -p "Enter the filename: " filename
	if [ -f "$filename" ]; then
		echo "Displaying the content of $filename:"
		cat "$filename"
	else
		echo "File not found: $filename"
	fi
}
while true; do
	show_menu
	read -p "Enter your choice : " choice
	case $choice in
		1)
			display_file
			;;
		2)
			echo "Exiting, BYE!!!"
			break
			;;
		*)
			echo "Invalid option. Please try again."
			;;
	esac
done


