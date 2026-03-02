-- CREATE Table Accounts
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountHolder NVARCHAR(50),
    Balance DECIMAL(10,2)
);

-- INSERT sample data
INSERT INTO Accounts (AccountID, AccountHolder, Balance)
VALUES
    (1, 'Account A', 1000.00),
    (2, 'Account B', 2000.00);

----------------------------------------------------------
-- Transaction: Transfer money from Account A to Account B
----------------------------------------------------------
BEGIN TRANSACTION;

    -- Debit Account A
    UPDATE Accounts
    SET Balance = Balance - 500
    WHERE AccountID = 1;

    -- Credit Account B
    UPDATE Accounts
    SET Balance = Balance + 500
    WHERE AccountID = 2;

-- Check balances after transaction (before commit)
SELECT * FROM Accounts;

----------------------------------------------------------
-- Example rollback demonstration
----------------------------------------------------------
BEGIN TRANSACTION;

    -- (No changes here, just showing rollback)
    ROLLBACK TRANSACTION;

-- Check balances after rollback
SELECT * FROM Accounts;

----------------------------------------------------------
-- Final commit to make changes permanent
----------------------------------------------------------
COMMIT TRANSACTION;

-- Verify balances after permanent commit
SELECT * FROM Accounts;
