# SQL Learning Journey 📊

This repository documents my hands-on SQL learning journey as I prepare for an Entry-Level Data Analyst role.

I am learning SQL through practical exercises, real-world business questions, interview preparation, and problem-solving practice.

---

# 📅 Day 1 — SQL Fundamentals

## Topics Practiced

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

## What I Practiced

- Selecting specific columns from a table
- Filtering rows using WHERE
- Removing duplicate results using DISTINCT
- Filtering using multiple conditions
- Working with value lists using IN and NOT IN
- Filtering values within a range using BETWEEN
- Searching text using LIKE
- Handling missing values using NULL
- Translating basic business questions into SQL queries

## Example

```sql
SELECT name, salary
FROM employees
WHERE department = 'Sales'
AND salary > 40000;
```

## Core Concepts

### SELECT

SELECT is used to choose the columns or data that we want to display.

```sql
SELECT name, salary
FROM employees;
```

**Memory:** SELECT → What data do I want?

### DISTINCT

DISTINCT removes duplicate values from the query result.

```sql
SELECT DISTINCT department
FROM employees;
```

**Memory:** DISTINCT → Remove duplicates from the result.

### WHERE

WHERE filters rows based on a specified condition.

```sql
SELECT *
FROM employees
WHERE salary > 40000;
```

**Memory:** WHERE → Which rows do I want?

### Comparison Operators

| Operator | Meaning |
|---|---|
| `=` | Equal to |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |
| `<>` | Not equal to |

### AND

AND requires all specified conditions to be true.

```sql
SELECT *
FROM employees
WHERE department = 'Sales'
AND salary > 40000;
```

**Memory:** AND → Both/all conditions must be TRUE.

### OR

OR requires at least one condition to be true.

```sql
SELECT *
FROM employees
WHERE department = 'Sales'
OR department = 'IT';
```

**Memory:** OR → At least one condition must be TRUE.

### IN

IN checks whether a value matches one of the values in a list.

```sql
SELECT *
FROM employees
WHERE department IN ('HR', 'IT', 'Sales');
```

**Memory:** IN → Choose from this list.

### NOT IN

NOT IN excludes values from a specified list.

```sql
SELECT *
FROM employees
WHERE department NOT IN ('HR', 'IT');
```

**Memory:** NOT IN → Exclude this list.

### BETWEEN

BETWEEN filters values within an inclusive range.

```sql
SELECT *
FROM employees
WHERE salary BETWEEN 35000 AND 45000;
```

**Memory:** BETWEEN → Range including both ends.

### NOT BETWEEN

NOT BETWEEN excludes values inside the specified range.

```sql
SELECT *
FROM employees
WHERE salary NOT BETWEEN 35000 AND 45000;
```

### LIKE

LIKE is used to search for text patterns.

```text
'A%'    → Starts with A
'%A'    → Ends with A
'%A%'   → Contains A
```

Example:

```sql
SELECT *
FROM customers
WHERE name LIKE 'A%';
```

### NULL

NULL represents a missing or unknown value.

Correct way to check NULL:

```sql
SELECT *
FROM employees
WHERE manager IS NULL;
```

To find values that are not NULL:

```sql
SELECT *
FROM employees
WHERE manager IS NOT NULL;
```

**Important:**

```sql
manager = NULL      -- Incorrect
manager IS NULL     -- Correct
```

**Memory:** NULL → IS NULL / IS NOT NULL

---

# 💼 Day 1 — Real-World Practice

I practiced SQL using employee and customer datasets.

### Business Questions Practiced

- Find employees based on salary
- Filter employees by department
- Find employees within an age range
- Find customers using text patterns
- Find employees without an assigned manager
- Combine multiple conditions
- Translate business questions into SQL queries

### Example Business Query

```sql
SELECT name, department
FROM employees
WHERE department IN ('Sales', 'HR')
AND salary >= 40000;
```

---

# 🎤 Day 1 — Interview Practice

### What is SQL?

SQL stands for Structured Query Language and is used to retrieve, manipulate, and analyze data stored in relational databases.

### What is WHERE?

WHERE is used to filter rows based on a specified condition.

### What is the difference between AND and OR?

AND requires all conditions to be true, while OR requires at least one condition to be true.

### What is the difference between IN and BETWEEN?

IN checks whether a value matches one of the values in a list, while BETWEEN filters values within an inclusive range.

### How do you check NULL values?

Use IS NULL to find missing values and IS NOT NULL to find values that are present.

---

# 🧩 Day 1 — SQL Problem

### Problem

Find employees whose salary is greater than 70,000.

### Solution

```sql
SELECT name
FROM employees
WHERE salary > 70000;
```

### Key Learning

Use WHERE with a comparison operator to filter rows based on a condition.

---

# ⚠️ Day 1 — Personal Mistakes

### Mistake 1 — Missing comma

Incorrect:

```sql
SELECT name salary
FROM employees;
```

Correct:

```sql
SELECT name, salary
FROM employees;
```

### Mistake 2 — Spelling mistake

Incorrect:

```text
emloyees
```

Correct:

```text
employees
```

### Mistake 3 — Wrong comparison operator

Requirement: Salary greater than 40,000

Incorrect:

```sql
salary = 40000
```

Correct:

```sql
salary > 40000
```

### Mistake 4 — Wrong table name

Always identify the correct table before writing the query.

### Mistake 5 — IN meaning

```sql
IN ('HR', 'IT')
```

means HR OR IT.

---

# 📅 Day 2 — ORDER BY, LIMIT & OFFSET

## Topics Practiced

- ORDER BY
- ASC
- DESC
- LIMIT
- OFFSET
- Filtering with WHERE
- Combining WHERE + ORDER BY + LIMIT
- Finding highest and lowest records
- Finding second-highest values

## What I Practiced

- Finding the highest-value sales
- Finding the top 3 sales from Chennai
- Finding the lowest-value sales
- Finding the second-highest salary
- Combining multiple SQL conditions

## Example

```sql
SELECT *
FROM sales
WHERE city = 'Chennai'
ORDER BY amount DESC
LIMIT 3;
```

## Core Concepts

### ORDER BY

ORDER BY sorts result rows using a specified column.

```sql
SELECT *
FROM sales
ORDER BY amount ASC;
```

### ASC

ASC sorts values from low to high.

```text
Low → High
```

Example:

```text
1200 → 2500 → 18000 → 45000 → 65000
```

### DESC

DESC sorts values from high to low.

```text
High → Low
```

Example:

```text
65000 → 45000 → 18000 → 2500 → 1200
```

**Memory:**

```text
ASC  → Low to High
DESC → High to Low
```

### LIMIT

LIMIT controls the number of rows returned.

```sql
SELECT *
FROM sales
ORDER BY amount DESC
LIMIT 3;
```

Important:

```sql
LIMIT 3     -- Correct
LIMIT = 3   -- Incorrect
```

**Memory:** LIMIT → How many rows do I need?

### OFFSET

OFFSET skips a specified number of rows before returning the result.

```sql
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
```

How it works:

```text
DESC       → Highest first
OFFSET 1   → Skip the first row
LIMIT 1    → Return the next row
```

**Memory:**

```text
OFFSET → Skip
LIMIT  → Take
```

---

# 💼 Day 2 — Real-World Sales Practice

## Sales Table

| order_id | product | category | amount | city |
|---:|---|---|---:|---|
| 101 | Laptop | Electronics | 65000 | Chennai |
| 102 | Mouse | Accessories | 1200 | Chennai |
| 103 | Phone | Electronics | 45000 | Bengaluru |
| 104 | Keyboard | Accessories | 2500 | Chennai |
| 105 | Monitor | Electronics | 18000 | Hyderabad |
| 106 | Headset | Accessories | 3200 | Chennai |
| 107 | Tablet | Electronics | 28000 | Bengaluru |
| 108 | Camera | Electronics | 55000 | Chennai |

## Business Questions Practiced

### Top 5 Sales

```sql
SELECT *
FROM sales
ORDER BY amount DESC
LIMIT 5;
```

### 3 Lowest Sales

```sql
SELECT *
FROM sales
ORDER BY amount ASC
LIMIT 3;
```

### Top 3 Sales from Chennai

```sql
SELECT *
FROM sales
WHERE city = 'Chennai'
ORDER BY amount DESC
LIMIT 3;
```

### Top 2 Electronics Sales

```sql
SELECT *
FROM sales
WHERE category = 'Electronics'
ORDER BY amount DESC
LIMIT 2;
```

### Highest Electronics Sale from Chennai

```sql
SELECT *
FROM sales
WHERE category = 'Electronics'
AND city = 'Chennai'
ORDER BY amount DESC
LIMIT 1;
```

---

# 🎯 Finding the Second-Highest Value

A simple pattern for finding the second-highest row is:

```sql
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
```

### Thinking Process

```text
ORDER BY salary DESC
        ↓
Highest salary first
        ↓
OFFSET 1
        ↓
Skip the highest
        ↓
LIMIT 1
        ↓
Take the next row
```

**Memory:** Sort → Skip → Take

---

# 🎤 Day 2 — Interview Practice

### What is ORDER BY?

ORDER BY sorts result rows based on a specified column.

### What is the difference between ASC and DESC?

ASC sorts from low to high, while DESC sorts from high to low.

### What does LIMIT do?

LIMIT returns at most the specified number of rows.

### What does OFFSET do?

OFFSET skips a specified number of rows before returning the result.

### Why use ORDER BY with LIMIT?

A Data Analyst can use them together to identify top or bottom records.

Example:

```sql
SELECT *
FROM sales
ORDER BY amount DESC
LIMIT 5;
```

This can be used to find the top 5 highest-value sales.

---

# 🧩 Day 2 — SQL Problem

### Problem

Find the employee with the second-highest salary.

### Solution

```sql
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
```

### Key Learning

```text
DESC      → Highest first
OFFSET 1  → Skip the highest
LIMIT 1   → Return the next row
```

---

# ⚠️ Day 2 — Personal Mistakes

### Mistake 1 — ORDER BY needs a column

Incorrect:

```sql
ORDER BY DESC
```

Correct:

```sql
ORDER BY amount DESC
```

### Mistake 2 — LIMIT syntax

Incorrect:

```sql
LIMIT = 3
```

Correct:

```sql
LIMIT 3
```

### Mistake 3 — Missing comma

Incorrect:

```sql
SELECT product amount
FROM sales;
```

Correct:

```sql
SELECT product, amount
FROM sales;
```

### Mistake 4 — Precise terminology

Instead of:

> ORDER BY orders the columns

Use:

> ORDER BY sorts rows using a specified column.

Instead of:

> LIMIT returns 5 values

Use:

> LIMIT returns at most 5 rows.

---

# 🧠 SQL Thinking Framework

Before writing a SQL query, ask:

```text
1. What data do I need?
2. Which table contains it?
3. Which columns do I need?
4. Which rows should I filter?
5. Do I need to sort the result?
6. How many rows do I need?
```

---

# 📈 Learning Progress

## Day 01 ✅

- SELECT
- DISTINCT
- WHERE
- Comparison Operators
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

## Day 02 ✅

- ORDER BY
- ASC
- DESC
- LIMIT
- OFFSET
- WHERE + ORDER BY + LIMIT
- Second-highest value

---

# 🎯 Goal

Build practical SQL skills for an Entry-Level Data Analyst career through:

**Daily Practice → Real-World Questions → Problem Solving → Interview Preparation → Projects**

More topics will be added as I progress through my SQL learning journey.

---

## 👨‍💻 Author

**Prasath B**

Aspiring Data Analyst | Electronics and Communication Engineering

GitHub: https://github.com/Prasath-B8506

LinkedIn: https://www.linkedin.com/in/prasathb04/
