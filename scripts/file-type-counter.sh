#!/bin/bash
read -p "Enter directory path: " dir
if ! [[ -d $dir ]]; then
echo "Directory path doesnot exist!"
exit 1
fi
txt_count=0
log_count=0
sh_count=0
other_count=0
for file in "$dir/"*; do
if [[ -f "$file" ]];then
	if [[ "$file" == *.txt ]]; then
	((txt_count++))
	elif [[ "$file" == *.sh ]]; then
	((sh_count++))
	elif [[ "$file" == *.log ]]; then
	((log_count++))
	else
	((other_count++))
	fi
fi
done
summary="Total .sh files: $sh_count
Total .txt files: $txt_count
Total .log files: $log_count
Total other files: $other_count"

# Print to terminal
echo "$summary"

# Save to file
output_file="file-type-summary.txt"
echo "$summary" > "$output_file"
echo "Summary saved to $output_file"