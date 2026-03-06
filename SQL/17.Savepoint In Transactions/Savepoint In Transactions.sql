-- Create Table
CREATE TABLE accounts (
    id INT PRIMARY KEY IDENTITY(1,1),
    account_holder NVARCHAR(255) NOT NULL,
    balance DECIMAL(18,2) NOT NULL
);

-- Insert Sample Data
INSERT INTO accounts (account_holder, balance) VALUES
('John Doe', 1000.00),
('Jane Smith', 2500.50),
('Alice Johnson', 500.75);

-- View Initial Data
SELECT * FROM accounts;

-- Start Transaction
BEGIN TRANSACTION;

-- Top up wallet by 1000
UPDATE accounts 
SET balance = balance + 1000 
WHERE id = 1;


-- Create a savepoint after the top-up
SAVE TRANSACTION after_wallet_topup;

-- Add another 10
UPDATE accounts 
SET balance = balance + 10 
WHERE id = 1;

-- Roll back only to the savepoint
ROLLBACK TRANSACTION after_wallet_topup;

-- Commit the transaction
COMMIT TRANSACTION;

-- Final balances
SELECT * FROM accounts;
