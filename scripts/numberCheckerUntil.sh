#!/bin/bash
num=0
until [ "$num" -ge 10 ]
do
	read -p "Enter a number to check: " input
	if [[ "$input" =~ ^[0-9]+$ ]]; then
	num=$input
	else
	echo "Please enter a valid input."
	fi
done 
echo $num " is greater than and equal to 10."
