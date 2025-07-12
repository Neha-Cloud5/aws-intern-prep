#!/bin/bash

read -p "Enter folder to back up: " source
read -p "Enter backup destination folder: " dest

# Check if source exists
if [ ! -d "$source" ]; then
  echo "Source folder does not exist!"
  exit 1
fi

# Check if destination exists, if not, create it
if [ ! -d "$dest" ]; then
  echo "Destination does not exist. Creating..."
  mkdir -p "$dest"
fi

# Generate backup file name with timestamp
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
folder_name=$(basename "$source")
backup_file="${dest}/${folder_name}_backup_${timestamp}.tar.gz"

# Create the tar archive
tar -czf "$backup_file" "$source"

echo "Backup created: $backup_file"
