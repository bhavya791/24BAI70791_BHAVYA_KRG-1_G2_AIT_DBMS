# Experiment 7 — Stored Procedure with Gender-Based Employee Count (PL/SQL)

| Field | Details |
|---|---|
| **Student Name** | Bhavya |
| **UID** | 24BAI70791 |
| **Branch** | CSE (AI & ML) |
| **Section / Group** | 24AIT_KRG-1 / G2 |
| **Semester** | 4 |
| **Subject Name** | Database Management System |
| **Subject Code** | 24CSH-298 |

---

## Table of Contents

1. [Aim of the Session](#1-aim-of-the-session)
2. [Software Requirements](#2-software-requirements)
3. [Objectives](#3-objectives)
4. [Procedure of the Experiment](#4-procedure-of-the-experiment)
5. [Practical / Experiment Steps](#5-practical--experiment-steps)
6. [Input / Output Details and Screenshots](#6-input--output-details-and-screenshots)
7. [Learning Outcome](#7-learning-outcome)

---

## 1. Aim of the Session

To design and implement a stored procedure that accepts **gender** as an input parameter and returns the **total number of employees** based on the given gender, demonstrating procedural programming and parameterized logic in PL/SQL.

---

## 2. Software Requirements

**Database Management System:**
- Oracle Database Express Edition (Oracle XE)
- PostgreSQL Database

**Database Administration Tool / Client Tool:**
- Oracle SQL Developer (for Oracle XE)
- pgAdmin (for PostgreSQL)

---

## 3. Objectives

- To understand and implement **stored procedures** in PL/SQL
- To use **IN and OUT parameters** effectively
- To perform **dynamic querying based on user input**
- To apply **aggregate functions (`COUNT`)** inside procedures

---

## 4. Procedure of the Experiment

1. Open the database tool and connect to the database.
2. Create the `employees` table.
3. Insert sample employee records.
4. Verify data using a `SELECT` query.
5. Create a stored procedure with input and output parameters.
6. Use `COUNT(*)` to count employees based on gender.
7. Compile and save the procedure.
8. Call the procedure by passing a gender value.
9. Display the result using an output statement.
10. Verify the correctness of the output.

---

## 5. Practical / Experiment Steps

### Step 1 — Create Table
```sql
CREATE TABLE employees (
    emp_id    SERIAL PRIMARY KEY,
    emp_name  VARCHAR(50),
    gender    VARCHAR(10),
    salary    NUMERIC(10,2)
);
```

### Step 2 — Insert Sample Data
```sql
INSERT INTO employees (emp_name, gender, salary) VALUES
    ('Amit',  'Male',   30000),
    ('Riya',  'Female', 35000),
    ('John',  'Male',   28000),
    ('Sneha', 'Female', 40000);
```

### Step 3 — Create Stored Procedure
```sql
CREATE OR REPLACE PROCEDURE get_employee_count_by_gender(
    IN    p_gen      VARCHAR(20),
    OUT   count_emp  INT,
    INOUT status     VARCHAR
)
AS $$
BEGIN
    SELECT COUNT(*) INTO count_emp
    FROM employees
    WHERE gender = p_gen;

    status := 'SUCCESS';
END;
$$ LANGUAGE plpgsql;
```

### Step 4 — Call the Procedure
```sql
DO $$
DECLARE
    gen          VARCHAR(20) := 'Male';
    count_by_gen INT;
    status       VARCHAR(20) := 'Fail';
BEGIN
    CALL get_employee_count_by_gender(gen, count_by_gen, status);

    RAISE NOTICE 'GENDER IS % YOUR COUNT IS % AND STATUS IS %',
        gen, count_by_gen, status;
END;
$$;
```

---

## 6. Input / Output Details and Screenshots

### Screenshot 1 — Table Creation

| Screenshot |
|:---:|
| ![Table Creation](exp-8-screenshots/8.1.png) |

---

### Screenshot 2 — Data Insertion

| Screenshot |
|:---:|
| ![Data Insertion](exp-8-screenshots/8.2.png) |

---

### Screenshot 3 — Stored Procedure

| Screenshot |
|:---:|
| ![Stored Procedure](exp-8-screenshots/8.3.png) |

---

### Screenshot 4 — Procedure Execution & Output

| Screenshot |
|:---:|
| ![Procedure Output](exp-8-screenshots/8.4.png) |

---

## 7. Learning Outcome

- Understood the concept of **stored procedures** in PL/SQL.
- Learned to use **IN, OUT, and INOUT parameters** in procedures.
- Gained knowledge of passing **dynamic input values** at runtime.
- Applied the **`COUNT()` aggregate function** for data analysis inside a procedure.
- Developed **reusable database logic** that can be called multiple times.
- Understood **real-world data handling scenarios** using procedural SQL.
