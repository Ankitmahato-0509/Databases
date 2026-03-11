-- Create Departments table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    ManagerName VARCHAR(100),
    Headquarter VARCHAR(100)
);

-- Insert data into Departments
INSERT INTO Departments (DeptID, DeptName, ManagerName, Headquarter) VALUES
(1, 'HR', 'Priya Menon', 'Mumbai'),
(2, 'Finance', 'Raghav Sharma', 'Delhi'),
(3, 'Engineering', 'Deepak Verma', 'Bangalore'),
(4, 'Marketing', 'Sneha Iyer', 'Hyderabad'),
(5, 'Legal', 'Amit Desai', 'Chennai');


-- Create Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Age INT,
    DeptID INT, -- Foreign Key
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);



-- Insert data into Employees
INSERT INTO Employees (EmpID, EmpName, Age, DeptID) VALUES
(101, 'Aarav Mehta', 28, 3),
(102, 'Neha Singh', 31, 2),
(103, 'Rohit Kapoor', 26, 1),
(104, 'Anjali Rao', 29, 4),
(105, 'Karan Patel', 27, 3),
(106, 'Simran Kaur', 30, NULL), -- No department assigned
(107, 'Vikram Joshi', 33, NULL); -- Invalid DeptID replaced with NULL

-- View Employees
SELECT * FROM Employees;
SELECT * FROM Departments;

-- INNER JOIN: Employees with valid Departments
SELECT e.EmpName, d.DeptName, d.ManagerName, d.Headquarter
FROM Employees e
INNER JOIN Departments d
    ON e.DeptID = d.DeptID;

-- RIGHT JOIN: All Departments, even if no Employees
SELECT e.EmpName, d.DeptName, d.ManagerName, d.Headquarter
FROM Employees e
RIGHT JOIN Departments d
    ON e.DeptID = d.DeptID;

-- LEFT JOIN: All Employees, even if no Department assigned
SELECT e.EmpName, d.DeptName, d.ManagerName, d.Headquarter
FROM Employees e
LEFT JOIN Departments d
    ON e.DeptID = d.DeptID;

-- FULL JOIN: All Employees and Departments
SELECT e.EmpName, d.DeptName, d.ManagerName, d.Headquarter
FROM Employees e
FULL JOIN Departments d
    ON e.DeptID = d.DeptID;

-- Total Employees per Department (Age > 30), sorted by count descending
SELECT d.DeptName, COUNT(e.EmpID) AS TotalEmployeesOver30
FROM Employees e
INNER JOIN Departments d
    ON e.DeptID = d.DeptID
WHERE e.Age > 30
GROUP BY d.DeptName
ORDER BY TotalEmployeesOver30 DESC;

-- Departments with 2 or more Employees (Age > 25), sorted alphabetically
SELECT d.DeptName, COUNT(e.EmpID) AS TotalEmployeesOver25
FROM Employees e
INNER JOIN Departments d
    ON e.DeptID = d.DeptID
WHERE e.Age > 25
GROUP BY d.DeptName
HAVING COUNT(e.EmpID) >= 2
ORDER BY d.DeptName ASC;


