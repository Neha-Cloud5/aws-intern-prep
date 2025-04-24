#!/bin/bash
read -p "Enter directory path: " dir
if ! [[ -d $dir ]]; then
echo "Directory doesnot exist!"
exit 1
fi
summary_file="summary.txt"
>"$summary_file"
echo "Analyzing the files in " $dir
echo "-----------------------"
for file in "$dir"/*; do
	if [[ -f $file ]]; then
	filename=$(basename "$file")
	size_kb=$(du -k "$file" | cut -f1)
	echo "Filename: $filename" | tee -a "$summary_file"
	echo " Size : $size_kb KB" | tee -a "$summary_file"
	 if [[ "$file" == *.txt || "$file" == *.sh || "$file" == *.log ]]; then
            line_count=$(wc -l < "$file") | tee -a "$summary_file"
            echo "Lines: $line_count" | tee -a "$summary_file"
        fi

        echo "-------------------------------" | tee -a "$summary_file"
    fi
done