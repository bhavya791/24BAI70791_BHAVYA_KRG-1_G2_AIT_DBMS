CREATE TABLE employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER
);
INSERT INTO employee VALUES (101,'Rahul',3000);
INSERT INTO employee VALUES (102,'Sneha',4000);
INSERT INTO employee VALUES (103,'Amit',3500);
INSERT INTO employee VALUES (104,'Priya',4500);

COMMIT;
SET SERVEROUTPUT ON;

BEGIN
    UPDATE employee
    SET salary = salary + 500
    WHERE emp_id = 101;

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Rows Updated: ' || SQL%ROWCOUNT);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No rows were updated');
    END IF;
END;
/

DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id, emp_name, salary FROM employee;

    v_id employee.emp_id%TYPE;
    v_name employee.emp_name%TYPE;
    v_salary employee.salary%TYPE;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_id, v_name, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(v_id || ' ' || v_name || ' ' || v_salary);
    END LOOP;

    CLOSE emp_cursor;
END;
/

DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id FROM employee;

    v_id employee.emp_id%TYPE;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_id;

        IF emp_cursor%FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_id);
        END IF;

        EXIT WHEN emp_cursor%NOTFOUND;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Total Rows Fetched: ' || emp_cursor%ROWCOUNT);

    CLOSE emp_cursor;
END;
/
