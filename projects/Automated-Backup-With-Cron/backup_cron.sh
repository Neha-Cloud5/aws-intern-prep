#!/bin/bash

source="/home/ubuntu/projectX"
destination="/home/ubuntu/backups"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_name="$(basename $source)_backup_$timestamp.tar.gz"

mkdir -p "$destination"

tar -czf "$destination/$backup_name" -C "$(dirname $source)" "$(basename $source)"

echo "Backup created at $timestamp" >> ~/backup_log.txt
