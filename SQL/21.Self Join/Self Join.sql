-- ==========================================
-- CREATE TABLE: EMPLOYEES
-- ==========================================
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name NVARCHAR(50),
    manager_id INT
);

-- ==========================================
-- INSERT DATA INTO EMPLOYEES
-- ==========================================
INSERT INTO employees (id, name, manager_id)
VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'David', 2),
(5, 'Eva', 2);

-- ==========================================
-- SELF JOIN: FIND EMPLOYEE AND THEIR MANAGER
-- ==========================================
SELECT *
FROM employees AS A
JOIN employees AS B
ON A.manager_id = B.id;


