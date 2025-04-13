#!/bin/bash
counter=0
until [ $counter -gt 5 ]
do
	echo "Counter: " $counter
	((counter++))
done
until git pull &> /dev/null
do
	echo "Waiting for Git hub to response..."
	sleep 2
done
echo -e "\nThe git repository is pulled"
 