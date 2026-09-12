# E-Commerce Sales Analysis — Query Outputs

## 1. Total Revenue

**SQL Question:**  
What is the total revenue generated from all orders?

**Expected Output:**

| total_revenue |
|---:|
| ₹166,000 |

This result is calculated using:

`quantity × product price`
---

## 2. Customer Revenue

**SQL Question:**  
Which customers generated the highest total revenue?

**Output:**

| Customer | Total Revenue |
|---|---:|
| Arun | ₹65,000 |
| Bala | ₹62,000 |
| Esha | ₹14,000 |
| Farah | ₹10,000 |
| Divya | ₹8,000 |
| Charan | ₹5,000 |

**Top Customer:** Arun — ₹65,000
---

## 3. Product Revenue

**SQL Question:**  
Which products generated the highest total revenue?

**Output:**

| Product | Total Revenue |
|---|---:|
| Laptop | ₹120,000 |
| Desk | ₹16,000 |
| Chair | ₹15,000 |
| Headphones | ₹6,000 |
| Mouse | ₹5,000 |
| Keyboard | ₹4,000 |

**Top Product:** Laptop — ₹120,000

---

## 4. Category Revenue

**SQL Question:**  
Which category generated the highest total revenue?

**Output:**

| Category | Total Revenue |
|---|---:|
| Electronics | ₹135,000 |
| Furniture | ₹31,000 |

**Top Category:** Electronics — ₹135,000

---

## 5. Monthly Revenue

**SQL Question:**  
How much revenue was generated in each month?

**Output:**

| Month | Total Revenue |
|---|---:|
| January | ₹67,000 |
| February | ₹18,000 |
| March | ₹81,000 |

**Highest Revenue Month:** March — ₹81,000

---

## 6. Repeat Customers

**SQL Question:**  
Which customers placed more than one order?

**Output:**

| Customer | Order Count |
|---|---:|
| Arun | 2 |
| Bala | 2 |
| Charan | 2 |
| Esha | 2 |

**Total Repeat Customers:** 4

---

## 7. City Revenue

**SQL Question:**  
Which city generated the highest total revenue?

**Output:**

| City | Total Revenue | Total Orders | Average Order Value |
|---|---:|---:|---:|
| Chennai | ₹68,000 | 4 | ₹17,000 |
| Bangalore | ₹62,000 | 3 | ₹20,666.67 |
| Mumbai | ₹14,000 | 2 | ₹7,000 |
| Hyderabad | ₹8,000 | 1 | ₹8,000 |

**Top City by Revenue:** Chennai — ₹68,000

---

## 8. Customer Revenue Ranking

**SQL Question:**  
What is the revenue ranking of each customer?

**Output:**

| Customer | Total Revenue | Rank |
|---|---:|---:|
| Arun | ₹65,000 | 1 |
| Bala | ₹62,000 | 2 |
| Esha | ₹14,000 | 3 |
| Farah | ₹10,000 | 4 |
| Divya | ₹8,000 | 5 |
| Charan | ₹5,000 | 6 |

---

## 9. Product Revenue Ranking

**SQL Question:**  
What is the revenue ranking of each product?

**Output:**

| Product | Total Revenue | Rank |
|---|---:|---:|
| Laptop | ₹120,000 | 1 |
| Desk | ₹16,000 | 2 |
| Chair | ₹15,000 | 3 |
| Headphones | ₹6,000 | 4 |
| Mouse | ₹5,000 | 5 |
| Keyboard | ₹4,000 | 6 |

---

## 10. Customer and Product Performance

**SQL Question:**  
How do customers and products perform together?

**Output:**

| Customer | Product | Quantity | Revenue |
|---|---|---:|---:|
| Arun | Laptop | 1 | ₹60,000 |
| Arun | Chair | 1 | ₹5,000 |
| Bala | Mouse | 2 | ₹2,000 |
| Bala | Laptop | 1 | ₹60,000 |
| Charan | Keyboard | 2 | ₹4,000 |
| Charan | Mouse | 3 | ₹3,000 |
| Divya | Desk | 1 | ₹8,000 |
| Esha | Headphones | 2 | ₹6,000 |
| Esha | Desk | 1 | ₹8,000 |
| Farah | Chair | 2 | ₹10,000 |

---

## 11. Key KPIs

**Total Revenue:** ₹166,000

**Total Orders:** 10

**Unique Customers:** 6

**Average Order Value:** ₹16,600

---

## 12. Business Insights

- March generated the highest revenue with ₹81,000.
- Laptop was the highest revenue-generating product with ₹120,000.
- Mouse had the highest quantity sold with 5 units.
- Electronics generated the highest category revenue with ₹135,000.
- Arun was the highest-value customer with ₹65,000.
- Four customers made repeat purchases.
- Chennai generated the highest city-level revenue with ₹68,000.

---

## Final Project Summary

This project helped me apply SQL to a practical E-Commerce business problem.

The analysis covered:

**Revenue → Customers → Products → Categories → Monthly Trends → Repeat Customers → City Performance → Business Insights**
