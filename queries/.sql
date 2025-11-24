/* ---------------------------------------------------------------
   Supplier Performance & Lead-Time Analysis — Northwind Database
   Author: Michael Aaron
   Purpose: Demonstrate SQL skills for supply chain / analytics roles
   --------------------------------------------------------------- */

/* ---------------------------------------------------------------
   Query 1 — List all suppliers
   ---------------------------------------------------------------
   Purpose:
   - Confirm access to supplier data
   - Establish the list of suppliers that will be analyzed later
   --------------------------------------------------------------- */
SELECT supplier_id,
       company_name,
       contact_name,
       country
FROM suppliers
ORDER BY company_name;



/* ---------------------------------------------------------------
   Query 2 — Count how many different products each supplier provides
   ---------------------------------------------------------------
   Purpose:
   - Identify which suppliers provide the largest product variety
   - Understand strategic importance of each supplier
   Skills demonstrated:
   - JOIN, GROUP BY, aggregates, ORDER BY
   --------------------------------------------------------------- */
SELECT s.company_name,
       COUNT(p.product_id) AS total_products_supplied
FROM suppliers s
JOIN products p
  ON s.supplier_id = p.supplier_id
GROUP BY s.company_name
ORDER BY total_products_supplied DESC;



/* ---------------------------------------------------------------
   Query 3 — Calculate average lead time per supplier
   ---------------------------------------------------------------
   Purpose:
   - Measure how many days pass between the invoice order date
     and the required delivery date
   - Lower values = faster, more reliable suppliers
   Skills demonstrated:
   - Multi-table JOINs, calculated fields, GROUP BY
   --------------------------------------------------------------- */
SELECT s.company_name,
       ROUND(AVG(o.required_date - o.order_date), 2) AS avg_lead_time_days
FROM suppliers s
JOIN products p
  ON s.supplier_id = p.supplier_id
JOIN order_details od
  ON p.product_id = od.product_id
JOIN orders o
  ON od.order_id = o.order_id
GROUP BY s.company_name
ORDER BY avg_lead_time_days;



/* ---------------------------------------------------------------
   Query 4 — Add a performance rating in business language
   ---------------------------------------------------------------
   Purpose:
   - Convert numeric KPIs into decision-support insights
   - Useful for dashboards, reporting, and supplier negotiations
   Skills demonstrated:
   - CASE expression for business logic
   - ORDER BY for ranking
   --------------------------------------------------------------- */
SELECT s.company_name,
       ROUND(AVG(o.required_date - o.order_date), 2) AS avg_lead_time_days,
       CASE
           WHEN AVG(o.required_date - o.order_date) BETWEEN 26 AND 27 THEN 'Excellent'
           WHEN AVG(o.required_date - o.order_date) BETWEEN 27 AND 28 THEN 'Acceptable'
           ELSE 'Needs Improvement'
       END AS performance_rating
FROM suppliers s
JOIN products p
  ON s.supplier_id = p.supplier_id
JOIN order_details od
  ON p.product_id = od.product_id
JOIN orders o
  ON od.order_id = o.order_id
GROUP BY s.company_name
ORDER BY avg_lead_time_days;

   --------------------------------------------------------------- /*

