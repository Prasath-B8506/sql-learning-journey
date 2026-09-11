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
- Joining employee and department tables
- COUNT() with JOIN
- SUM() with JOIN
- AVG() with JOIN
- GROUP BY with JOIN
- HAVING with JOIN
- ORDER BY aggregated results

### Practice

Practiced combining data from employee and department tables and solved problems involving employee counts, total salaries, average salaries, and department-level analysis.

📁 [Day 05 SQL Practice](Day-05/)

---

## 🗓️ Day 6 — SQL Subqueries

### Topics Practiced

- What is a Subquery?
- Inner Query and Outer Query
- Subqueries with `AVG()`
- Subqueries with `MAX()`
- Subqueries with `MIN()`
- Comparing values using Subqueries
- `IN` with Subqueries
- `NOT IN` with Subqueries
- Subqueries inside `FROM`
- Using a Subquery as a temporary result table

### Practice

Practiced solving employee data problems using subqueries. Compared employee salaries with the overall average salary, found employees with the highest and lowest salaries, filtered employees using `IN` and `NOT IN`, and performed multi-stage calculations using subqueries inside `FROM`.

📁 [Day 06 SQL Practice](Day-06/)

---

## 🗓️ Day 7 — Common Table Expressions (CTEs)

### Topics Practiced

- What is a CTE?
- Basic CTE syntax
- CTE with `SUM()`
- CTE with `AVG()`
- CTE with `COUNT()`
- CTE with `MAX()`
- CTE with `MIN()`
- Filtering CTE results
- `WHERE` vs `HAVING` with CTEs
- Multiple aggregate calculations in a CTE
- Multiple CTEs
- CTE + JOIN
- CTE vs Subquery
- Business analysis using CTEs

### Practice

Practiced creating temporary named result sets using CTEs and performing department-level analysis. Built CTEs using multiple aggregate functions, filtered aggregated results, combined multiple CTEs using JOINs, and compared CTEs with subqueries.

📁 [Day 07 SQL Practice](Day-07/)

---

## 🗓️ Day 8 — SQL Window Functions

### Topics Practiced

- What are Window Functions?
- `OVER()`
- `PARTITION BY`
- `ORDER BY` with Window Functions
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `ROW_NUMBER()` vs `RANK()` vs `DENSE_RANK()`
- Finding the highest-paid employee in each department
- Finding the second-highest salary in each department
- `SUM()` with Window Functions
- `AVG()` with Window Functions
- Running totals
- `LAG()`
- `LEAD()`
- Comparing current and previous values
- Salary difference using `LAG()`
- Window Functions vs `GROUP BY`
- Using CTEs with Window Functions
- Business-style analysis using Window Functions

### Practice

Practiced analyzing employee data using Window Functions while preserving individual rows. Implemented department-level rankings, salary comparisons, running totals, previous and next row analysis, and business-style comparisons using `LAG()` and `LEAD()`.

Also practiced ranking-based SQL problems using `ROW_NUMBER()` and `RANK()`.

📁 [Day 08 SQL Practice](Day-08/)

---

## 🗓️ Day 9 — Advanced SQL

### Topics Practiced

- `UNION`
- `UNION ALL`
- `EXISTS`
- `NOT EXISTS`
- Self JOIN
- Multiple JOINs
- Advanced `CASE`
- Duplicate detection
- Finding missing and unmatched records
- Top-N queries
- Top-N within each group
- CTE + JOIN + Window Functions
- Ranking-based business problems
- Second-highest salary
- Advanced SQL interview questions

### Practice

Practiced combining multiple SQL concepts to solve advanced Data Analyst problems. Worked with set operations, existence checks, Self JOINs, multiple-table JOINs, conditional categorization, duplicate detection, unmatched records, ranking, Top-N analysis, and multi-step queries using CTEs and Window Functions.

Also practiced LeetCode-style and HackerRank-style SQL problems and completed a Day 9 revision test.

📁 [Day 09 SQL Practice](Day-09/)

---

# 🎯 Key SQL Concepts Covered

Throughout the first 9 days, I have practiced:

- Data retrieval and filtering
- Sorting and limiting results
- Aggregate functions
- GROUP BY and HAVING
- Conditional logic using CASE
- NULL handling
- Date analysis
- INNER JOIN, LEFT JOIN and RIGHT JOIN
- Self JOIN
- Multiple JOINs
- Subqueries
- CTEs
- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- Running totals
- LAG() and LEAD()
- UNION and UNION ALL
- EXISTS and NOT EXISTS
- Duplicate detection
- Missing and unmatched records
- Top-N analysis
- Business-oriented SQL problems

---

# 🧠 SQL Problem-Solving Approach

For each problem, I focus on:

**Understand the data → Identify the business question → Choose the right SQL concept → Write the query → Validate the result → Explain the output**

---

# 📈 Learning Approach

My learning approach is focused on practical problem solving rather than memorizing SQL syntax.

For each concept, I work through:

1. Understanding the concept
2. Working with sample data
3. Writing SQL queries
4. Solving practice problems
5. Validating query results
6. Solving business-style problems
7. Preparing for interview questions
8. Practicing coding-platform problems
9. Documenting the learning process

---

# 📁 Repository Structure

```text
sql-learning-journey/
│
├── Day-01/
│   └── sql-basics.sql
│
├── Day-02/
│   └── order-by-limit.sql
│
├── Day-03/
│   └── aggregate-groupby.sql
│
├── Day-04/
│   └── case_coalesce_dates.sql
│
├── Day-05/
│   └── joins.sql
│
├── Day-06/
│   └── subqueries.sql
│
├── Day-07/
│   └── ctes.sql
│
├── Day-08/
│   └── window-functions.sql
│
├── Day-09/
│   └── advanced-sql.sql
│
└── README.md
