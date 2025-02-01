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
