-- Create Table
CREATE TABLE account (
    account_id INT PRIMARY KEY IDENTITY(1,1),
    account_holder NVARCHAR(255) NOT NULL,
    balance DECIMAL(18,2) NOT NULL
);


-- Insert Sample Data
INSERT INTO account (account_holder, balance) VALUES
('John Doe', 1000.00),
('Jane Smith', 2500.50),
('Alice Johnson', 500.75);


-- View Initial Data
SELECT * FROM account;



-- Start Transaction
BEGIN TRANSACTION;

UPDATE account 
SET balance = balance - 200.00
WHERE account_id = 1;

UPDATE account 
SET balance = balance + 200.00
WHERE account_id = 2;

-- Check Data Before Rollback
SELECT * FROM account;

-- Cancel Changes
ROLLBACK TRANSACTION;

-- Check Data After Rollback
SELECT * FROM account;
