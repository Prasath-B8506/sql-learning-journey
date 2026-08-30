-- Day 03: Aggregate Functions, GROUP BY and HAVING
-- SQL Learning Journey
-- Topics: COUNT, SUM, AVG, MIN, MAX, AS, GROUP BY, WHERE + GROUP BY, HAVING

-- Table used:
-- employees(employee_id, name, department, salary)


-- Q1: Count the total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;


-- Q2: Find the total salary of all employees
SELECT SUM(salary) AS total_salary
FROM employees;


-- Q3: Find the average salary of all employees
SELECT AVG(salary) AS average_salary
FROM employees;


-- Q4: Find the lowest salary
SELECT MIN(salary) AS lowest_salary
FROM employees;


-- Q5: Find the highest salary
SELECT MAX(salary) AS highest_salary
FROM employees;


-- Q6: Find the total salary for each department
SELECT department,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department;


-- Q7: Find the number of employees in each department
SELECT department,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department;


-- Q8: Find the average salary in each department
SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department;


-- Q9: Find departments with at least 2 employees
SELECT department,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2;


-- Q10: Find departments whose total salary is greater than 90000
SELECT department,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 90000;


-- Q11: Find departments whose average salary is greater than 40000
SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 40000;


-- Q12: Find departments with at least 2 employees,
-- considering only employees earning 38000 or more,
-- and sort by total salary from highest to lowest
SELECT department,
       COUNT(*) AS employee_count,
       SUM(salary) AS total_salary
FROM employees
WHERE salary >= 38000
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY total_salary DESC;


-- Q13: Find the department with the highest average salary
SELECT department,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;
