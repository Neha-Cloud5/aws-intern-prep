# 📦 Day 4: Automated Backup with Cron

This project demonstrates how to automate folder backups on a Linux system using a Bash script and `cron`.

---

## ✅ What it does

- Compresses (`.tar.gz`) a given folder (`projectX`).
- Adds a timestamp to each backup.
- Saves the archive in a `backups` folder.
- Appends a log entry to `~/backup_log.txt` every time it runs.
- Schedules automatic runs using `crontab`.

---

## 📂 Files

- `backup.sh` → The main backup script.
- `~/backup_log.txt` → A log file storing when backups happen.


