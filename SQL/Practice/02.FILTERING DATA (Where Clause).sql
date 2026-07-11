-- The WHERE operator is used to filter records in a SQL query based on specified conditions.
--It allows you to retrieve only the rows that meet certain criteria. 

--1.) Comparison Operators: These operators compare values and include =, !=, <, >, <=, >=. 

-- Retrieve all customers from Germany

SELECT * 
FROM CUSTOMERS
WHERE country = 'Germany'

-- Retrieve all customers who are not from Germany

SELECT * 
FROM CUSTOMERS
WHERE country != 'Germany'


-- Retrieve all customers with a score greater than 500
SELECT *
FROM CUSTOMERS
WHERE score > 500;

-- Retrieve all customers with a score more than or equal to 500

SELECT *
FROM CUSTOMERS
WHERE score >= 500;

-- Retrieve all customers with a score less than 500

SELECT *
FROM CUSTOMERS
WHERE score < 500;


-- 2) Logical Operators: These operators combine multiple conditions and include AND, OR, NOT.

-- Retrieve all customers from USA with a score greater than 500

SELECT * FROM CUSTOMERS
WHERE country = 'USA' AND score > 500;

-- Retrieve all customers from USA or score greater than 500

SELECT * FROM CUSTOMERS
WHERE country = 'USA' OR score > 500;

-- Retrieve all customers who score not less than 500

SELECT * FROM CUSTOMERS
WHERE NOT score < 500;

--3) Range Operators: These operators check if a value falls within a specified range and include BETWEEN.
-- Retrieve all customers with a score between 500 and 1000

SELECT * 
FROM CUSTOMERS
WHERE SCORE BETWEEN 500 AND 1000; 
--Note: Included both 500 and 1000 in the result set.


SELECT * 
FROM CUSTOMERS
WHERE SCORE >= 500 AND SCORE <= 1000;
-- Note: This query achieves the same result as the previous one, explicitly specifying the range conditions.


-- 4.) Membership Operators: These operators check if a value is present in a list of values and include IN.

-- Retrieve all customers from Germany, USA, or Canada

SELECT * 
FROM CUSTOMERS 
WHERE country IN ('Germany', 'USA', 'Canada');

-- Retrieve all customers whose score is either 500, 750, or 1000
SELECT *
FROM CUSTOMERS
WHERE score IN (500, 750, 1000);



-- Retrieve 

SELECT * 
FROM CUSTOMERS 
WHERE country = 'Germany'
     OR country = 'USA'
     OR country = 'France'
     OR country= 'Canada'

SELECT * 
FROM customers
WHERE country IN ('Germany','USA','France','Canada')


-- 5.) Search operator 

-- Find all customers whose first name starts with M

SELECT * from customers
where first_name LIKE 'M%'

-- Find all customers whose first name starts with r

SELECT * from customers
where first_name LIKE '%r'


-- Find all customers whose first name has 'r' in the 3rd position


SELECT * from customers
where first_name LIKE '__r%'





