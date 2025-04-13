#!/bin/bash

file="sample_passwd.txt"
if [[ ! -f $file ]]; then
echo "File not exit"
exit 1
fi

echo "Users with /bin/bash shell:"

while IFS=: read -r username _ _ _ _ _ shell; do

  if [[ "$shell" == "/bin/bash" ]]; then
    echo "$username"
  fi
done < "$file"
