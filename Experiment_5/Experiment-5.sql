CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);

INSERT INTO employee VALUES (101, 'Rahul', 25000);
INSERT INTO employee VALUES (102, 'Neha', 30001);
INSERT INTO employee VALUES (103, 'Amit', 18000);
INSERT INTO employee VALUES (104, 'Priya', 27555);
INSERT INTO employee VALUES (105, 'Karan', 40000);

SELECT * FROM employee;

SELECT emp_id, emp_name, salary
FROM employee
WHERE MOD(salary, 2) = 0;

SELECT emp_id, emp_name, salary
FROM employee
WHERE MOD(salary, 2) = 1;

SELECT emp_id, emp_name, salary,
CASE 
    WHEN MOD(salary, 2) = 0 THEN 'Even Salary'
    ELSE 'Odd Salary'
END AS salary_type
FROM employee;
