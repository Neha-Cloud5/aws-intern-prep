#!/bin/bash
for element in Hydrogen Oxygen Calcium Nitrogen 
do
	echo "Element: " $element
done 
for i in {0..3}
do
	echo "Number: " $i
done
for i in {0..20..5}
do
	echo "Number: " $i
done
BOOK=('THE BATMAN' 'AVTAR' 'ROBIN HOOD')
for book in "${BOOK[@]}"; do
	echo "Book: $book"
done
for ((i=0;i<10;i++)); do
	echo $i
done
for i in {1..10} ; do
if [[ "$i" == '5' ]]; then
	continue
elif [[ "$i" == '7' ]]; then
	break
else
	echo "Number: " $i
fi
done