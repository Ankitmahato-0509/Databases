CREATE DATABASE EXTRA;
USE EXTRA;


-- ==========================================
-- CREATE TABLE: customers
-- ==========================================
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(50) NOT NULL,
    city NVARCHAR(50)
);

-- ==========================================
-- INSERT DATA INTO customers
-- ==========================================
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Alice', 'Mumbai'),
(2, 'Bob', 'Delhi'),
(3, 'Charlie', 'Bangalore'),
(4, 'David', 'Mumbai');

-- ==========================================
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

-- ==========================================
-- INSERT DATA INTO orders
-- ==========================================
INSERT INTO orders (order_id, customer_id, amount) VALUES
(101, 1, 500),
(102, 1, 900),
(103, 2, 300),
(104, 4, 1700);

-- ==========================================
-- QUERY: Orders with amount greater than average
-- ==========================================
SELECT o.order_id,
       o.customer_id,
       o.amount
FROM orders AS o
WHERE o.amount > (
    SELECT AVG(amount)
    FROM orders
);

