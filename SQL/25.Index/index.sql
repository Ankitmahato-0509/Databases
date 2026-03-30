-- Create Database
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

-- Create Table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert Sample Data
INSERT INTO employees (first_name, last_name, email, department, salary)
VALUES
('Rahul', 'Sharma', 'rahul@example.com', 'IT', 50000),
('Priya', 'Verma', 'priya@example.com', 'HR', 45000),
('Amit', 'Singh', 'amit@example.com', 'Finance', 60000),
('Neha', 'Gupta', 'neha@example.com', 'IT', 55000);

-- Create Single Column Index
CREATE INDEX idx_last_name
ON employees (last_name);

-- Create Composite Index
CREATE INDEX idx_department_salary
ON employees (department, salary);

-- Create Unique Index
CREATE UNIQUE INDEX idx_email
ON employees (email);

-- Query Using Index
SELECT * FROM employees
WHERE last_name = 'Sharma';

SELECT * FROM employees
WHERE department = 'IT' AND salary > 50000;

-- Drop Index
DROP INDEX idx_last_name ON employees;

-- Show Indexes
SHOW INDEX FROM employees;

