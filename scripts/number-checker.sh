#!/bin/bash

read -p "Enter start number: " start
read -p "Enter end number: " end

# Input validation
if ! [[ "$start" =~ ^-?[0-9]+$ && "$end" =~ ^-?[0-9]+$ ]]; then
  echo "Please enter valid integers."
  exit 1
fi

if [ "$start" -gt "$end" ]; then
  echo "Start number should not be greater than end number."
  exit 1
fi

for (( i=start; i<=end; i++ )); do
  if [ $i -gt 0 ]; then
    echo "$i is positive"
  elif [ $i -lt 0 ]; then
    echo "$i is negative"
  else
    echo "$i is zero"
  fi
done
