CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(30),
    dept_id INTEGER REFERENCES departments(dept_id)
);

CREATE TABLE departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES 
    (101,'Human Resources'),
    (102,'Marketing')

INSERT INTO employees VALUES
    (1,'jon',101),
    (2,'bon',102)


SELECT * FROM employees;
SELECT * FROM departments;

-- cross join
SELECT * FROM departments
    CROSS JOIN employees;

-- natural join
SELECT * FROM employees
    NATURAL JOIN departments;


