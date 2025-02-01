# Database Migration: MySQL to PostgreSQL

## Objective:
Migrate data from the `studentattendancesystem` database in MySQL to PostgreSQL while ensuring data integrity.

## Steps Taken:

1. **MySQL Export**: 
   - Used `mysqldump` to export data from MySQL to a `.sql` dump file.

2. **PostgreSQL Import**:
   - Used `psql` to import the SQL dump into PostgreSQL.

3. **Python Script for Data Migration**:
   - Wrote a Python script to extract data from MySQL and insert it into PostgreSQL using `mysql-connector` and `psycopg2` libraries.

## Data Integrity Check:

- Verified row counts between MySQL and PostgreSQL.
- Ensured that data was correctly migrated.

## Conclusion:

The migration from MySQL to PostgreSQL was successful, with all data accurately migrated without discrepancies.
