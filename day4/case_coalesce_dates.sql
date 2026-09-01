-- Day 04: CASE, COALESCE and Date Analysis
-- SQL Learning Journey

-- Q1: Classify employees based on salary
SELECT
    name,
    salary,
    CASE
        WHEN salary >= 45000 THEN 'High'
        WHEN salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employees;


-- Q2: Count employees earning 40000 or more
SELECT
    SUM(
        CASE
            WHEN salary >= 40000 THEN 1
            ELSE 0
        END
    ) AS employees_40k_plus
FROM employees;


-- Q3: Count employees earning below 40000
SELECT
    SUM(
        CASE
            WHEN salary < 40000 THEN 1
            ELSE 0
        END
    ) AS employees_below_40k
FROM employees;


-- Q4: Count employees earning 40000 or more by department
SELECT
    department,
    SUM(
        CASE
            WHEN salary >= 40000 THEN 1
            ELSE 0
        END
    ) AS employees_40k_plus
FROM employees
GROUP BY department;


-- Q5: Find total salary of employees earning 40000 or more
SELECT
    department,
    SUM(
        CASE
            WHEN salary >= 40000 THEN salary
            ELSE 0
        END
    ) AS total_salary_40k_plus
FROM employees
GROUP BY department;


-- Q6: Replace NULL bonus values with 0
SELECT
    name,
    salary,
    bonus,
    COALESCE(bonus, 0) AS bonus_amount
FROM employees;


-- Q7: Find total sales for each month
SELECT
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_sales
FROM orders
GROUP BY MONTH(order_date);


-- Q8: Find the month with the highest total sales
SELECT
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_sales
FROM orders
GROUP BY MONTH(order_date)
ORDER BY total_sales DESC
LIMIT 1;


-- Q9: Find months with at least 2 orders
SELECT
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_sales,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY MONTH(order_date)
HAVING COUNT(order_id) >= 2
ORDER BY total_sales DESC;


-- Q10: Find months with at least 2 orders and sales above 7000
SELECT
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_sales,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY MONTH(order_date)
HAVING COUNT(order_id) >= 2
   AND SUM(amount) > 7000
ORDER BY total_sales DESC;
