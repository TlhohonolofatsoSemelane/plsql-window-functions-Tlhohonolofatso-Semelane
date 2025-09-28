# PL/SQL Window Functions Mastery Project

## Project Description

This repository demonstrates advanced business analytics in Oracle using PL/SQL window functions. The database is designed for a retail scenario, enabling insights into product sales, customer segmentation, and sales trends using ranking, aggregate, navigation, and distribution functions.

***

## Business Problem

Dopik Electronics aims to optimize regional and quarterly sales of beverage products. The analytical goals are to rank products and customers, track monthly trends, analyze growth, and segment customer spending for targeted campaigns.

***

## Database Schema

Three tables are defined:

| Table        | Key Columns                                     |
|--------------|-------------------------------------------------|
| customers    | customer_id (PK), name, region                  |
| products     | product_id (PK), name, category                 |
| transactions | transaction_id (PK), customer_id (FK), product_id (FK), sale_date, amount |

**ER diagram:**  
See `/er_diagram/er_diagram_v1.png`

***

## File Structure

```
/sql/
    create_tables.sql         -- Database schema creation
    insert_sample_data.sql    -- Sample data insertion
    window_functions.sql      -- Window function queries

/er_diagram/
    er_diagram_v1.png         -- Entity Relationship Diagram

/screenshots/
    data_insertion/           -- Data insertion screenshots
    er_diagram/               -- ER diagram screenshots
    queries/                  -- Query outputs
    schema_creation/          -- Schema setup screenshots

README.md                    -- Project documentation
references.md                -- Bibliography
```

***

## How to Run

1. Open Oracle SQL Developer.
2. Run `/sql/create_tables.sql` for schema setup.
3. Run `/sql/insert_sample_data.sql` to populate example data.
4. Run queries from `/sql/window_functions.sql` and compare result screenshots.
5. Review ER diagrams and supporting images in `/screenshots/`.

***

## 14 Window Function Queries

1. **Row Number by Region:** Numbers customers within each region.
2. **Rank Top Customers:** Orders customers by total sales.
3. **Dense Rank Products:** Distinguishes product sales with ties.
4. **Percent Rank Customers:** Percentile rank by customer spending.
5. **Cumulative Distribution Products:** Distribution of product sales.
6. **Running Total Sales:** Running sum of sales by date.
7. **Moving Average Sales:** Three-period moving average.
8. **Count Customers by Region:** Number of customers within each region.
9. **Min/Max Sales by Month:** Monthly min and max sale amounts.
10. **LAG Previous Month Sales:** Previous month sales for growth analysis.
11. **LEAD Next Month Sales:** Following month sales forecast.
12. **NTILE Customer Quartiles:** Segments customers into quartiles by spending.
13. **First Purchase Month:** Finds each customer’s first purchase date.
14. **Last Purchase Amount:** Last amount spent per customer.

*Full queries included in `/sql/window_functions.sql`.*

***

## Results and Insights

- **Descriptive:** Top products and customers identified; running totals show steady growth.
- **Diagnostic:** Promotions and region-based campaigns influence quarterly performance.
- **Prescriptive:** Recommend focused marketing for high-spending quartile and product restocking in high-sales regions.

***

## References

See `references.md` for all sources.
- All sources properly cited. Analysis and implementation are original.
- No AI-generated content was used without adaptation.

***

## Academic Integrity

By submitting this project, the author affirms adherence to AUCA’s academic standards and coding guidelines.

***

## Contact

Project by Elizabeth MINGW64  
Instructor: Eric Maniraguha ([eric.maniraguha@auca.ac.rw](mailto:eric.maniraguha@auca.ac.rw))

***

This README provides clarity on project purpose, setup, schema, queries, and assignment compliance.Here is an updated README.md, with clearly segmented sections and direct instructions for Oracle PL/SQL work:[6][11][5]

***

# PL/SQL Window Functions Mastery Project

## Overview

This repository demonstrates advanced PL/SQL window function analytics in an Oracle environment. It addresses a real business scenario for Dopik Electronics, using ranking, aggregation, navigation, and distribution functions to provide actionable sales and customer insights.

***

## Business Scenario

**Company:** Dopik Electronics  
**Department:** Sales Analytics  
**Industry:** Retail / E-commerce

**Challenge:**  
The sales analytics team seeks to identify top beverage products, analyze regional trends, and segment customers by purchasing behavior to optimize future campaigns and inventory.

**Expected Outcome:**  
Insights into best-selling products, sales growth trends, customer segmentation for marketing, and data-driven inventory suggestions.

***

## Database Schema

- **customers:** (customer_id, name, region)
- **products:** (product_id, name, category)
- **transactions:** (transaction_id, customer_id, product_id, sale_date, amount)

Tables are linked via foreign keys in transactions (customer_id and product_id).  
ER diagram: See `/er_diagram/er_diagram_v1.png`

***

## Directory Structure

```
sql/                  # All database scripts
  create_tables.sql
  insert_sample_data.sql
  window_functions.sql
er_diagram/           # ER diagram image(s)
screenshots/
  data_insertion/
  er_diagram/
  queries/
  schema_creation/
references.md         # List of sources
README.md             # Main documentation
```

***

## Running the Project

1. Use Oracle SQL Developer to connect and run `create_tables.sql`.
2. Run `insert_sample_data.sql` to populate the tables.
3. Run each of the 14 queries in `window_functions.sql`, saving screenshots as required for documentation.
4. Reference `er_diagram/` for the schema.

***

## Analysis & Insights

- **Descriptive:** Presented monthly sales growth and customer product preferences.
- **Diagnostic:** Identified promo-driven spikes and region-based performance outliers.
- **Prescriptive:** Recommend focused campaigns for top quartiles and adjust inventory per high performer regions.

***

## Window Function Queries Included

1. Row Number by Region
2. Rank Customers by Sales
3. Dense Rank Product Popularity
4. Percent Rank in Sales
5. Cumulative Distribution by Product
6. Running Total of Transaction Amounts
7. Moving Average of Sales Amount
8. Count Customers Partitioned by Region
9. Min & Max Sales Per Month
10. LAG Previous Month Sales
11. LEAD Next Month Sales
12. NTILE Quartile Customer Spending
13. FIRST_VALUE Customer Purchase Month
14. LAST_VALUE Customer Purchase Amount

See `/sql/window_functions.sql` for full code.

***

## References

All references are listed in `references.md` and cited as required.  
“This project is original work. No AI-generated content was copied without adaptation or attribution.”

***

## Contact & Integrity

Author: Tlhohonolofatso Semelane
Instructor: Eric Maniraguha (eric.maniraguha@auca.ac.rw)  
Academic integrity and ethical standards have been strictly observed.
