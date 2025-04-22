#!/bin/bash
while true; do
echo "=================="
echo "Number Checker  "
echo "=================="
read -p "Enter a number:" num
echo "Choose option:"
echo "Press 1 to check if number is even or odd "
echo "Press 2 to check if negative or positive "
echo "Press 3 to exit"
read -p "Enter your choice:" choice
case $choice in
1)
	if ((num%2==0)); then
	echo "$num is even number"
	else
	echo "$num is odd number"
	fi
;;
2)
	
	if ((num<0)); then
	echo "$num is negative number"
	elif ((num>0)); then
	echo "$num is positive number"
	else
	echo "$num is zero"
	fi
;;
3)
	echo "Exiting program..."
	break
;;
*)
	echo "Invalid choice! Please enter valid choice"
;;
	esac
done