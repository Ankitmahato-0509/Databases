-- CREATE TABLE: CUSTOMERS
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(50),
    city NVARCHAR(50)
);

-- INSERT DATA INTO CUSTOMERS
INSERT INTO customers (customer_id, name, city)
VALUES
(1, 'Alice', 'Mumbai'),
(2, 'Bob', 'Delhi'),
(3, 'Charlie', 'Bangalore'),
(4, 'David', 'Mumbai');

-- CREATE TABLE: ORDERS
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT,
    CONSTRAINT fk_customer 
        FOREIGN KEY (customer_id) 
        REFERENCES customers(customer_id)
);

-- INSERT DATA INTO ORDERS
INSERT INTO orders (order_id, customer_id, amount)
VALUES
(101, 1, 500),
(102, 1, 900),
(103, 2, 300),
(104, 4, 1700);

-- FULL OUTER JOIN USING LEFT + RIGHT JOIN
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id

UNION

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id;

-- CROSS JOIN (CARTESIAN PRODUCT)
SELECT *
FROM customers
CROSS JOIN orders;