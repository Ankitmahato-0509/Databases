# SQL Indexes Demo

## Overview

This project demonstrates the use of **Indexes in SQL** to improve query performance in a simple employee database.

Indexes are used to speed up data retrieval operations on a table by creating efficient lookup paths.

---

## Database Setup

### Create Database

```sql
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;
```

---

## Table Structure

### Employees Table

Stores employee details.

Columns:

* `id` (INT, Primary Key, Auto Increment)
* `first_name` (VARCHAR)
* `last_name` (VARCHAR)
* `email` (VARCHAR, Unique)
* `department` (VARCHAR)
* `salary` (DECIMAL)
* `created_at` (TIMESTAMP)

---

## Sample Data

The table includes sample employee records from different departments such as IT, HR, and Finance.

---

## Indexes Implemented

### 1. Single Column Index

```sql
CREATE INDEX idx_last_name
ON employees (last_name);
```

Purpose:

* Speeds up searches based on `last_name`

---

### 2. Composite Index

```sql
CREATE INDEX idx_department_salary
ON employees (department, salary);
```

Purpose:

* Optimizes queries filtering by both `department` and `salary`

---

### 3. Unique Index

```sql
CREATE UNIQUE INDEX idx_email
ON employees (email);
```

Purpose:

* Ensures all email values are unique
* Improves lookup speed for email-based queries

---

## Query Examples

```sql
SELECT * FROM employees
WHERE last_name = 'Sharma';
```

```sql
SELECT * FROM employees
WHERE department = 'IT' AND salary > 50000;
```

These queries benefit from the indexes created.

---

## Index Management

### Drop Index

```sql
DROP INDEX idx_last_name ON employees;
```

### View Indexes

```sql
SHOW INDEX FROM employees;
```

---

## Key Concepts

* Indexes improve query performance
* Single-column indexes optimize searches on one field
* Composite indexes optimize multi-column filtering
* Unique indexes enforce data uniqueness
* Excessive indexes may slow down insert/update operations

---

## Use Cases

* Faster search operations
* Efficient filtering and sorting
* Enforcing uniqueness (e.g., email)
* Optimizing large datasets

---

## Conclusion

This project demonstrates how different types of indexes can be created and used to improve database performance and enforce data integrity.

---

## Updated by: Ankit Mahato