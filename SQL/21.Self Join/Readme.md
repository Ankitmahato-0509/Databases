# SQL SELF JOIN Project – Employee Manager Relationship

This project demonstrates how to use a **SELF JOIN** in SQL to retrieve relationships within the **same table**.

In many organizations, employees and their managers are stored in the **same database table**.
The `manager_id` column refers to another employee’s `id`, creating a hierarchical relationship.

This project shows how to use **SELF JOIN** to connect employees with their managers.

---

# Project Overview

This SQL project includes:

1. Creating an `employees` table
2. Inserting employee data
3. Defining manager relationships using `manager_id`
4. Using **SELF JOIN** to display employee–manager pairs

This is a common scenario in **organizational databases**.

---

# Database Schema

## Employees Table

| Column Name | Data Type    | Description                              |
| ----------- | ------------ | ---------------------------------------- |
| id          | INT          | Unique employee identifier (Primary Key) |
| name        | NVARCHAR(50) | Employee name                            |
| manager_id  | INT          | ID of the employee’s manager             |

---

# Dataset Used

| id | name    | manager_id |
| -- | ------- | ---------- |
| 1  | Alice   | NULL       |
| 2  | Bob     | 1          |
| 3  | Charlie | 1          |
| 4  | David   | 2          |
| 5  | Eva     | 2          |

### Explanation

* **Alice** is the top-level manager (no manager).
* **Bob and Charlie** report to Alice.
* **David and Eva** report to Bob.

---

# Creating the Table

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name NVARCHAR(50),
    manager_id INT
);
```

---

# Inserting Data

```sql
INSERT INTO employees (id, name, manager_id)
VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'David', 2),
(5, 'Eva', 2);
```

---

# SELF JOIN Query

```sql
SELECT *
FROM employees AS A
JOIN employees AS B
ON A.manager_id = B.id;
```

---

# Query Explanation

A **SELF JOIN** is used when a table needs to be joined with itself.

In this query:

* `employees AS A` represents the **employee**
* `employees AS B` represents the **manager**

The join condition:

```
A.manager_id = B.id
```

This connects each employee to the row that represents their manager.

---

# Example Output

| Employee ID | Employee Name | Manager ID | Manager ID | Manager Name |
| ----------- | ------------- | ---------- | ---------- | ------------ |
| 2           | Bob           | 1          | 1          | Alice        |
| 3           | Charlie       | 1          | 1          | Alice        |
| 4           | David         | 2          | 2          | Bob          |
| 5           | Eva           | 2          | 2          | Bob          |

---

# Learning Objectives

After completing this project, you will understand:

* How **SELF JOIN** works in SQL
* Using **table aliases**
* Querying hierarchical data
* Retrieving employee–manager relationships

---

# Use Cases

SELF JOIN is commonly used in:

* Employee–manager hierarchies
* Organizational structures
* Parent–child relationships
* Category and subcategory systems

---

# Conclusion

This project demonstrates how **SELF JOIN** can retrieve relationships within the same table.

Understanding SELF JOIN is important for working with **hierarchical data structures in relational databases**.

---

**Updated By – Ankit Mahato**
