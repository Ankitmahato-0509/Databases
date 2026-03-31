# Stored & Call Procedure 

## Overview

This project demonstrates the use of **Stored Procedures in SQL Server** using a simple banking-style `accounts` table.

Stored procedures are precompiled SQL statements that can be executed multiple times, improving performance, reusability, and security.

---

## Database Setup

### Create Database

```sql
CREATE DATABASE company_db;
USE company_db;
```

---

## Table Structure

### Accounts Table

Stores account holder details and balance.

Columns:

* `account_id` (INT, Primary Key)
* `account_name` (VARCHAR)
* `balance` (DECIMAL)

---

## Sample Data

| Account ID | Name  | Balance  |
| ---------- | ----- | -------- |
| 1          | Rahul | 5000.00  |
| 2          | Priya | 7500.50  |
| 3          | Amit  | 12000.75 |
| 4          | Neha  | 3000.25  |

---

## Stored Procedures

### 1. Procedure without OUTPUT Parameter

```sql
CREATE PROCEDURE check_balance
    @acc_id INT
AS
BEGIN
    SELECT balance
    FROM accounts
    WHERE account_id = @acc_id;
END;
```

Purpose:

* Retrieves the balance of a given account
* Returns result directly as a query output

Execution:

```sql
EXEC check_balance @acc_id = 1;
```

---

### 2. Procedure with OUTPUT Parameter

```sql
CREATE PROCEDURE check_balance_output
    @acc_id INT,
    @bal DECIMAL(10,2) OUTPUT
AS
BEGIN
    SELECT @bal = balance
    FROM accounts
    WHERE account_id = @acc_id;
END;
```

Purpose:

* Returns the balance using an output parameter
* Useful when storing result in variables

Execution:

```sql
DECLARE @balance DECIMAL(10,2);

EXEC check_balance_output 
    @acc_id = 1, 
    @bal = @balance OUTPUT;

SELECT @balance;
```

---

## Key Concepts

* Stored procedures improve performance through precompilation
* Parameters allow dynamic input
* OUTPUT parameters return values to variables
* Procedures enhance code reusability and security

---

## Use Cases

* Banking systems (balance checking)
* Reusable database logic
* Controlled data access
* Application backend operations

---

## Conclusion

This project demonstrates how to create and use stored procedures in SQL Server, including both direct result queries and output parameter techniques.

---

## Updated by: Ankit Mahato