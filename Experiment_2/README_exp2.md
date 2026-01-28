# Experiment 02 – SQL Filtering, Grouping and Sorting

## Student Information
- Name:Bhavya
- UID: 24BAI70791
- Branch: CSE(AIML)
- Section: 24AIT-KRG-G2  
- Semester: 4
- Subject: Database Management System
- Date of Performance: 16/01/2026  

---

## Aim
To design and implement a sample database system using SQL commands to perform filtering, sorting, grouping, and aggregation operations and to understand the difference between row-level and group-level filtering.

---

## Software Requirements
- PostgreSQL  
- pgAdmin  

---

## Objectives
- Retrieve specific data using filtering conditions  
- Sort query results using single and multiple attributes  
- Perform aggregation using grouping techniques  
- Apply conditions on aggregated data  
- Understand real-world analytical SQL queries  

---
## Procedure of the Experiment
Start the system and log in to the database.  
Create the EMPLOYEE table using SQL commands.  
Insert employee records into the table.  
Execute SELECT queries using GROUP BY, WHERE, HAVING, and ORDER BY clauses.  
Verify the output after execution.  
Save the work and take screenshots for record.  
---

---

## SQL Code

```sql
CREATE TABLE EMPLOYEE (
    emp_id NUMERIC PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary NUMERIC,
    joining_date DATE
);

INSERT INTO EMPLOYEE VALUES (1, 'Bhavya', 'IT', 48000, DATE '2022-02-10');
INSERT INTO EMPLOYEE VALUES (2, 'Myra', 'IT', 42000, DATE '2021-07-15');
INSERT INTO EMPLOYEE VALUES (3, 'Saksham', 'HR', 35000, DATE '2020-04-20');
INSERT INTO EMPLOYEE VALUES (4, 'Anant', 'HR', 30000, DATE '2019-09-12');
INSERT INTO EMPLOYEE VALUES (5, 'Srijan', 'Sales', 26000, DATE '2021-11-05');
INSERT INTO EMPLOYEE VALUES (6, 'Yash', 'Sales', 38000, DATE '2020-03-18');

SELECT department, AVG(salary) AS avg_salary
FROM EMPLOYEE
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM EMPLOYEE
WHERE salary > 20000
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM EMPLOYEE
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000;

SELECT department, AVG(salary) AS avg_salary
FROM EMPLOYEE
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;
```

---

## Learning Outcomes
- Ability to create relational database tables
- Understanding of row-level filtering using WHERE
- Understanding of group-level filtering using HAVING
- Application of aggregate functions
- Clear understanding of SQL execution order

---

## Screenshot
<img src="Experiment_2 screenshots/query1.png" width="700">
<img src="Experiment_2 screenshots/query2.png" width="700">
<img src="Experiment_2 screenshots/query3.png" width="700">
<img src="Experiment_2 screenshots/query4.png" width="700">
<img src="Experiment_2 screenshots/query5.png" width="700">
<img src="Experiment_2 screenshots/query6.png" width="700">
