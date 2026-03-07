# SQL LEFT JOIN & RIGHT JOIN Project – Customers & Orders Database

This project demonstrates how to use **SQL LEFT JOIN and RIGHT JOIN** to combine data from two related tables.

The database contains **customer information** and **order details**.
Using JOIN queries, we can retrieve information such as:

* All customers and their orders
* All orders with their customer details
* Records that exist in one table but not in another

This project helps beginners understand **how SQL joins work when some records do not match**.

---
# Project Overview

This SQL project includes:

1. Creating a `customers` table
2. Creating an `orders` table
3. Inserting sample customer data
4. Inserting order records
5. Retrieving data using **LEFT JOIN and RIGHT JOIN queries**

The goal is to understand **how relational databases combine data from multiple tables**.

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

The `orders` table references the `customers` table using a **foreign key constraint**.

```sql
CONSTRAINT fk_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
```

This ensures that every order is linked to a **valid customer in the customers table**.

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

# Understanding LEFT JOIN

`LEFT JOIN` returns **all rows from the left table** and the matching rows from the right table.

If a row in the left table **does not have a match in the right table**, SQL returns **NULL values** for the columns of the right table.

In this project:

* `customers` is the **left table**
* `orders` is the **right table**

This means **every customer will appear in the result**, even if they have not placed any orders.

---

# LEFT JOIN Query

## Retrieve All Customers and Their Orders

```sql
SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
```

This query shows:

* All customers
* Their orders (if they exist)
* `NULL` values for customers without orders

---

# Understanding RIGHT JOIN

`RIGHT JOIN` returns **all rows from the right table** and matching rows from the left table.

If there is **no matching row in the left table**, SQL returns **NULL values** for the left table columns.

In this project:

* `orders` is the **right table**
* Every order will appear in the result.

---

# RIGHT JOIN Query

## Retrieve All Orders and Their Customers

```sql
SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;
```

This query shows:

* All orders
* The customers who placed them
* `NULL` if an order has no matching customer

---

# Key Difference Between LEFT JOIN and RIGHT JOIN

| JOIN Type  | Result                                      |
| ---------- | ------------------------------------------- |
| LEFT JOIN  | Returns all rows from the left table        |
| RIGHT JOIN | Returns all rows from the right table       |
| INNER JOIN | Returns only matching rows from both tables |

---

# Best Practices When Using JOIN

1. Always define the **JOIN condition using ON**.
2. Use **table aliases** (`c`, `o`) to make queries easier to read.
3. Avoid `SELECT *` in large databases; select only required columns.
4. Ensure the **join columns have matching data types**.

---

# Learning Objectives

After completing this project, you will understand:

* Creating SQL tables with **Primary Key and Foreign Key**
* Inserting structured data into relational tables
* Using **LEFT JOIN and RIGHT JOIN**
* Understanding how SQL handles **NULL values in joins**
* Writing readable SQL queries using **table aliases**

---

# Conclusion

This project demonstrates how **LEFT JOIN and RIGHT JOIN** combine data from multiple tables while handling unmatched records.

These join operations are widely used in **data analysis, reporting, and real-world database queries**.

---

**Updated By – Ankit Mahato**

---

