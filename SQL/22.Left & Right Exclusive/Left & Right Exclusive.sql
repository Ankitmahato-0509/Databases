-- Query: Create the Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(50),
    city NVARCHAR(50)
);

-- Query: Create the Orders table (no foreign key constraint)
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
);

-- Query: Insert sample customer data
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Alice', 'Mumbai'),
(2, 'Bob', 'Delhi'),
(3, 'Charlie', 'Bangalore'),
(4, 'David', 'Mumbai');

-- Query: Insert sample order data
INSERT INTO orders (order_id, customer_id, amount) VALUES
(101, 1, 500),
(102, 1, 900),
(103, 2, 300),
(104, 5, 700);

-- Query: Find customers who have no orders
SELECT * 
FROM customers AS c
LEFT JOIN orders AS o 
    ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

-- Query: Find orders with non-existing customers
SELECT * 
FROM customers AS c
RIGHT JOIN orders AS o 
    ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;
