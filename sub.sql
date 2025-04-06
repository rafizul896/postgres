CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(30),
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);


INSERT INTO employees (employee_name, department_name, salary, hire_date)
VALUES
('John Doe', 'Sales', 55000.00, '2020-01-15'),
('Jane Smith', 'Marketing', 62000.00, '2019-03-10'),
('Alex Johnson', 'HR', 48000.00, '2021-06-20'),
('Emily Davis', 'Finance', 72000.00, '2018-07-01'),
('Michael Brown', 'IT', 85000.00, '2017-11-12'),
('Sarah Wilson', 'Sales', 58000.00, '2020-09-25'),
('David Miller', 'Marketing', 60000.00, '2019-04-18'),
('Laura Taylor', 'HR', 50000.00, '2022-01-30'),
('Chris Anderson', 'Finance', 73000.00, '2018-02-27'),
('Emma Thomas', 'IT', 87000.00, '2021-12-11'),
('Daniel Jackson', 'Sales', 56000.00, '2020-05-05'),
('Sophia White', 'Marketing', 64000.00, '2020-08-19'),
('James Harris', 'HR', 51000.00, '2021-02-22'),
('Isabella Martin', 'Finance', 74000.00, '2019-09-17'),
('Benjamin Thompson', 'IT', 86000.00, '2018-06-07'),
('Mia Garcia', 'Sales', 57000.00, '2020-11-01'),
('Logan Martinez', 'Marketing', 63000.00, '2019-12-20'),
('Grace Robinson', 'HR', 49000.00, '2022-03-05'),
('Elijah Clark', 'Finance', 71000.00, '2020-02-10'),
('Chloe Rodriguez', 'IT', 88000.00, '2017-08-25'),
('Jackson Lewis', 'Sales', 59000.00, '2019-10-13'),
('Amelia Lee', 'Marketing', 65000.00, '2018-01-02'),
('Lucas Walker', 'HR', 52000.00, '2021-07-23'),
('Lily Hall', 'Finance', 76000.00, '2020-04-14'),
('Aiden Allen', 'IT', 89000.00, '2019-05-09'),
('Harper Young', 'Sales', 60000.00, '2022-06-21'),
('Henry Hernandez', 'Marketing', 66000.00, '2020-07-27'),
('Evelyn King', 'HR', 53000.00, '2021-03-11'),
('Sebastian Wright', 'Finance', 75000.00, '2019-11-30'),
('Avery Scott', 'IT', 90000.00, '2018-10-16'),
('Jack Green', 'Sales', 61000.00, '2020-12-05'),
('Ella Adams', 'Marketing', 67000.00, '2021-09-28'),
('Owen Baker', 'HR', 54000.00, '2018-03-15'),
('Scarlett Nelson', 'Finance', 77000.00, '2022-02-06'),
('Wyatt Carter', 'IT', 91000.00, '2017-04-23'),
('Victoria Mitchell', 'Sales', 62000.00, '2020-06-17'),
('Leo Perez', 'Marketing', 68000.00, '2019-01-26'),
('Aria Roberts', 'HR', 55000.00, '2021-05-29'),
('Julian Turner', 'Finance', 78000.00, '2018-08-03'),
('Penelope Phillips', 'IT', 92000.00, '2019-02-08'),
('Nathan Campbell', 'Sales', 63000.00, '2020-10-07'),
('Hazel Parker', 'Marketing', 69000.00, '2022-05-19'),
('Levi Evans', 'HR', 56000.00, '2021-01-09'),
('Nora Edwards', 'Finance', 79000.00, '2019-06-13'),
('Isaac Collins', 'IT', 93000.00, '2017-09-01'),
('Camila Stewart', 'Sales', 64000.00, '2021-11-24'),
('Samuel Sanchez', 'Marketing', 70000.00, '2020-03-18'),
('Layla Morris', 'HR', 57000.00, '2022-04-04'),
('Grayson Rogers', 'Finance', 80000.00, '2018-05-20'),
('Zoe Reed', 'IT', 94000.00, '2019-07-15');


SELECT * FROM employees;

SELECT max(salary) FROM employees
    WHERE department_name = 'HR';

SELECT * FROM employees WHERE salary > (SELECT max(salary) FROM employees WHERE department_name = 'HR');
