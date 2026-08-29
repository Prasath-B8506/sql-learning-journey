-- Day 02: ORDER BY, LIMIT & OFFSET
-- SQL Learning Journey
-- Goal: Practice sorting, filtering, limiting and skipping rows

-- Q1: Find the top 5 highest-value sales
SELECT *
FROM sales
ORDER BY amount DESC
LIMIT 5;


-- Q2: Find the 3 lowest-value sales
SELECT *
FROM sales
ORDER BY amount ASC
LIMIT 3;


-- Q3: Find the top 3 sales from Chennai
SELECT *
FROM sales
WHERE city = 'Chennai'
ORDER BY amount DESC
LIMIT 3;


-- Q4: Find the top 2 Electronics sales
SELECT *
FROM sales
WHERE category = 'Electronics'
ORDER BY amount DESC
LIMIT 2;


-- Q5: Find the highest-value Electronics sale from Chennai
SELECT *
FROM sales
WHERE category = 'Electronics'
AND city = 'Chennai'
ORDER BY amount DESC
LIMIT 1;


-- Q6: Find the second-highest sale
SELECT *
FROM sales
ORDER BY amount DESC
LIMIT 1 OFFSET 1;
