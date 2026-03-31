# SQL Views Demo

## Overview

This project demonstrates the concept of **Views in SQL** using a simple Customers and Orders database.

A **view** is a virtual table based on the result of a SQL query. It does not store data physically but retrieves data from underlying tables when queried.

---

## Base Tables

### Customers

Contains customer details:

* `customer_id` (Primary Key)
* `name`
* `city`

### Orders

Contains order details:

* `order_id` (Primary Key)
* `customer_id` (Foreign Key)
* `amount`

---

## Views Implemented

### View `v1`

```sql
CREATE VIEW v1 AS 
SELECT name, city 
FROM customers;
```

Purpose:

* Displays basic customer information
* Simplifies queries on customer data

Example Queries:

```sql
SELECT * FROM v1;

SELECT * FROM v1 WHERE name = 'David';
```

---

### View `v2`

```sql
CREATE VIEW v2 AS 
SELECT c.customer_id, c.name, o.order_id, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;
```

Purpose:

* Combines customer and order data
* Provides a simplified way to view joined data

Example Query:

```sql
SELECT * FROM v2;
```

---

## Key Concepts of Views

* A view is a virtual table based on a query
* Views improve query readability and reusability
* They help in restricting access to specific data
* Views always show updated data from the base tables

---

## Advantages of Views

* Simplifies complex queries
* Enhances security by limiting data access
* Provides abstraction from underlying tables
* Reusable query logic

---

## Cleanup

To remove a view:

```sql
DROP VIEW v1;
```

---

## Conclusion

This project demonstrates how views can be used to simplify data access and manage complex queries efficiently in SQL.

---
Updated by: Ankit Mahato
