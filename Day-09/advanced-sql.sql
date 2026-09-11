-- Day 09: Advanced SQL
-- SQL Learning Journey


-- 1. UNION
-- Combine results and remove duplicates

SELECT name
FROM it_employees

UNION

SELECT name
FROM hr_employees;


-- 2. UNION ALL
-- Combine results and keep duplicates

SELECT name
FROM it_employees

UNION ALL

SELECT name
FROM hr_employees;


-- 3. EXISTS
-- Find customers who have placed at least one order

SELECT
    c.customer_id,
    c.name
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);


-- 4. NOT EXISTS
-- Find customers who have never placed an order

SELECT
    c.customer_id,
    c.name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);


-- 5. Self JOIN
-- Find employee and manager names

SELECT
    e.name AS employee_name,
    m.name AS manager_name
FROM employees e
LEFT JOIN employees m
    ON e.manager_id = m.id;


-- 6. Multiple JOINs
-- Find employee, department and total sales

SELECT
    e.name,
    d.department_name,
    SUM(s.amount) AS total_sales
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
JOIN sales s
    ON e.employee_id = s.employee_id
GROUP BY
    e.name,
    d.department_name;


-- 7. Advanced CASE
-- Categorize employees based on salary

SELECT
    name,
    salary,
    CASE
        WHEN salary >= 55000 THEN 'High'
        WHEN salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees;


-- 8. Duplicate detection
-- Find duplicate email addresses

SELECT
    email,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;


-- 9. Missing / unmatched records
-- Find customers without orders using LEFT JOIN

SELECT
    c.customer_id,
    c.name
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;


-- 10. Top 3 employees overall

SELECT
    name,
    department_id,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 3;


-- 11. Top 2 employees in each department

WITH ranked_employees AS (
    SELECT
        name,
        department_id,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    name,
    department_id,
    salary,
    salary_rank
FROM ranked_employees
WHERE salary_rank <= 2;


-- 12. CTE + JOIN + Window Function
-- Find highest-paid employee in each department

WITH ranked_employees AS (
    SELECT
        employee_id,
        name,
        department_id,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    r.name,
    d.department_name,
    r.salary
FROM ranked_employees r
JOIN departments d
    ON r.department_id = d.department_id
WHERE r.salary_rank = 1;


-- 13. Second-highest salary overall

WITH ranked_employees AS (
    SELECT
        name,
        salary,
        ROW_NUMBER() OVER (
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    salary
FROM ranked_employees
WHERE salary_rank = 2;


-- 14. Second-highest distinct salary

WITH ranked_employees AS (
    SELECT
        salary,
        DENSE_RANK() OVER (
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    salary
FROM ranked_employees
WHERE salary_rank = 2;
