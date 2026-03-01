# DBMS Transaction with ROLLBACK 

This project demonstrates how to use a database transaction and rollback in SQL Server using a banking account example.
It shows how to create a table, insert data, perform a transaction, and cancel changes using ROLLBACK.

This example is useful for DBMS exams, viva preparation, and beginners learning SQL transactions.

---

## What is a Transaction?

A transaction is a group of SQL operations executed together as one unit.

If all steps succeed → COMMIT
If any step fails or cancelled → ROLLBACK

Transactions are important in banking systems to prevent incorrect balances.

---

## Table Creation

We create an `account` table with account ID, account holder name, and balance.

```sql id="rd101"
CREATE TABLE account (
    account_id INT PRIMARY KEY IDENTITY(1,1),
    account_holder NVARCHAR(255) NOT NULL,
    balance DECIMAL(18,2) NOT NULL
);
```

---

## Insert Sample Data

```sql id="rd102"
INSERT INTO account (account_holder, balance) VALUES
('John Doe', 1000.00),
('Jane Smith', 2500.50),
('Alice Johnson', 500.75);
```

Initial Balances:

John Doe → 1000.00
Jane Smith → 2500.50
Alice Johnson → 500.75

---

## View Initial Data

```sql id="rd103"
SELECT * FROM account;
```

---

## Transaction Code

This transaction transfers 200 from Account 1 to Account 2.

```sql id="rd104"
BEGIN TRANSACTION;

UPDATE account 
SET balance = balance - 200.00
WHERE account_id = 1;

UPDATE account 
SET balance = balance + 200.00
WHERE account_id = 2;
```

---

## Check Data Before Rollback

```sql id="rd105"
SELECT * FROM account;
```

Balances will show updated values temporarily.

---

## Rollback Transaction

```sql id="rd106"
ROLLBACK TRANSACTION;
```

This cancels all changes made in the transaction.

---

## Check Data After Rollback

```sql id="rd107"
SELECT * FROM account;
```

Balances return to original values.

---

## Expected Result

Before Transaction
John → 1000
Jane → 2500.50

After Update (Before Rollback)
John → 800
Jane → 2700.50

After Rollback
John → 1000
Jane → 2500.50

---

## ACID Property Used

Atomicity
The transaction is cancelled completely using rollback.

Consistency
Database returns to correct state after rollback.

Isolation
Other users do not see partial updates.

Durability
If COMMIT was used, changes would be permanent.

---

## Why ROLLBACK is Important

ROLLBACK is used in banking, online shopping, ticket booking, and payroll systems to prevent wrong data.

---

## Tools Used

SQL Server Management Studio
MySQL or phpMyAdmin with small syntax changes

---

Updated by: Ankit Mahato
