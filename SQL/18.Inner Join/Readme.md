# SQL INNER JOIN Project – Customers & Orders Database

This project demonstrates how to use the SQL **INNER JOIN** operation to combine data from two related tables.

The database contains **customer information** and **order details**.
Using JOIN queries, we retrieve meaningful information such as which customers placed orders and which customers made high-value purchases.

---

# Project Overview

This SQL project includes:

1. Creating a `customers` table
2. Creating an `orders` table
3. Inserting sample customer data
4. Inserting order records
5. Retrieving data using **INNER JOIN queries**

This project helps beginners understand **table relationships and data retrieval using JOINs**.

---

# Database Schema

## Customers Table

| Column Name | Data Type    | Description                              |
| ----------- | ------------ | ---------------------------------------- |
| customer_id | INT          | Unique customer identifier (Primary Key) |
| name        | NVARCHAR(50) | Customer name                            |
| city        | NVARCHAR(50) | Customer city                            |

---

## Orders Table

| Column Name | Data Type | Description                           |
| ----------- | --------- | ------------------------------------- |
| order_id    | INT       | Unique order identifier (Primary Key) |
| customer_id | INT       | Customer who placed the order         |
| amount      | INT       | Order amount                          |

---

# Table Relationship

The `orders` table is linked to the `customers` table using a **foreign key**.

```sql
CONSTRAINT fk_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
```

This ensures that every order belongs to a **valid customer in the customers table**.

---

# Dataset Used in the Project

## Customers Data

| customer_id | name    | city      |
| ----------- | ------- | --------- |
| 1           | Alice   | Mumbai    |
| 2           | Bob     | Delhi     |
| 3           | Charlie | Bangalore |
| 4           | David   | Mumbai    |

---

## Orders Data

| order_id | customer_id | amount |
| -------- | ----------- | ------ |
| 101      | 1           | 500    |
| 102      | 1           | 900    |
| 103      | 2           | 300    |
| 104      | 4           | 1700   |

---

# Understanding INNER JOIN

`INNER JOIN` returns **only the rows that have matching values in both tables**.

In this project, the join is performed using the **customer_id column**.

---

# INNER JOIN Syntax

```sql
SELECT column_names
FROM table1
INNER JOIN table2
ON table1.column = table2.column;
```

---

# SQL Queries Included

## 1. Retrieve All Columns from Both Tables

```sql
SELECT *
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
```

This query displays **all matching rows from both tables**.

---

## 2. Retrieve Customer ID, Order ID, and Customer Name

```sql
SELECT c.customer_id, o.order_id, c.name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
```

This query shows **which customer placed which order**.

---

## 3. Retrieve Customers with Orders Greater Than 1000

```sql
SELECT c.name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.amount > 1000;
```

This query finds customers who made **orders above 1000**.

---

# Best Practices When Using JOIN

1. Always define the **JOIN condition using ON**.
2. Use **table aliases (c, o)** to simplify queries.
3. Select specific columns instead of `SELECT *` in large databases.
4. Ensure matching **data types for joining columns**.

---

# Learning Objectives

After completing this project, you will understand:

* Creating SQL tables with **INT and NVARCHAR datatypes**
* Using **Primary Key and Foreign Key**
* Retrieving data using **INNER JOIN**
* Filtering joined results using **WHERE clause**
* Writing readable SQL queries using **aliases**

---

# Conclusion

This project demonstrates how **INNER JOIN** helps combine data from multiple tables to produce useful insights.

Understanding JOIN operations is essential for working with **real-world relational databases and analytics tasks**.

---

**Updated By – Ankit Mahato**