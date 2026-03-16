-- Retrieve all Customer Data

USE MyDatabase;

SELECT * 
FROM Customers;

-- Retrieve all Order Data

SELECT *
FROM Orders;

-- Retrieve each customer's name, country and score

SELECT 
    first_name,
    Country,
    Score
FROM Customers;

-- Retrieve customers with a score not equal to 0
SELECT *
FROM Customers
WHERE Score != 0;


-- Retrieve customers from  germany
SELECT *
FROM Customers
WHERE Country = 'Germany';

-- Retrieve all customers and sort the results by the highest score first

SELECT *
FROM Customers
ORDER BY Score DESC;


-- Retrieve all customers and sort the results by the country and then by the highest score

SELECT *
FROM Customers
ORDER BY Country, Score DESC;


-- Find the total score of all country

SELECT Country, 
SUM(Score) AS TotalScore
FROM Customers
GROUP BY Country;

-- Find the total score and total number of customers for each country

SELECT Country, 
SUM(Score) AS TotalScore
, COUNT(id) AS TotalCustomers
FROM Customers
GROUP BY Country;

/* Find the average score for each country 
considering only customers with a score not equal to And return 
only those countries with an average score greater than 430*/



SELECT Country, 
AVG(Score) AS AverageScore 
FROM Customers
WHERE Score != 0 
GROUP BY Country 
HAVING AVG(Score) > 430;

-- Return unique list of countries from the Customers table

SELECT DISTINCT Country
FROM Customers;


-- Retrieve only customers

SELECT TOP 3 *
FROM Customers

-- Retrieve the top 3 customers with the highest score

SELECT TOP 3 *
FROM Customers
ORDER BY Score DESC;

-- Retrieve the top 2 customers with the lowest score

SELECT TOP 2 *
FROM Customers
ORDER BY Score ASC;

-- Retrieve the top 2 most recent orders based on the order date

SELECT  TOP 2 *
FROM orders
order by order_date DESC

--DDL Statement
---------------------------

/*Create a new table called persons
with columns: id, person name, birth date, and phone */
USE MyDatabase


CREATE TABLE persons (
id INT PRIMARY KEY NOT NULL,
PERSON_NAME VARCHAR(255) NOT NULL,
BIRTH_DATE DATE,
PHONE VARCHAR(20) NOT NULL
);

-- Add a new column called email to the persons table
ALTER TABLE persons
ADD email VARCHAR(255) NOT NULL;

-- DELETE the persons table

DROP TABLE persons;


-- DML Statement
------------------------------

-- Insert a new record into the persons table with the following values:

INSERT INTO customers (id, first_name, country, score)
VALUES 
(6, 'Anna', 'USA', NULL);


SELECT * FROM customers


-- Create Table persons

CREATE TABLE persons (
id INT PRIMARY KEY NOT NULL,
PERSON_NAME VARCHAR(255) NOT NULL,
BIRTH_DATE DATE,
PHONE VARCHAR(20) NOT NULL
);


-- Copy data from the customers table to the persons table

INSERT INTO persons (id, person_name, birth_date, phone)
SELECT id, first_name, NULL,'UNKNOWN'
FROM customers;

SELECT * FROM persons;

-- Upadte the score where id = 6
Update Customers SET score = 500
WHERE id = 6;

SELECT * FROM Customers
WHERE id = 6;


-- Change the score of customer with ID 10 to O and update the country to 'UK'

Update Customers
SET score = 0, country = 'UK'
WHERE id = 10;

SELECT * FROM Customers

UPDATE Customers
SET score = 100
WHERE SCORE = 0;

-- Delete the record of the customer with ID greter than 5

DELETE FROM Customers
WHERE id > 5;


-- Delete all records from the persons table
DELETE FROM persons


-- Delete all records from the persons table 
TRUNCATE TABLE persons



















