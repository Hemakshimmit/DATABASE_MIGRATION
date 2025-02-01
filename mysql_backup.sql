-- Sample MySQL Data Export (with Indian names)
CREATE DATABASE studentattendancesystem;

USE studentattendancesystem;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    attendance_date DATE
);

INSERT INTO students (name, attendance_date) VALUES
    ('Amit Sharma', '2025-01-01'),
    ('Priya Verma', '2025-01-02'),
    ('Rajesh Kumar', '2025-01-03'),
    ('Sneha Patel', '2025-01-04'),
    ('Vikram Singh', '2025-01-05');
