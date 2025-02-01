#!/bin/bash

USER="postgres"
PASSWORD="yourpassword"
DATABASE="studentattendancesystem"
BACKUP_FILE="C:/Users/hemak/OneDrive/Documents/dumps/mysql_backup.sql"

# Import data into PostgreSQL
psql -U $USER -d $DATABASE -f $BACKUP_FILE

echo "PostgreSQL Restore completed from: $BACKUP_FILE"
