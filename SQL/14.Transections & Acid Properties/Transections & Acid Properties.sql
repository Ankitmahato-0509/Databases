-- Create a simple transaction to transfer money between two accounts in a banking system.
--The transaction should ensure that if any part of the transfer fails, the entire transaction is rolled back to maintain data integrity.


-- CREATE Table Accounts
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountHolder NVARCHAR(50),
    Balance DECIMAL(10,2)
);

-- INSERT INTO Accounts
INSERT INTO Accounts (AccountID, AccountHolder, Balance)
VALUES
(1, 'Account A', 1000.00),
(2, 'Account B', 2000.00);



-- Transaction to transfer money from Account A to Account B

BEGIN TRANSACTION;

BEGIN TRY
    -- Debit Account A
    UPDATE Accounts
    SET Balance = Balance - 500
    WHERE AccountID = 1;

    -- Credit Account B
    UPDATE Accounts
    SET Balance = Balance + 500
    WHERE AccountID = 2;

    -- Commit if successful
    COMMIT TRANSACTION;
    PRINT 'Transaction committed successfully';
END TRY
BEGIN CATCH
    -- Rollback if error occurs
    ROLLBACK TRANSACTION;
    PRINT 'Transaction failed, rolled back';
    PRINT ERROR_MESSAGE();
END CATCH;


-- Check the balances after the transaction

SELECT * FROM Accounts;


