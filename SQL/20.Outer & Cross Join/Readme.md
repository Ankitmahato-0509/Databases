# SQL JOIN Operations Project – Customers & Orders Database

This project demonstrates different SQL JOIN techniques using two tables: **customers** and **orders**.

The project focuses on:

* Creating relational tables
* Inserting sample data
* Simulating **FULL OUTER JOIN**
* Understanding **CROSS JOIN (Cartesian Product)**

These operations help understand how SQL combines data from multiple tables.

---

# Project Overview

This SQL project includes:

1. Creating a `customers` table
2. Creating an `orders` table
3. Inserting customer records
4. Inserting order records
5. Performing a **FULL OUTER JOIN using LEFT JOIN + RIGHT JOIN**
6. Performing a **CROSS JOIN**

This project is useful for learning **advanced SQL join operations**.

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

The `orders` table references the `customers` table using a **foreign key**.

```sql
CONSTRAINT fk_customer 
FOREIGN KEY (customer_id) 
REFERENCES customers(customer_id)
```

This ensures that orders are linked to valid customers.

---

# Dataset Used

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

# FULL OUTER JOIN (Using LEFT + RIGHT JOIN)

Some SQL systems do not directly support `FULL OUTER JOIN`.
It can be simulated by combining **LEFT JOIN** and **RIGHT JOIN** using `UNION`.

### Query

```sql
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id

UNION

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id;
```

### Explanation

* **LEFT JOIN** returns all rows from the `customers` table.
* **RIGHT JOIN** returns all rows from the `orders` table.
* `UNION` combines both results to simulate a **FULL OUTER JOIN**.

This returns **all records from both tables**, including unmatched rows.

---

# CROSS JOIN (Cartesian Product)

A **CROSS JOIN** returns the **Cartesian product** of two tables.

Each row from the first table is combined with **every row from the second table**.

### Query

```sql
SELECT *
FROM customers
CROSS JOIN orders;
```

### Explanation

If:

* Customers table has **4 rows**
* Orders table has **4 rows**

The result will contain:

```
4 × 4 = 16 rows
```

Each customer will be paired with every order.

---

# JOIN Types Overview

| JOIN Type       | Description                            |
| --------------- | -------------------------------------- |
| INNER JOIN      | Returns matching rows from both tables |
| LEFT JOIN       | Returns all rows from left table       |
| RIGHT JOIN      | Returns all rows from right table      |
| FULL OUTER JOIN | Returns all rows from both tables      |
| CROSS JOIN      | Returns Cartesian product of tables    |

---

# Learning Objectives

After completing this project, you will understand:

* Creating relational tables in SQL
* Using **Primary Key and Foreign Key**
* Simulating **FULL OUTER JOIN**
* Understanding **CROSS JOIN**
* How SQL combines datasets from multiple tables

---

# Use Cases

* SQL learning projects
* Data analyst practice
* Database coursework
* Interview preparation
* GitHub SQL portfolio

---

# Conclusion

This project demonstrates how SQL JOIN operations combine information from multiple tables to generate meaningful results.

Understanding different types of JOINs is essential for working with **relational databases and real-world datasets**.

---

**Updated By – Ankit Mahato**