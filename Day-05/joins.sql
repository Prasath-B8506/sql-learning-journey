-- Day 05: SQL JOINS
-- SQL Learning Journey

-- INNER JOIN: Show employees with their department names
SELECT
    e.name,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;


-- LEFT JOIN: Show all employees, including employees without a department
SELECT
    e.name,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;


-- RIGHT JOIN: Show all departments, including departments without employees
SELECT
    e.name,
    d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;


-- JOIN + WHERE: Show employees working in Sales
SELECT
    e.name,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Sales';


-- JOIN + GROUP BY: Find total salary for each department
SELECT
    d.department_name,
    SUM(e.salary) AS total_salary
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;


-- JOIN + COUNT: Show all departments and employee count
SELECT
    d.department_name,
    COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;


-- JOIN + HAVING + ORDER BY:
-- Show departments with at least 2 employees
SELECT
    d.department_name,
    COUNT(e.emp_id) AS employee_count,
    SUM(e.salary) AS total_salary
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.emp_id) >= 2
ORDER BY total_salary DESC;


-- Business Question:
-- Find the department with the highest total salary expense
SELECT
    d.department_name,
    SUM(e.salary) AS total_salary
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY total_salary DESC
LIMIT 1;
