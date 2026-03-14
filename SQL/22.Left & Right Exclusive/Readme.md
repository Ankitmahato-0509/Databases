# SQL JOIN Project – Customers and Orders Relationship

This project demonstrates how to use **JOINs** in SQL to analyze relationships between two tables: **customers** and **orders**.

In many business databases, customers and their orders are stored in **separate tables**. The `customer_id` column in the `orders` table refers to the `customer_id` in the `customers` table, creating a relational link.

This project shows how to use **LEFT JOIN** and **RIGHT JOIN** to detect missing or inconsistent data when foreign keys are not enforced.

---

# Project Overview

This SQL project includes:

1. Creating `customers` and `orders` tables  
2. Inserting sample data  
3. Demonstrating how missing relationships can occur without foreign keys  
4. Using **JOIN queries** to find customers without orders and orders without valid customers  

---

# Database Schema

## Customers Table

| Column Name  | Data Type    | Description                              |
| ------------ | ------------ | ---------------------------------------- |
| customer_id  | INT          | Unique customer identifier (Primary Key) |
| name         | NVARCHAR(50) | Customer name                            |
| city         | NVARCHAR(50) | Customer city                            |

## Orders Table

| Column Name  | Data Type    | Description                              |
| ------------ | ------------ | ---------------------------------------- |
| order_id     | INT          | Unique order identifier (Primary Key)    |
| customer_id  | INT          | ID of the customer placing the order     |
| amount       | DECIMAL(10,2)| Order amount                             |

---

# Dataset Used

### Customers

| customer_id | name    | city      |
| ----------- | ------- | --------- |
| 1           | Alice   | Mumbai    |
| 2           | Bob     | Delhi     |
| 3           | Charlie | Bangalore |
| 4           | David   | Mumbai    |

### Orders

| order_id | customer_id | amount |
| -------- | ----------- | ------ |
| 101      | 1           | 500    |
| 102      | 1           | 900    |
| 103      | 2           | 300    |
| 104      | 5           | 700    |

### Explanation

* **Alice** has two orders.  
* **Bob** has one order.  
* **Charlie** has no orders.  
* **David** has no orders.  
* **Order 104** references `customer_id=5`, which does not exist in the customers table.  

---

# Creating the Tables

```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(50),
    city NVARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
);
```

---

# Inserting Data

```sql
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Alice', 'Mumbai'),
(2, 'Bob', 'Delhi'),
(3, 'Charlie', 'Bangalore'),
(4, 'David', 'Mumbai');

INSERT INTO orders (order_id, customer_id, amount) VALUES
(101, 1, 500),
(102, 1, 900),
(103, 2, 300),
(104, 5, 700);
```

---

# LEFT JOIN Query – Customers Without Orders

```sql
SELECT * 
FROM customers AS c
LEFT JOIN orders AS o 
    ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;
```

### Result

| customer_id | name    | city      | order_id | customer_id | amount |
| ----------- | ------- | --------- | -------- | ----------- | ------ |
| 3           | Charlie | Bangalore | NULL     | NULL        | NULL   |
| 4           | David   | Mumbai    | NULL     | NULL        | NULL   |

---

# RIGHT JOIN Query – Orders Without Customers

```sql
SELECT * 
FROM customers AS c
RIGHT JOIN orders AS o 
    ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;
```

### Result

| customer_id | name | city | order_id | customer_id | amount |
| ----------- | ---- | ---- | -------- | ----------- | ------ |
| NULL        | NULL | NULL | 104      | 5           | 700    |

---

# Learning Objectives

After completing this project, you will understand:

* How to create relational tables without foreign keys  
* How missing or invalid relationships can occur  
* How to use **LEFT JOIN** to find customers without orders  
* How to use **RIGHT JOIN** to find orders without valid customers  

---

# Use Cases

JOIN queries like these are commonly used in:

* Customer–order management systems  
* Detecting orphan records in databases  
* Auditing data integrity when constraints are not enforced  

---

# Conclusion

This project demonstrates how **JOINs** can be used to detect missing or inconsistent relationships between tables when foreign keys are not present.  

It highlights the importance of **referential integrity** and shows how SQL queries can be used to audit and clean data in real-world business databases.  

---

**Updated By – Ankit Mahato**