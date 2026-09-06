-- ============================================
-- DAY 6: SQL SUBQUERIES
-- ============================================


-- ============================================
-- 1. EMPLOYEES EARNING MORE THAN AVERAGE SALARY
-- ============================================

SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- ============================================
-- 2. EMPLOYEE WITH THE HIGHEST SALARY
-- ============================================

SELECT name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- ============================================
-- 3. EMPLOYEE WITH THE LOWEST SALARY
-- ============================================

SELECT name, salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);


-- ============================================
-- 4. IN SUBQUERY
-- Find employees working in departments where
-- at least one employee earns more than 50000
-- ============================================

SELECT name, department, salary
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    WHERE salary > 50000
);


-- ============================================
-- 5. NOT IN SUBQUERY
-- Find employees who do not work in departments
-- where at least one employee earns less than 40000
-- ============================================

SELECT name, department, salary
FROM employees
WHERE department NOT IN (
    SELECT department
    FROM employees
    WHERE salary < 40000
);


-- ============================================
-- 6. SUBQUERY IN FROM
-- Find the highest department average salary
-- ============================================

SELECT MAX(avg_salary) AS highest_department_average
FROM (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) AS department_avg;


-- ============================================
-- 7. SUBQUERY IN FROM
-- Find the lowest department average salary
-- ============================================

SELECT MIN(avg_salary) AS lowest_department_average
FROM (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) AS department_avg;
