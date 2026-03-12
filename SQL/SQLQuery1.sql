CREATE TABLE employees (
    employee_name VARCHAR(50),
    salary INT
);

INSERT INTO employees (employee_name, salary)
VALUES 
('Alice', 4000),
('Bob', 5000),
('Charlie', 6000),
('Diana', 7000),
('Ethan', 8000);


SELECT employee_name, 
       salary,
       (SELECT AVG(salary) FROM employees) AS average_salary 
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);






