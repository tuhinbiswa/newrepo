#!/bin/bash

# Check if directory argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Check if the directory exists
if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

# Directory to backup
SOURCE_DIR="$1"

# Specify the location to store the backup
BACKUP_DIR="/home/rps/ff"

# Create the backup filename with timestamp
BACKUP_FILENAME="backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# Create the backup
tar -czf "$BACKUP_DIR/$BACKUP_FILENAME" "$SOURCE_DIR"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $BACKUP_DIR/$BACKUP_FILENAME"
else
    echo "Error: Backup creation failed."
    exit 1
fi

