#!/bin/bash

# Ask for input file
read -p "Enter the log file name: " logfile

# Check if the file exists
if [[ ! -f "$logfile" ]]; then
  echo "File not found!"
  exit 1
fi

# Ask for keyword
read -p "Enter the keyword to search (e.g., error): " keyword

# Ask how many lines to show
read -p "How many matching lines do you want to extract? " linecount

# Filter and save
grep "$keyword" "$logfile" | head -n "$linecount" > filtered_output.txt

echo "Filtered output saved to filtered_output.txt"
