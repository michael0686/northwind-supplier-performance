# Supplier Performance & Lead-Time Analysis — Northwind SQL Project

This portfolio project analyzes supplier performance in the **Northwind PostgreSQL sample database** using SQL.  
The goal is to evaluate how supplier behavior affects fulfillment speed and operational risk by measuring **average lead time** (required_date – order_date) for each supplier.

---

## Business Questions
This project answers four practical questions relevant to supply chain and procurement roles:

1. Who are the suppliers Northwind works with?
2. Which suppliers provide the most product variety?
3. Which suppliers deliver the fastest vs. slowest (average lead time)?
4. How can suppliers be grouped into performance tiers using business logic?

---

## Skills Demonstrated
| Category | Skills |
|----------|--------|
| SQL Fundamentals | SELECT, JOIN, WHERE, ORDER BY |
| Aggregation | GROUP BY, COUNT, AVG |
| Calculated Fields | Date arithmetic (lead-time measurement) |
| Business Logic | CASE expressions to convert numbers into ratings |
| Communication | Translating query results into actionable insights |

---

## Database
- **Engine:** PostgreSQL  
- **Schema Style:** lowercase `snake_case` (e.g., `supplier_id`, `order_date`, `order_details`)  
- **Tables Used:** `suppliers`, `products`, `orders`, `order_details`

---

## Summary of Findings
| Supplier | Avg Lead Time (Days) | Performance |
|----------|----------------------|-------------|
| **Tokyo Traders** | **26.35** | Lowest Average lead-time |
| **PB Knäckebröd AB** | **28.82** | Highest Average lead-time |

### Interpretation
- Lead times across suppliers are **consistently long**, suggesting a **system-wide delay** rather than failure by a single vendor.
- Improving fulfillment speed will likely require **process improvements across suppliers**, not replacement of just one.
- Suppliers could be managed using **delivery-time KPIs** tied to expectations or incentives for performance.

---

## Project Files
| File | Description |
|------|-------------|
| `queries.sql` | Full SQL script with comments explaining each step |
| `findings.md` | Business interpretation of SQL results |
| `screenshots/` | Screenshots showing executed queries + result sets |

---

## Screenshots
```markdown
![Supplier List](screenshots/01_query_supplier_list.png)
![Product Count per Supplier](screenshots/02_query_supplier_product_count.png)
![Average Lead Time](screenshots/03_average_lead_time.png)
![Supplier Performance Ratings](screenshots/04_supplier_ratings.png)
