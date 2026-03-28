# SQL Subquery 

This demonstrates how to use **subqueries** in SQL to analyze order data and identify records that exceed overall performance benchmarks.

In real-world databases, analysts often need to compare individual records against **aggregate metrics** like averages, totals, or maximum values. This project shows how to use a **subquery with AVG()** to filter orders that are above the average order amount.

---

# Overview

This SQL project includes:

1. Creating `customers` and `orders` tables
2. Inserting sample data
3. Establishing relationships using a **foreign key**
4. Using a **subquery** to calculate average order amount
5. Filtering orders that are greater than the average

---

# Database Schema

## Customers Table

| Column Name | Data Type    | Description                              |
| ----------- | ------------ | ---------------------------------------- |
| customer_id | INT          | Unique customer identifier (Primary Key) |
| name        | NVARCHAR(50) | Customer name                            |
| city        | NVARCHAR(50) | Customer city                            |

## Orders Table

| Column Name | Data Type | Description                           |
| ----------- | --------- | ------------------------------------- |
| order_id    | INT       | Unique order identifier (Primary Key) |
| customer_id | INT       | ID of the customer placing the order  |
| amount      | INT       | Order amount                          |

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
| 104      | 4           | 1700   |

---

# Explanation

* **Alice** placed two orders (500, 900)
* **Bob** placed one order (300)
* **David** placed one order (1700)
* The system calculates the **average order amount** across all records

### Average Calculation

Average = (500 + 900 + 300 + 1700) / 4 = **850**

Orders greater than average:

* 900 
* 1700 

---

# Creating the Tables

```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(50) NOT NULL,
    city NVARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    amount INT NOT NULL,
    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
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
(104, 4, 1700);
```

---

# Subquery – Orders Above Average

```sql
SELECT o.order_id,
       o.customer_id,
       o.amount
FROM orders AS o
WHERE o.amount > (
    SELECT AVG(amount)
    FROM orders
);
```

---

# Result

| order_id | customer_id | amount |
| -------- | ----------- | ------ |
| 102      | 1           | 900    |
| 104      | 4           | 1700   |

---

# Learning Objectives

After completing this project, you will understand:

* How to use **subqueries in SQL**
* How to calculate aggregate values using `AVG()`
* How to filter data based on computed metrics
* How to combine **relational design + analytical queries**

---

# Use Cases

This type of query is commonly used in:

* Sales performance analysis
* Identifying high-value transactions
* Business intelligence dashboards


---

**Updated By – Ankit Mahato** 
