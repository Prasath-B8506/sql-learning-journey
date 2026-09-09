-- ============================================================
-- DAY 7: COMMON TABLE EXPRESSIONS (CTEs)
-- ============================================================


-- ============================================================
-- 1. BASIC CTE
-- ============================================================

WITH high_salary_employees AS (
    SELECT
        name,
        department,
        salary
    FROM employees
    WHERE salary > 45000
)
SELECT *
FROM high_salary_employees;


-- ============================================================
-- 2. CTE WITH AVG()
-- Calculate average salary for each department
-- ============================================================

WITH department_average AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM department_average;


-- ============================================================
-- 3. CTE WITH SUM()
-- Calculate total salary for each department
-- ============================================================

WITH department_total AS (
    SELECT
        department,
        SUM(salary) AS total_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM department_total;


-- ============================================================
-- 4. FILTERING CTE RESULTS
-- Display departments whose total salary is greater than 90000
-- ============================================================

WITH department_total AS (
    SELECT
        department,
        SUM(salary) AS total_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM department_total
WHERE total_salary > 90000;


-- ============================================================
-- 5. MULTIPLE AGGREGATE CALCULATIONS
-- SUM, AVG and COUNT in one CTE
-- ============================================================

WITH department_stats AS (
    SELECT
        department,
        SUM(salary) AS total_salary,
        AVG(salary) AS avg_salary,
        COUNT(*) AS employee_count
    FROM employees
    GROUP BY department
)
SELECT *
FROM department_stats;


-- ============================================================
-- 6. HAVING WITH CTE
-- Display departments whose average salary is greater than 40000
-- ============================================================

WITH department_stats AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
    HAVING AVG(salary) > 40000
)
SELECT *
FROM department_stats;


-- ============================================================
-- 7. MULTIPLE CTES
-- Create total salary and average salary CTEs
-- ============================================================

WITH department_total AS (
    SELECT
        department,
        SUM(salary) AS total_salary
    FROM employees
    GROUP BY department
),
department_average AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM department_average;


-- ============================================================
-- 8. CTE + JOIN
-- Combine total salary and average salary
-- ============================================================

WITH department_total AS (
    SELECT
        department,
        SUM(salary) AS total_salary
    FROM employees
    GROUP BY department
),
department_average AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT
    department_total.department,
    department_total.total_salary,
    department_average.avg_salary
FROM department_total
JOIN department_average
    ON department_total.department = department_average.department;


-- ============================================================
-- 9. CTE VS SUBQUERY
-- Find employees earning more than the average salary
-- ============================================================

WITH average_salary AS (
    SELECT
        AVG(salary) AS avg_salary
    FROM employees
)
SELECT
    e.name,
    e.salary
FROM employees e
CROSS JOIN average_salary a
WHERE e.salary > a.avg_salary;


-- ============================================================
-- 10. BUSINESS ANALYSIS USING CTE
-- Departments where:
-- Total salary > 90000
-- AND average salary > 45000
-- ============================================================

WITH department_stats AS (
    SELECT
        department,
        SUM(salary) AS total_salary,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM department_stats
WHERE total_salary > 90000
  AND avg_salary > 45000;


-- ============================================================
-- 11. CTE + MULTIPLE CALCULATIONS
-- Maximum, minimum and employee count
-- ============================================================

WITH department_stats AS (
    SELECT
        department,
        MAX(salary) AS highest_salary,
        MIN(salary) AS lowest_salary,
        COUNT(*) AS employee_count
    FROM employees
    GROUP BY department
)
SELECT *
FROM department_stats;


-- ============================================================
-- 12. CTE + ORDER BY + LIMIT
-- Find the department with the highest average salary
-- ============================================================

WITH department_average AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM department_average
ORDER BY avg_salary DESC
LIMIT 1;
