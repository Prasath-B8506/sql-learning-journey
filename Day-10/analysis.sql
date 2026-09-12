-- E-Commerce Sales Analysis
-- Day 10 Final SQL Project


-- 1. Total Revenue

SELECT
    SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id;


-- 2. Total Orders

SELECT
    COUNT(order_id) AS total_orders
FROM orders;


-- 3. Unique Customers

SELECT
    COUNT(DISTINCT customer_id) AS unique_customers
FROM orders;


-- 4. Average Order Value

SELECT
    SUM(o.quantity * p.price) / COUNT(DISTINCT o.order_id) AS average_order_value
FROM orders o
JOIN products p
    ON o.product_id = p.product_id;


-- 5. Customer Revenue

SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.quantity * p.price) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY total_revenue DESC;


-- 6. Product Revenue

SELECT
    p.product_id,
    p.product_name,
    SUM(o.quantity * p.price) AS total_revenue
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY total_revenue DESC;


-- 7. Category Revenue

SELECT
    p.category,
    SUM(o.quantity * p.price) AS total_revenue
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;


-- 8. Monthly Revenue

SELECT
    MONTH(o.order_date) AS month,
    SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY MONTH(o.order_date)
ORDER BY month;


-- 9. Customer Revenue Ranking

WITH customer_revenue AS (
    SELECT
        c.customer_id,
        c.customer_name,
        SUM(o.quantity * p.price) AS total_revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN products p
        ON o.product_id = p.product_id
    GROUP BY
        c.customer_id,
        c.customer_name
)
SELECT
    customer_name,
    total_revenue,
    RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS customer_rank
FROM customer_revenue;


-- 10. Product Revenue Ranking

WITH product_revenue AS (
    SELECT
        p.product_id,
        p.product_name,
        SUM(p.price * o.quantity) AS total_revenue
    FROM products p
    JOIN orders o
        ON p.product_id = o.product_id
    GROUP BY
        p.product_id,
        p.product_name
)
SELECT
    product_name,
    total_revenue,
    RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS product_rank
FROM product_revenue;


-- 11. Repeat Customers

SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
HAVING COUNT(o.order_id) > 1;


-- 12. Customer and Product Performance

SELECT
    c.customer_name,
    p.product_name,
    o.quantity,
    o.quantity * p.price AS revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id
ORDER BY revenue DESC;


-- 13. City Performance

WITH city_sales AS (
    SELECT
        c.city,
        o.order_id,
        o.quantity * p.price AS revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN products p
        ON o.product_id = p.product_id
)
SELECT
    city,
    SUM(revenue) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(revenue) / COUNT(DISTINCT order_id) AS average_order_value
FROM city_sales
GROUP BY city
ORDER BY total_revenue DESC;


-- 14. Highest Revenue Month

SELECT
    MONTH(o.order_date) AS month,
    SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY MONTH(o.order_date)
ORDER BY total_revenue DESC
LIMIT 1;


-- 15. Highest Spending Customer

WITH customer_revenue AS (
    SELECT
        c.customer_id,
        c.customer_name,
        SUM(o.quantity * p.price) AS total_revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN products p
        ON o.product_id = p.product_id
    GROUP BY
        c.customer_id,
        c.customer_name
)
SELECT
    customer_name,
    total_revenue
FROM customer_revenue
ORDER BY total_revenue DESC
LIMIT 1;
