import mysql.connector
import psycopg2

# MySQL connection
mysql_conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="studentattendancesystem"
)
mysql_cursor = mysql_conn.cursor()

# PostgreSQL connection
postgres_conn = psycopg2.connect(
    host="localhost",
    database="studentattendancesystem",
    user="postgres",
    password="yourpassword"
)
postgres_cursor = postgres_conn.cursor()

# Query data from MySQL
mysql_cursor.execute("SELECT * FROM students")
data = mysql_cursor.fetchall()

# Insert data into PostgreSQL
for row in data:
    postgres_cursor.execute("INSERT INTO students (id, name, attendance_date) VALUES (%s, %s, %s)", row)

# Commit changes and close connections
postgres_conn.commit()
mysql_conn.close()
postgres_conn.close()

print("Data migration complete.")
