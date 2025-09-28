Student: Tlhohonolofatso Temana Semelane

Course: Database Development with PL/SQL

Instructor: Eric Maniraguha

Date: 2025-09-28

Problem Definition
Business Context:  
A Rwandan retail company runs an e-commerce platform specializing in beverages. The company’s mission is to optimize sales and marketing strategies to increase market share and profitability in a competitive sector.

Data Challenge:
Currently, management lacks deep insights into which products excel in different regions and quarters, how customers’ buying behavior shifts over time, and which customer segments offer the most potential. To address this, analytical queries must be developed that leverage sales transaction data for targeted business actions.

Expected Outcome:
Advanced analysis will uncover the highest-performing products, define valuable customer segments, and highlight sales trends. These insights will empower management to make informed decisions about marketing campaigns, inventory management, and customer engagement initiatives.

2.Success Criteria
Each goal was implemented and documented in both SQL scripts and screenshots:
A. Top 5 products per region/quarter → RANK()
B. Running monthly sales totals → SUM() OVER()
C. Month-over-month growth → LAG() / LEAD()
D. Customer quartiles → NTILE(4)
E. 3-month moving averages → AVG() OVER()

3. Database Schema
I created 3 tables: Customers, Products, Transactions.
Customers – Stores customer info (customer_id, name, region)  
Products – Product catalog (product_id, name, category)  
Transactions – Sales records (transaction_id, customer_id, product_id, sale_date, amount)

 Screenshots:
ER Diagram Placeholder:
![ER Diagram](screenshots/screenshots_er_diagram_er_diagram.PNG)


