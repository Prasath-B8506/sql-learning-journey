# SQL Learning Journey 📊

Learning SQL by solving problems, not memorizing syntax.

This repository documents my hands-on SQL learning journey as I prepare for an Entry-Level Data Analyst role.

My focus is simple:

**Understand the data → Ask the right question → Write the query → Validate the result → Explain the insight**

---

# 🚀 Progress

| Day | Focus | Status |
|-----|-------|--------|
| Day 01 | SQL Fundamentals | ✅ Completed |
| Day 02 | ORDER BY, LIMIT & OFFSET | ✅ Completed |
| Day 03 | Aggregate Functions, GROUP BY & HAVING | ✅ Completed |
| Day 04 | CASE, COALESCE & Date Analysis | ✅ Completed |
| Day 05 | SQL JOINs | ✅ Completed |
| Day 06 | SQL Subqueries | ✅ Completed |
| Day 07 | Common Table Expressions (CTEs) | ✅ Completed |
| Day 08 | SQL Window Functions | ✅ Completed |
| Day 09 | Advanced SQL | ✅ Completed |
| Day 10 | E-Commerce Sales Analysis Project | ✅ Completed |

---

# 📚 What I've Practiced

## 🗓️ Day 1 — SQL Fundamentals

### Topics Practiced

- Database, tables, rows and columns
- SELECT
- DISTINCT
- WHERE
- Comparison operators
- AND / OR
- IN / NOT IN
- BETWEEN
- LIKE
- NULL handling
- IS NULL
- IS NOT NULL

### Practice

Worked with employee data and practiced retrieving and filtering data based on different conditions.

📁 [Day 01 SQL Practice](Day-01/)

---

## 🗓️ Day 2 — Sorting & Limiting Results

### Topics Practiced

- ORDER BY
- ASC
- DESC
- LIMIT
- OFFSET
- WHERE + ORDER BY + LIMIT
- Finding the second-highest value

### Practice

Practiced sorting query results, limiting output, skipping records, and solving ranking-based SQL problems.

📁 [Day 02 SQL Practice](Day-02/)

---

## 🗓️ Day 3 — Aggregate Functions & Grouping

### Topics Practiced

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- Aliases using AS
- GROUP BY
- HAVING
- WHERE vs HAVING
- ORDER BY with aggregated results

### Practice

Solved department-level employee analysis and business-style aggregation problems using aggregate functions and grouping.

📁 [Day 03 SQL Practice](Day-03/)

---

## 🗓️ Day 4 — CASE, COALESCE & Date Analysis

### Topics Practiced

- CASE
- Conditional aggregation
- SUM with CASE
- COALESCE
- Handling NULL values
- Date filtering
- MONTH()
- Date-based GROUP BY
- HAVING with aggregate functions

### Practice

Practiced using conditional logic, handling missing values, filtering records by date, and analyzing monthly sales data.

📁 [Day 04 SQL Practice](Day-04/)

---

## 🗓️ Day 5 — SQL JOINs

### Topics Practiced

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- JOIN conditions using ON
- Table aliases
- COUNT() with JOIN
- SUM() with JOIN
- AVG() with JOIN
- GROUP BY with JOIN
- HAVING with JOIN

### Practice

Practiced combining data from multiple tables and performing employee and department-level analysis.

📁 [Day 05 SQL Practice](Day-05/)

---

## 🗓️ Day 6 — SQL Subqueries

### Topics Practiced

- Subqueries
- Inner Query and Outer Query
- Subqueries with AVG()
- Subqueries with MAX()
- Subqueries with MIN()
- IN with Subqueries
- NOT IN with Subqueries
- Subqueries inside FROM
- Temporary result sets

### Practice

Practiced solving employee salary problems using subqueries and multi-stage SQL analysis.

📁 [Day 06 SQL Practice](Day-06/)

---

## 🗓️ Day 7 — Common Table Expressions (CTEs)

### Topics Practiced

- CTE syntax
- CTE with SUM()
- CTE with AVG()
- CTE with COUNT()
- CTE with MAX()
- CTE with MIN()
- Filtering CTE results
- WHERE vs HAVING
- Multiple CTEs
- CTE + JOIN
- CTE vs Subquery
- Business analysis using CTEs

### Practice

Built temporary named result sets to make multi-step SQL analysis easier to read and manage.

📁 [Day 07 SQL Practice](Day-07/)

---

## 🗓️ Day 8 — SQL Window Functions

### Topics Practiced

- OVER()
- PARTITION BY
- ORDER BY with Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- Running totals
- LAG()
- LEAD()
- Salary comparisons
- Ranking within groups
- Window Functions vs GROUP BY
- CTE + Window Functions

### Practice

Practiced ranking, running totals, previous and next row analysis, and department-level salary analysis.

📁 [Day 08 SQL Practice](Day-08/)

---

## 🗓️ Day 9 — Advanced SQL

### Topics Practiced

- UNION
- UNION ALL
- EXISTS
- NOT EXISTS
- Self JOIN
- Multiple JOINs
- Advanced CASE
- Duplicate detection
- Missing and unmatched records
- Top-N queries
- Top-N within each group
- CTE + JOIN + Window Functions
- Second-highest salary

### Practice

Combined multiple SQL concepts to solve advanced Data Analyst problems and business-style SQL questions.

📁 [Day 09 SQL Practice](Day-09/)

---

# 🗓️ Day 10 — E-Commerce Sales Analysis Project

## 📌 Project Overview

This project simulates a real-world E-Commerce Sales Analysis task.

The goal is to analyze customer orders and identify important business metrics, top-performing products, customer performance, category performance, and monthly revenue trends.

The analysis was performed using SQL.

📁 [Day 10 — E-Commerce Sales Analysis](Day-10/)

---

## 🎯 Business Questions

The project answers questions such as:

1. What is the total revenue?
2. How many orders were placed?
3. How many unique customers made purchases?
4. What is the average order value?
5. Which customer generated the highest revenue?
6. Which product generated the highest revenue?
7. Which product sold the highest quantity?
8. Which category generated the highest revenue?
9. Which month generated the highest revenue?
10. Which customers made repeat purchases?
11. Which city generated the highest revenue?
12. How do customers and products perform together?

---

## 🗂️ Dataset

The project uses three tables:

### Customers

| Column | Description |
|--------|-------------|
| customer_id | Unique customer identifier |
| customer_name | Customer name |
| city | Customer city |

### Products

| Column | Description |
|--------|-------------|
| product_id | Unique product identifier |
| product_name | Product name |
| category | Product category |
| price | Product price |

### Orders

| Column | Description |
|--------|-------------|
| order_id | Unique order identifier |
| customer_id | Customer identifier |
| order_date | Date of order |
| product_id | Product identifier |
| quantity | Quantity purchased |

### Table Relationships

```text
customers
    |
    | customer_id
    ↓
orders
    |
    | product_id
    ↓
products
