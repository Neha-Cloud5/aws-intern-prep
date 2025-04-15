#!/bin/bash
while true
do
clear
echo ""
echo "Choose an option"
echo "1 Print Date"
echo "2 List Files"
echo "3 Print currect directory of user"
echo "4 Exit"
echo -n "Enter your choice:"
read choice
case $choice in
1)
echo "Today's date is "$(date)
;;
2)
echo "List of files" 
ls -lah
;;
3)
echo "Current Directory is " $(pwd)
;;
4)
echo "Exit the program"
break
;;
*)
echo "Enter valid input"
;;
esac
read -p "Press Enter to continue..."
done

