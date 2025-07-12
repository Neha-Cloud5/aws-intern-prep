#!/bin/bash

# --------------------------
# Secure Folder Structure Script
# --------------------------

# Create the main project folder with subfolders
mkdir -p projectX/data projectX/logs

# Set secure permissions
chmod 700 projectX/data   # Owner only
chmod 770 projectX/logs   # Owner and group

# Optional: Set ownership
# Uncomment and replace 'yourusername:yourgroup' as needed
# sudo chown yourusername:yourgroup projectX/data
# sudo chown yourusername:yourgroup projectX/logs

# Output the result
echo "Secure folders created:"
ls -ld projectX/data projectX/logs
