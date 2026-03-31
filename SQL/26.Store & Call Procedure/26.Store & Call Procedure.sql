-- CREATE DATABASE
CREATE DATABASE company_db;
GO

USE company_db;
GO

-- CREATE TABLE: accounts
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(50),
    balance DECIMAL(10,2)
);
GO

-- INSERT SAMPLE DATA
INSERT INTO accounts (account_id, account_name, balance) VALUES
(1, 'Rahul', 5000.00),
(2, 'Priya', 7500.50),
(3, 'Amit', 12000.75),
(4, 'Neha', 3000.25);
GO

-- VIEW DATA
SELECT * FROM accounts;
GO

-- STORED PROCEDURE (WITHOUT OUTPUT)
CREATE PROCEDURE check_balance
    @acc_id INT
AS
BEGIN
    SELECT balance
    FROM accounts
    WHERE account_id = @acc_id;
END;
GO

-- EXECUTE PROCEDURE
EXEC check_balance @acc_id = 1;
GO

-- STORED PROCEDURE (WITH OUTPUT PARAMETER)
CREATE PROCEDURE check_balance_output
    @acc_id INT,
    @bal DECIMAL(10,2) OUTPUT
AS
BEGIN
    SELECT @bal = balance
    FROM accounts
    WHERE account_id = @acc_id;
END;
GO

-- CALL PROCEDURE WITH OUTPUT
DECLARE @balance DECIMAL(10,2);

EXEC check_balance_output 
    @acc_id = 1, 
    @bal = @balance OUTPUT;

SELECT @balance AS balance;
GO