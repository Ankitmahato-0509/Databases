-- ==========================================
-- CREATE TABLE: CUSTOMERS
-- ==========================================
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(50),
    city NVARCHAR(50)
);

-- ==========================================
-- INSERT DATA INTO CUSTOMERS
-- ==========================================
INSERT INTO customers (customer_id, name, city)
VALUES
(1, 'Alice', 'Mumbai'),
(2, 'Bob', 'Delhi'),
(3, 'Charlie', 'Bangalore'),
(4, 'David', 'Mumbai');


-- ==========================================
-- CREATE TABLE: ORDERS
-- ==========================================
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ==========================================
-- INSERT DATA INTO ORDERS
-- ==========================================
INSERT INTO orders (order_id, customer_id, amount)
VALUES
(101, 1, 500),
(102, 1, 900),
(103, 2, 300),
(104, 4, 1700);



-- ==========================================
-- QUERY 1: Retrieve all customers and their orders (including customers without orders)
-- ==========================================
SELECT *
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id;


-- ==========================================
-- QUERY 2: Retrieve all orders and their customers (including orders without customers)
-- ==========================================
SELECT *
FROM customers c
RIGHT JOIN orders o
    ON c.customer_id = o.customer_id;