#!/bin/bash

read -p "Enter number of files you want to create: " num
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
  echo "You have entered an invalid number"
  exit 1
fi

read -p "Enter a base name for files (e.g., report, log, files..etc): " base
read -p "Enter a file extension (without dot e.g., txt, sh, log..etc): " ext

folder="generated_files"
mkdir -p "$folder"

for ((i=1; i<=num; i++)); do
  filename="${folder}/${base}${i}.${ext}"
  if [[ -f "$filename" ]]; then
    echo "$filename already exists. Skipping"
  else
    touch "$filename"
    echo "$filename created"
  fi
done

echo "$num file(s) created with base name '$base' and extension '.$ext' in '$folder'"

read -p "Do you want to open the folder in File Explorer? (y/n): " choice

if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
  explorer.exe "$(pwd)/$folder"
fi
