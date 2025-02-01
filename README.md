# DATABASE_MIGRATION


**COMPANY**: CODETECH IT SOLUTIONS

**NAME**: HEMAKSHI INGALE

**INTERN ID**: CT08KXN

**DOMAIN**: SQL

**BATCH DURATION**: JANUARY 10th TO FEBRUARY 10th, 2025

**MENTOR NAME**: NEELA SANTOSH KUMAR

# Database Migration: MySQL to PostgreSQL

## Objective
This project demonstrates the migration of data from a MySQL database (`studentattendancesystem`) to a PostgreSQL database, while ensuring data integrity.

## Backup and Restore Scripts

### 1. Backup Script (MySQL)
The `backup_script.sh` is used to export data from the MySQL database to a `.sql` dump file.

```bash
#!/bin/bash

USER="root"
PASSWORD="root"
DATABASE="studentattendancesystem"
BACKUP_DIR="C:/Users/hemak/OneDrive/Documents/dumps"

DATE=$(date +%F)

BACKUP_FILE="$BACKUP_DIR/mysql_backup.sql"

# Export MySQL data
mysqldump -u $USER -p$PASSWORD --single-transaction --routines --triggers $DATABASE > "$BACKUP_FILE"

echo "MySQL Backup completed: $BACKUP_FILE"
```
## Output
