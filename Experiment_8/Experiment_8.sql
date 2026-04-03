CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10),
    salary NUMERIC(10,2)
);

INSERT INTO employees (emp_name, gender, salary) VALUES
('Amit', 'Male', 30000),
('Riya', 'Female', 35000),
('John', 'Male', 28000),
('Sneha', 'Female', 40000);

CREATE OR REPLACE PROCEDURE get_employee_count_by_gender(
    IN p_gen VARCHAR(20),
    OUT count_emp INT,
    INOUT status VARCHAR
)
AS $$
BEGIN
    SELECT COUNT(*) INTO count_emp
    FROM employees
    WHERE gender = p_gen;

    status := 'SUCCESS';
END;
$$ LANGUAGE plpgsql;

DO $$
DECLARE
    gen VARCHAR(20) := 'Male';
    count_by_gen INT;
    status VARCHAR(20) := 'Fail';
BEGIN
    CALL get_employee_count_by_gender(gen, count_by_gen, status);

    RAISE NOTICE 'GENDER IS % YOUR COUNT IS % AND STATUS IS %',
        gen, count_by_gen, status;
END;
$$;
