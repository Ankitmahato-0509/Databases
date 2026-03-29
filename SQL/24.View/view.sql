-- CREATE TABLE: customers
-- ==========================================
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(50) NOT NULL,
    city NVARCHAR(50)
);


-- INSERT DATA INTO customers
-- ==========================================
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Alice', 'Mumbai'),
(2, 'Bob', 'Delhi'),
(3, 'Charlie', 'Bangalore'),
(4, 'David', 'Mumbai');


-- CREATE TABLE: orders
-- ==========================================
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    amount INT NOT NULL,
    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);


-- INSERT DATA INTO orders
-- ==========================================
INSERT INTO orders (order_id, customer_id, amount) VALUES
(101, 1, 500),
(102, 1, 900),
(103, 2, 300),
(104, 4, 1700);


-- CREATE VIEW: v1
-- ==========================================
CREATE VIEW v1 AS 
SELECT name, city 
FROM customers;


-- QUERY VIEW: v1
-- ==========================================
SELECT * FROM v1;

SELECT * 
FROM v1 
WHERE name = 'David';


-- CREATE VIEW: v2
-- ==========================================
CREATE VIEW v2 AS 
SELECT c.customer_id, c.name, o.order_id, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- QUERY VIEW: v2
-- ==========================================
SELECT * FROM v2;


-- DROP VIEW 
-- ==========================================
-- DROP VIEW v1;
