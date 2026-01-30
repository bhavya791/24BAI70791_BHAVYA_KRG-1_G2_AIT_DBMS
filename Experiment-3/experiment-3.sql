SET SERVEROUTPUT ON;

DECLARE
    emp_id NUMBER := 101;
    emp_name VARCHAR2(50) := 'Bhavya';
    birth_year NUMBER := 2004;
    current_year NUMBER := 2026;
    age NUMBER;
BEGIN
    age := current_year - birth_year;

    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_name);
    DBMS_OUTPUT.PUT_LINE('Birth Year: ' || birth_year);
    DBMS_OUTPUT.PUT_LINE('Current Year: ' || current_year);
    DBMS_OUTPUT.PUT_LINE('Age: ' || age || ' years');
END;
/
