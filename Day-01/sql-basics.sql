-- Day 01: SQL Fundamentals
-- SQL Learning Journey
-- Topics: SELECT, DISTINCT, WHERE, comparison operators,
-- AND, OR, IN, NOT IN, BETWEEN, LIKE, NULL

-- Q1: Select all columns
SELECT *
FROM employees;


-- Q2: Select specific columns
SELECT name, salary
FROM employees;


-- Q3: Show unique departments
SELECT DISTINCT department
FROM employees;


-- Q4: Find employees earning more than 40000
SELECT *
FROM employees
WHERE salary > 40000;


-- Q5: Find employees in Sales or IT
SELECT *
FROM employees
WHERE department IN ('Sales', 'IT');


-- Q6: Find employees earning between 35000 and 45000
SELECT *
FROM employees
WHERE salary BETWEEN 35000 AND 45000;


-- Q7: Find employees whose names start with A
SELECT *
FROM employees
WHERE name LIKE 'A%';


-- Q8: Find employees without a manager
SELECT *
FROM employees
WHERE manager IS NULL;


-- Q9: Find Sales employees earning more than 40000
SELECT *
FROM employees
WHERE department = 'Sales'
AND salary > 40000;
