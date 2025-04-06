CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(30),
    department_id INTEGER REFERENCES departments(department_id),
    salary DECIMAL(10,2),
    hire_date DATE
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);


INSERT INTO departments (department_name) VALUES 
    ('Human Resources'),
    ('Marketing'),
    ('HR'),
    ('IT'),
    ('Sales'),
    ('Research'),
    ('Customer Support'),
    ('Finance'),
    ('Administration'),
    ('Quality Assurance')

INSERT INTO employees (employee_name, department_id, salary, hire_date)
VALUES
('Alice Johnson', 1, 45000.00, '2020-01-15'),
('Bob Smith', 2, 48000.00, '2019-03-22'),
('Carol White', 3, 50000.00, '2021-07-01'),
('David Brown', 4, 47000.00, '2018-11-12'),
('Eva Green', 5, 52000.00, '2022-05-30'),
('Frank Black', 6, 43000.00, '2020-08-19'),
('Grace Hall', 7, 51000.00, '2021-02-25'),
('Henry King', 8, 46000.00, '2019-10-04'),
('Ivy Young', 9, 49000.00, '2022-03-16'),
('Jake Lee', 10, 44000.00, '2020-09-29'),
('Kara Scott', 1, 45000.00, '2021-06-12'),
('Liam Adams', 2, 47000.00, '2018-04-23'),
('Mona Clark', 3, 53000.00, '2019-12-15'),
('Nathan Lewis', 4, 55000.00, '2020-11-03'),
('Olivia Walker', 5, 48000.00, '2022-01-20'),
('Paul Wright', 6, 49000.00, '2020-02-10'),
('Quincy Hill', 7, 47000.00, '2021-03-08'),
('Rachel Allen', 8, 46000.00, '2021-10-25'),
('Sam Harris', 9, 44000.00, '2023-01-01'),
('Tina Robinson', 10, 50000.00, '2022-08-18'),
('Umar Bailey', 1, 48000.00, '2019-06-06'),
('Vera James', 2, 47000.00, '2020-12-11'),
('Will Newton', 3, 53000.00, '2021-09-07'),
('Xena Ford', 4, 46000.00, '2020-04-15'),
('Yuri Hayes', 5, 45000.00, '2018-07-19'),
('Zara Price', 6, 49000.00, '2023-02-23'),
('Adam Ellis', 7, 52000.00, '2019-01-09'),
('Bella Murphy', 8, 48000.00, '2020-06-21'),
('Cody Ross', 9, 51000.00, '2022-04-14'),
('Daisy Jenkins', 10, 47000.00, '2021-11-11'),
('Eli Coleman', 1, 44000.00, '2019-08-26'),
('Faith Simmons', 2, 45000.00, '2020-05-05'),
('George Porter', 3, 50000.00, '2021-01-30'),
('Holly Russell', 4, 52000.00, '2022-07-07'),
('Isaac Woods', 5, 43000.00, '2019-09-10'),
('Jade Bennett', 6, 49000.00, '2020-03-17'),
('Kyle Patterson', 7, 53000.00, '2021-05-22'),
('Lara Gray', 8, 46000.00, '2022-06-03'),
('Mason Brooks', 9, 45000.00, '2018-10-10'),
('Nina Foster', 10, 47000.00, '2023-03-12'),
('Oscar Stevens', 1, 51000.00, '2021-08-28');

SELECT * FROM departments;
SELECT * FROM employees;


SELECT * FROM employees
    INNER JOIN departments on employees.department_id = departments.department_id;

-- another syntex
SELECT * FROM employees
    INNER JOIN departments USING(department_id);

SELECT department_name,count(*) as Employee,round(avg(salary)) as avg_salary FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name
    ORDER BY avg_salary DESC LIMIT 1;

SELECT extract(YEAR FROM hire_date) as hire_year,count(*) FROM employees
    INNER JOIN departments USING(department_id)
    GROUP BY extract(YEAR FROM hire_date);




