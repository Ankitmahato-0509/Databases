# DBMS Transaction and ACID Properties

This project demonstrates **Database Transactions** and **ACID Properties** using a banking money transfer example in **Microsoft SQL Server**.

It is useful for:

* DBMS practical exams
* Viva preparation
* Beginners learning SQL transactions

---

## What is a Transaction?

A **transaction** is a group of SQL operations executed as a single unit of work.

* If all operations succeed → **COMMIT**
* If any operation fails → **ROLLBACK**

Example: Transferring money from one bank account to another.

---

## Create Table: Accounts

```sql
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountHolder NVARCHAR(50),
    Balance DECIMAL(10,2)
);
```

---

## Insert Sample Data

```sql
INSERT INTO Accounts (AccountID, AccountHolder, Balance)
VALUES
    (1, 'Account A', 1000.00),
    (2, 'Account B', 2000.00);
```

### Initial Balances

| Account   | Balance |
| --------- | ------- |
| Account A | 1000    |
| Account B | 2000    |

---

# Transaction Example – Money Transfer

Transfer 500 from Account A to Account B.

```sql
BEGIN TRANSACTION;

    -- Debit Account A
    UPDATE Accounts
    SET Balance = Balance - 500
    WHERE AccountID = 1;

    -- Credit Account B
    UPDATE Accounts
    SET Balance = Balance + 500
    WHERE AccountID = 2;

-- Check balances before final commit
SELECT * FROM Accounts;

COMMIT TRANSACTION;
```

---

## Example: Rollback Demonstration

```sql
BEGIN TRANSACTION;

    -- No permanent change
    ROLLBACK TRANSACTION;

-- Check balances after rollback
SELECT * FROM Accounts;
```

Rollback cancels the transaction and restores previous values.

---

## Final Result After Commit

| Account   | Balance |
| --------- | ------- |
| Account A | 500     |
| Account B | 2500    |

---

# ACID Properties Explained

### Atomicity

Transaction is all or nothing.
If debit fails, credit is also cancelled.

### Consistency

Database remains valid before and after the transaction.
Total money remains consistent.

### Isolation

Multiple transactions execute independently without affecting each other.

### Durability

Once committed, data is permanently saved even if the system crashes.

---

# Why Transactions Are Important

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
* MySQL (with minor syntax changes)
* phpMyAdmin (for MySQL environments)

---

### Author

Ankit Mahato
