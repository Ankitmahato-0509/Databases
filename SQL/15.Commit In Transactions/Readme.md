# DBMS Transaction and ACID Properties (SQL Server)

This project explains **Database Transactions**, **Implicit Transactions (AUTOCOMMIT behavior)**, and **ACID properties** using a banking money transfer example in **Microsoft SQL Server**.

---

## What is a Transaction?

A **transaction** is a group of SQL operations executed as a single unit of work.

* If all steps succeed → **COMMIT**
* If any step fails → **ROLLBACK**

Example: Money transfer between two bank accounts.

---

## AUTOCOMMIT in SQL Server

In SQL Server, each statement is committed automatically by default (similar to AUTOCOMMIT = ON in MySQL).

To control transactions manually, SQL Server provides:

```sql
SET IMPLICIT_TRANSACTIONS ON;
```

When **IMPLICIT_TRANSACTIONS is ON**:

* SQL Server automatically starts a transaction.
* You must explicitly use `COMMIT` or `ROLLBACK`.

To return to default behavior:

```sql
SET IMPLICIT_TRANSACTIONS OFF;
```

In banking systems, manual transaction control is preferred to prevent partial updates.

---

## Table Creation

We create an `account` table with account ID, account holder name, and balance.

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

### Initial Balance

| Account Holder | Balance |
| -------------- | ------- |
| John Doe       | 1000.00 |
| Jane Smith     | 2500.50 |
| Alice Johnson  | 500.75  |

---

## View Initial Data

```sql
SELECT * FROM account;
```

---

# Transaction Example – Money Transfer

Transfer **200** from John Doe (ID = 1) to Jane Smith (ID = 2).

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

### Final Balance

| Account Holder | Balance |
| -------------- | ------- |
| John Doe       | 800.00  |
| Jane Smith     | 2700.50 |
| Alice Johnson  | 500.75  |

---

## ACID Properties Explained

### Atomicity

Transaction is all or nothing. If debit fails, credit is also cancelled.

### Consistency

Database remains valid before and after the transaction. No invalid data is saved.

### Isolation

Multiple transactions execute independently without affecting each other.

### Durability

Once committed, data is permanently stored even if the system crashes.

---

## Why Transactions Are Important

Transactions are critical in:

* Banking systems
* Online shopping
* Ticket booking
* Salary systems
* Inventory management

They prevent data corruption and ensure accuracy.

---

## Tools Used

* **SQL Server Management Studio**
* MySQL (with minor syntax adjustments)
* phpMyAdmin (for MySQL environments)

---

Updated by:
Ankit Mahato

