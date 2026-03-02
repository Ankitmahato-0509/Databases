# DBMS Transaction with SAVEPOINT (SQL Server)

This project demonstrates how to use **Transactions** and **Savepoints** in **Microsoft SQL Server**.

It explains how a transaction can be partially rolled back using `SAVE TRANSACTION`, which is useful in real-world systems like banking and wallet applications.

---

## Objective

* Create an accounts table
* Insert sample data
* Perform a wallet top-up inside a transaction
* Create a savepoint
* Roll back only part of the transaction
* Commit the remaining changes

---

## Table Creation

```sql
CREATE TABLE accounts (
    id INT PRIMARY KEY IDENTITY(1,1),
    account_holder NVARCHAR(255) NOT NULL,
    balance DECIMAL(18,2) NOT NULL
);
```

---

## Insert Sample Data

```sql
INSERT INTO accounts (account_holder, balance) VALUES
('John Doe', 1000.00),
('Jane Smith', 2500.50),
('Alice Johnson', 500.75);
```

---

## View Initial Data

```sql
SELECT * FROM accounts;
```

### Initial Balances

| ID | Account Holder | Balance |
| -- | -------------- | ------- |
| 1  | John Doe       | 1000.00 |
| 2  | Jane Smith     | 2500.50 |
| 3  | Alice Johnson  | 500.75  |

---

# Transaction with SAVEPOINT Example

This example performs the following steps:

1. Add 1000 to John Doe’s account
2. Create a savepoint
3. Add another 10
4. Roll back only the +10
5. Commit the transaction

```sql
-- Start Transaction
BEGIN TRANSACTION;

-- Top up wallet by 1000
UPDATE accounts 
SET balance = balance + 1000 
WHERE id = 1;

-- Create a savepoint
SAVE TRANSACTION after_wallet_topup;

-- Add another 10
UPDATE accounts 
SET balance = balance + 10 
WHERE id = 1;

-- Roll back to savepoint (removes +10 only)
ROLLBACK TRANSACTION after_wallet_topup;

-- Commit remaining changes
COMMIT TRANSACTION;

-- View final balances
SELECT * FROM accounts;
```

---

## Final Result Explanation

Initial Balance of John Doe = 1000

+1000 applied
+10 applied
Rollback to savepoint removes +10 only

Final Balance of John Doe = 2000

The +1000 remains because we committed after rolling back only to the savepoint.

---

# What is a Savepoint?

A **Savepoint** allows partial rollback inside a transaction.

Instead of cancelling the entire transaction, you can return to a specific point.

Syntax in SQL Server:

```sql
SAVE TRANSACTION savepoint_name;
ROLLBACK TRANSACTION savepoint_name;
```

---

## Why Savepoints Are Important

Savepoints are useful in:

* Banking systems
* Wallet recharge systems
* E-commerce checkout processes
* Large multi-step transactions

They allow better control over complex operations without losing all progress.

---

## Tools Used

* **SQL Server Management Studio**
* Microsoft SQL Server

---

Updated by:
Ankit Mahato

---
