# devops-linux-backup-automation

Automated backup solution using Bash, cron and SSH for Linux environments.

## Overview

This tool automates the backup process by compressing directories, logging execution results and scheduling daily runs — requiring zero manual intervention.

## How It Works

1. cron triggers the script daily at 02:00
2. Script compresses the target directory
3. Backup file is saved with a unique timestamp
4. Execution result is logged (success or failure)

## Schedule

| Time  | Frequency | Action           |
|-------|-----------|------------------|
| 02:00 | Daily     | Full backup run  |

## Project Structure
devops-linux-backup-automation/ ├── backup.sh — script principal ├── README.md — documentação └── logs/ — logs de execução (gerados automaticamente)

## Tech Stack

- **Bash** — scripting language
- **cron** — task scheduling
- **SSH** — remote server access
- **tar** — file compression
- **Ubuntu Linux** — runtime environment

## Usage

**1. Grant execution permission:**
```bash
chmod +x backup.sh
```

**2. Run manually:**
```bash
./backup.sh
```

**3. Schedule with cron:**
```bash
crontab -e
```
Add the following line:

0 2 * * * /home/user/scripts/backup.sh

**4. Check logs:**
```bash
cat logs/backup.log
```
