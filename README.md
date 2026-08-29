# SQL Learning Journey 📊

This repository documents my hands-on SQL learning journey as I prepare for an Entry-Level Data Analyst role.

## Day 1 — SQL Fundamentals

### Topics Practiced

- Database, tables, rows and columns
- SELECT
- DISTINCT
- WHERE
- Comparison operators: =, >, <, >=, <=, <>
- AND
- OR
- IN
- NOT IN
- BETWEEN
- NOT BETWEEN
- LIKE
- NULL
- IS NULL
- IS NOT NULL

### What I Practiced

- Selecting specific columns from a table
- Filtering rows using WHERE
- Removing duplicate results using DISTINCT
- Filtering using multiple conditions
- Working with value lists using IN and NOT IN
- Filtering values within a range using BETWEEN
- Searching text using LIKE
- Handling missing values using NULL
- Translating basic business questions into SQL queries

### Example

```sql
SELECT name, salary
FROM employees
WHERE department = 'Sales'
AND salary > 40000;

## Day 2 — ORDER BY, LIMIT & OFFSET

### Topics Practiced

- ORDER BY
- ASC
- DESC
- LIMIT
- OFFSET
- Filtering with WHERE
- Combining WHERE + ORDER BY + LIMIT

### What I Practiced

- Finding the highest-value sales
- Finding the top 3 sales from Chennai
- Finding the lowest-value sales
- Finding the second-highest salary
- Combining multiple SQL conditions

### Example

```sql
SELECT *
FROM sales
WHERE city = 'Chennai'
ORDER BY amount DESC
LIMIT 3;
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
