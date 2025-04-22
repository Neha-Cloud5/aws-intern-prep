#!/bin/bash
read -p "Enter directory path: " dir
if ! [[ -d $dir ]]; then
echo "Directory doesnot exist!"
exit 1
fi
echo "Analyzing the files in " $dir
echo "-----------------------"
for file in "$dir"/*; do
	if [[ -f $file ]]; then
	echo "File : $(basename $file)"
	size_kb=$(du -k "$file" | cut -f1)
	echo " Size : $size_kb KB"
	 if [[ "$file" == *.txt || "$file" == *.sh || "$file" == *.log ]]; then
            line_count=$(wc -l < "$file")
            echo "Lines: $line_count"
        fi

        echo "-------------------------------"
    fi
done
