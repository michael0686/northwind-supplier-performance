# Supplier Performance & Lead-Time Analysis — Northwind SQL Project

This portfolio project analyzes supplier performance in the Northwind database using SQL.  
The goal is to evaluate average lead time per supplier and determine where delays are occurring.

## Business Questions
- Which suppliers provide the most products?
- Which suppliers are fastest in fulfillment?
- Which suppliers create the highest risk of delayed delivery?

## Skills Demonstrated
- SELECT, JOIN, GROUP BY, ORDER BY
- Calculated fields (lead time)
- Business-logic rating using CASE statements
- Clear communication of insights

## Dataset
PostgreSQL Northwind sample database

## Deliverables
| File | Purpose |
|------|---------|
| `queries.sql` | Complete SQL script for the project |
| `findings.md` | Business interpretation of results |
| `screenshots/` | Proof of executed SQL queries |

## Summary of Findings
- Best supplier: **Tokyo Traders — 26.35 days**
- Worst supplier: **PB Knäckebröd AB — 28.82 days**
- Lead-time differences across suppliers are small, suggesting structural supply chain delays rather than vendor-specific issues.
