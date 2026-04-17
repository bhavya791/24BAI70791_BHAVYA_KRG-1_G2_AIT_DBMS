CREATE TABLE employee (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    dept VARCHAR(50)
);

INSERT INTO employee VALUES (101, 'Rahul', 50000, 'IT');
INSERT INTO employee VALUES (102, 'Sneha', 60000, 'HR');
INSERT INTO employee VALUES (103, 'Amit', 55000, 'Finance');

CREATE OR REPLACE FUNCTION display_employees()
RETURNS VOID AS $$
DECLARE
    emp_record RECORD;
BEGIN
    FOR emp_record IN SELECT * FROM employee LOOP
        RAISE NOTICE 'ID: %, Name: %, Salary: %, Dept: %',
            emp_record.emp_id,
            emp_record.emp_name,
            emp_record.salary,
            emp_record.dept;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

SELECT display_employees();
