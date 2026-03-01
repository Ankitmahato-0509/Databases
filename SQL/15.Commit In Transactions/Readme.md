# DBMS Transaction and ACID Properties

This project explains database transactions, AUTOCOMMIT mode, and ACID properties using a banking money transfer example in SQL Server.
It is useful for DBMS exams, viva preparation, and beginners learning SQL transactions.

---

## What is a Transaction?

A transaction is a group of SQL operations that execute together as one unit.

If all steps succeed → COMMIT
If any step fails → ROLLBACK

Example: Money transfer between two bank accounts.

---

## What is AUTOCOMMIT?

AUTOCOMMIT controls whether SQL automatically saves changes after every query.

AUTOCOMMIT = 1 → Enable automatic saving
AUTOCOMMIT = 0 → Disable automatic saving (manual COMMIT needed)

In banking systems, AUTOCOMMIT is often disabled to avoid partial updates.

---

## Disable AUTOCOMMIT

```sql
-- MySQL
SET autocommit = 0;

-- SQL Server equivalent
SET IMPLICIT_TRANSACTIONS ON;
```

---

## Table Creation

We create an account table with account ID, account holder name, and balance.

```sql
CREATE TABLE account (
    account_id INT PRIMARY KEY IDENTITY(1,1),
    account_holder NVARCHAR(255) NOT NULL,
    balance DECIMAL(18, 2) NOT NULL
);
```

---

## Insert Sample Data

```sql
INSERT INTO account (account_holder, balance) VALUES
('John Doe', 1000.00),
('Jane Smith', 2500.50),
('Alice Johnson', 500.75);
```

Initial Balance:

John Doe → 1000.00
Jane Smith → 2500.50
Alice Johnson → 500.75

---

## View Initial Data

```sql
SELECT * FROM account;
```

---

## Transaction Code (Money Transfer)

This transaction transfers 200 from John Doe to Jane Smith.

```sql
BEGIN TRANSACTION;

UPDATE account 
SET balance = balance - 200.00 
WHERE account_id = 1;

UPDATE account 
SET balance = balance + 200.00 
WHERE account_id = 2;

COMMIT TRANSACTION;
```

---

## Check Result

```sql
SELECT * FROM account;
```

Final Balance:

John Doe → 800.00
Jane Smith → 2700.50
Alice Johnson → 500.75

---

## Enable AUTOCOMMIT Again

```sql
-- MySQL
SET autocommit = 1;

-- SQL Server
SET IMPLICIT_TRANSACTIONS OFF;
```

---

## ACID Properties Explained

Atomicity
The transaction is all or nothing. If debit fails, credit is also cancelled.

Consistency
The database remains correct after the transaction. No invalid data is saved.

Isolation
Multiple transactions do not affect each other. Each runs separately.

Durability
After commit, the data is permanently saved even if the system crashes.

---

## Why Transactions Are Important

Transactions are used in banking systems, online shopping, ticket booking, salary systems, and inventory management.
They prevent data loss and keep data accurate.

---

## Tools Used

SQL Server Management Studio 2022
(MySQL or phpMyAdmin can also be used with small syntax changes)

---

Updated by: Ankit Mahato
