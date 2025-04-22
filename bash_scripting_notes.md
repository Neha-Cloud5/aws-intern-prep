
## Bash Scripting Notes

### 1. Basic Script Structure
```bash
#!/bin/bash
# This line tells the system to use the Bash shell for interpreting the script.
echo "Hello, World!"
```

### 2. Variables
```bash
name="Alice"
echo "Hello, $name"
```
- Variables are declared without spaces.
- Access them with a `$` prefix.

### 3. User Input
```bash
read -p "Enter your name: " user
```
- `read -p` prompts the user and stores input in a variable.

### 4. Conditionals
```bash
if [ $age -ge 18 ]; then
  echo "Adult"
else
  echo "Minor"
fi
```
- Use `-ge`, `-eq`, `-lt` etc. for numeric comparisons.
- Ensure spaces between brackets and expressions.

### 5. Loops
#### While Loop
```bash
while [ $count -lt 5 ]; do
  echo $count
  ((count++))
done
```
#### Until Loop
```bash
until [ $num -ge 10 ]; do
  read -p "Enter a number: " num
done
```
- `until` loop continues until condition becomes true.

#### Infinite Loop
```bash
while :
do
  echo "Press CTRL+C to stop"
  sleep 1
done
```
- `:` is a null command that always returns true.

### 6. Select Menu with Case
```bash
select option in "Print Date" "List Files" "Show Current Directory" "Exit"
do
  case $REPLY in
    1) date;;
    2) ls;;
    3) pwd;;
    4) break;;
    *) echo "Invalid option";;
  esac
done
```
- `select` creates a menu.
- `$REPLY` is the user’s choice number.

### 7. Pipes and Redirection
```bash
echo "apple
banana" | sort
```
- `|` sends output of one command to another.
- `>` redirects output to a file.

### 8. Reading Files Line-by-Line
```bash
file=/etc/passwd
while read -r line; do
  echo $line
done < "$file"
```
- Reads file line-by-line.
- `-r` prevents backslash escapes.

### 9. Git Commands
```bash
git init
git add .
git commit -m "message"
git push origin main
```
- Use `git add .` to stage all files.
- Use `git push` to upload to GitHub.

### 10. File Organizer Script
- Ask user how many files to create.
- Create folder `generated_files`.
- Use a loop to create files with `touch`.
- Optionally open folder in File Explorer (Windows):
```bash
explorer.exe "$(pwd)/$folder"
```

### 11. File Summary Script
- Asks user for a directory path.
- Checks if it exists with `if [[ -d "$dir" ]]`.
- For each file, shows:
  - File name
  - File size (KB): `du -k "$file"`
  - Line count if file ends in `.txt`, `.sh`, or `.log`.
