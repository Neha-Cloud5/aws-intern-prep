#!/bin/bash
i=0
while [ $i -le 2 ]
do 
	echo "Number: "$i
	((i++))
done
while :
do
	echo "Press <Ctrl + C> to exit"
	sleep 1
done
file=/etc/passwd

while read -r line; do
  echo $line
done < "$file"
