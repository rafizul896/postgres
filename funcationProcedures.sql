SELECT count(*) from employees;

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
    SELECT count(*) FROM employees
$$

SELECT emp_count();

CREATE Function delete_emp(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees WHERE employee_id = p_emp_id
$$

SELECT delete_emp(49);


-- Exploring Stored Procedure in PostgreSQL 

CREATE OR REPLACE PROCEDURE delete_emp_by_id(p_emp_id INT)
LANGUAGE plpgsql
AS
$$
    DECLARE
    emp_id INT; 
    BEGIN
        SELECT employee_id INTO emp_id FROM employees WHERE employee_id = p_emp_id;
        DELETE FROM employees WHERE employee_id = emp_id;

        RAISE NOTICE 'Employee delete is successfully!';
    END
$$;

CALL delete_emp_by_id(47)

SELECT * from employees
