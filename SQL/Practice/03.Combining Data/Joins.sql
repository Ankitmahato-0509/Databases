USE MyDatabase
/*

What is SQL JOINS?
-------------------------

SQL JOINs are used to combine rows from two or more tables based on a related column.


When to use SQL JOINs?
-------------------------

1.Recombine data from multiple tables.(inner,left,full joins used in it.)

Example: You have a table of customers and a table of orders. You can use a JOIN to combine the data from both tables to see which customers have placed orders.

2. Retrieve data from multiple tables in a single query.

Example: if you want the data of customers ,address ,phone no and their orders in a single query, you can use a JOIN to retrieve the data from both tables at once.

3.Data Enrichment "Getting Extra Information"(Left)

Example: You have a table of products and a table of categories. You can use a JOIN to combine the data from both tables to see which products belong to which categories.

4. check for existence of data in another table.(inner,left + where, full + where)

Example : You have a table of customers and a table of orders. You can use a JOIN to check if a customer has placed any orders.


TYPES OF SQL JOINS:

BASIC JOINS:  NO JOIN ,INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN
ADVANCED JOINS: CROSS JOIN, LEFT ANTI JOIN, RIGHT ANTI JOIN, FULL ANTI JOIN


*/

-- NO JOIN: Return data from table without combining them


/* Retrieve all data from customers and orders
in two different results */

SELECT * FROM Customers;

SELECT * FROM Orders;


-- INNER JOIN: Return row from both tables where there is a match in the related column.

/* Get all customers along with their orders,
but only for customers who have placed an order */

SELECT 
   customers.id,
   customers.first_name,
   orders.order_id,
   orders.sales
FROM Customers
INNER JOIN Orders 
ON id= customer_id

--------


SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM Customers AS c
INNER JOIN Orders AS o
ON c.id= o.customer_id


-- NOTE: Column Ambiguity: If both tables have a column with the same name, you need to specify which table the column belongs to by using the table name or alias.



-- LEFT JOIN: Return all rows from the left table and matching rows from the right table. If there is no match, NULL values are returned for columns from the right table.

/* Get all customers along with their orders,
including those without orders. */

 
 SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM Customers AS c 
LEFT JOIN Orders AS o
ON c.id= o.customer_id



-- RIGHT JOIN: Return all rows from the right table and matching rows from the left table. If there is no match, NULL values are returned for columns from the left table.

/* Get all customers along with their orders,
including orders without matching customers. */


 SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM Customers AS c
RIGHT JOIN Orders AS o
ON c.id= o.customer_id


-- FULL OUTER JOIN: Return all rows from both tables, with NULL values in columns where there is no match.
/* Get all customers along with their orders, even if there is no match in either table. */

SELECT 
   c.id,
   c.first_name,
   o.order_id,
   o.sales
FROM Customers AS c
FULL OUTER JOIN Orders AS o
ON c.id= o.customer_id



 -- Advanced Joins

 -- LEFT ANTI JOIN : Returns row from left that has NO MATCH in Right

 /* Get all customers who haven't place any order */

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id= o.customer_id
WHERE o.customer_id IS NULL


-------------------------------------------

/* Get all orders without matching customers */

SELECT *
FROM orders AS o 
LEFT JOIN customers AS c
ON c.id= o.customer_id
WHERE c.id IS NULL

 -- RIGHT ANTI JOIN : Returns row from RIGHT that has NO MATCH in Right

 /* Get all orders without matching customers */

 SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id= o.customer_id
WHERE c.id IS NULL


-- FULL ANTI JOIN  : Return onlys rows that Don't Match in either table

/* Find customers without orders and orders without customers */

 SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id= o.customer_id
WHERE c.id IS NULL
OR o.customer_id IS NULL


/* Get all customers along with their orders,
but only for customers who have placed an order (without using INNER JOIN)*/

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o. customer_id IS NOT NULL


-- CROSS JOIN: Returns the Cartesian product of both tables. Each row from the first table is combined with all rows from the second table.

SELECT *
FROM customers AS c
CROSS JOIN orders AS o

-- ADVANCED JOINS

-- MuLtiple Table Joins: You can join more than two tables in a single query by chaining multiple JOIN clauses together.

/*
Using SalesDB, Retrieve a list of all orders, along with
the related customer, product, and employee details.

For each order, display:
- Order ID

- Customer's name

- Product name
- Sales amount
- Product price
- Salesperson's name

*/

USE SalesDB

SELECT
o.OrderID,
o.Sales,
c.FirstName + ' ' + 
c.LastName AS CustomerName,
p.Product AS ProductName,
p.price,
e.FirstName + ' ' + e.LastName AS SalesPersonName
FROM Sales.Orders As o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p 
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID








