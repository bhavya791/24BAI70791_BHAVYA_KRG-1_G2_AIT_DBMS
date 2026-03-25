-- Step 1: Create Tables
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary INT
);

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Step 2: Insert Data
INSERT INTO Employee VALUES
(1, 'Aman', 101, 50000),
(2, 'Riya', 102, 60000),
(3, 'Karan', 101, 55000),
(4, 'Neha', 103, 70000);

INSERT INTO Department VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance');

-- Step 3: Simple View
CREATE VIEW simple_view AS
SELECT name, salary
FROM Employee;

SELECT * FROM simple_view;

-- Step 4: Complex View
CREATE VIEW complex_view AS
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM Employee e
JOIN Department d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

SELECT * FROM complex_view;

-- Step 5: Simulated Materialized View (using table)
CREATE TABLE mat_view AS
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM Employee e
JOIN Department d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Query it
SELECT * FROM mat_view;

-- Step 6: Simulate Refresh (recreate table)
DROP TABLE mat_view;

CREATE TABLE mat_view AS
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM Employee e
JOIN Department d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;
