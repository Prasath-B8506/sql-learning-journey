# SQL Learning Journey 📊

This repository documents my hands-on SQL learning journey as I prepare for an Entry-Level Data Analyst role.

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
