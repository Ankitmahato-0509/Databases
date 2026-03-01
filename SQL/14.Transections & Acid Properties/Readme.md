# DBMS Transaction and ACID Properties

This project explains database transactions and ACID properties using a banking money transfer example in SQL Server.
It is useful for DBMS exams, viva preparation, and beginners learning SQL transactions.

---

## 1. What is a Transaction?

A transaction is a group of SQL operations that execute together as one unit.

If all steps succeed → COMMIT
If any step fails → ROLLBACK

Example: Money transfer between two bank accounts.

---

## 2. Table Creation

We create an Accounts table with Account ID, Account Holder name, and Balance.

```sql
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountHolder NVARCHAR(50),
    Balance DECIMAL(10,2)
);
```

---

## 3. Insert Sample Data

```sql
INSERT INTO Accounts (AccountID, AccountHolder, Balance)
VALUES
(1, 'Account A', 1000.00),
(2, 'Account B', 2000.00);
```

Initial Balance:

Account A → 1000
Account B → 2000

---

## 4. Transaction Code (Money Transfer)

This transaction transfers 500 from Account A to Account B.
If any error happens, the transaction is rolled back.

```sql
BEGIN TRANSACTION;

BEGIN TRY
    UPDATE Accounts
    SET Balance = Balance - 500
    WHERE AccountID = 1;

    UPDATE Accounts
    SET Balance = Balance + 500
    WHERE AccountID = 2;

    COMMIT TRANSACTION;
    PRINT 'Transaction committed successfully';
END TRY

BEGIN CATCH
    ROLLBACK TRANSACTION;
    PRINT 'Transaction failed, rolled back';
    PRINT ERROR_MESSAGE();
END CATCH;
```

---

## 5. Check Result

```sql
SELECT * FROM Accounts;
```

Final Balance:

Account A → 500
Account B → 2500

---

## 6. ACID Properties Explained

Atomicity
The transaction is all or nothing. If debit fails, credit is also cancelled.

Consistency
The database remains correct after the transaction. No invalid data is saved.

Isolation
Multiple transactions do not affect each other. Each runs separately.

Durability
After commit, the data is permanently saved even if the system crashes.

---

## 7. Why Transactions Are Important

Transactions are used in banking systems, online shopping, ticket booking, salary systems, and inventory management.
They prevent data loss and keep data accurate.

---

## 8. Tools Used

SQL Server Management Studio 2022
(MySQL or phpMyAdmin can also be used with small syntax changes)

---

## 9. Author

Ankit Mahato

