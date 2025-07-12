\# Automated Backup Script



\## 📌 Overview



This script automates creating backups of any folder on a Linux system.  

It asks the user for:

\- The source folder to back up

\- The destination folder where the backup will be stored



It then:

\- Checks if the source exists

\- Creates the destination folder if it doesn’t exist

\- Creates a compressed `.tar.gz` archive with a timestamp



---



\## ⚙️ How It Works



\*\*Key Features:\*\*

\- Uses `tar` to compress folders

\- Names backup files with the current date and time

\- Follows best practices for scripting: input validation, clear messages



---



\## 🚀 Usage



1️⃣ Make the script executable:

```bash

chmod +x backup.sh



---



\## Sample Input Output



$ ./backup.sh

Enter folder to back up: home/projectX

Enter backup destination: home/backups

Backup created: /home/backups/projectX\_backup\_2025-07-12.tar.gz



---



\## To Restore File







\# ✅ Scenario



\* \*\*Source folder:\*\* `/home/ubuntu/projectX`

\* \*\*Backup destination:\*\* `/home/ubuntu/backups`



---



\# 📌 Create a Backup



```bash

\#!/bin/bash



source="/home/ubuntu/projectX"

destination="/home/ubuntu/backups"

timestamp=$(date +"%Y-%m-%d\_%H-%M-%S")

backup\_name="$(basename $source)\_backup\_$timestamp.tar.gz"



\# Make sure backup folder exists

mkdir -p "$destination"



tar -czf "$destination/$backup\_name" -C "$(dirname $source)" "$(basename $source)"



echo "Backup created: $destination/$backup\_name"

```



\*\*Key Points:\*\*



\* `-c` → create archive

\* `-z` → compress with gzip

\* `-f` → filename

\* `-C` → switch to parent directory before archiving

\* `basename` → use only the folder name, not the full path



---



\# 📌 Restore a Backup



```bash

\# Extract inside /home/ubuntu



tar -xzf /home/ubuntu/backups/projectX\_backup\_<timestamp>.tar.gz -C /home/ubuntu/

```



\*\*Key Points:\*\*



\* `-x` → extract

\* `-z` → decompress gzip

\* `-f` → filename

\* `-C` → extract to this location



---



\# 📍 Where to Run



\* You can run the backup script \*\*from anywhere\*\* — paths do the work.

\* Example: `cd ~ \&\& ./backup-script.sh`



---







