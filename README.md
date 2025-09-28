Student: Tlhohonolofatso Temana Semelane

Course: Database Development with PL/SQL

Instructor: Eric Maniraguha

Date: 2025-09-28

# Problem Definition

## Business Context:  

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
ER Diagram:  
<img width="960" height="540" alt="er_diagram" src="https://github.com/user-attachments/assets/b7b2c881-0848-4e0e-a499-fd6f3cc937a6" />

4. Windows Functions
   
Ranking Functions:

Top N customers by total revenue—queries use ROW_NUMBER(), RANK(), DENSE_RANK(), PERCENT_RANK().
<img width="960" height="540" alt="Top_5_products_per_region_by_sale_query" src="https://github.com/user-attachments/assets/dd75330b-2495-4812-86fd-2b9315ad84f6" />
<img width="960" height="534" alt="Top_5_products_region_by_sale_output" src="https://github.com/user-attachments/assets/67832636-d9a1-49bd-9636-f475b78a4ca9" />
Interpretation: Reveals highest spenders, ties, and overall ranking.

Aggregate Functions:

Running totals & trends: SUM(), AVG(), MIN(), MAX() with window frames.
<img width="960" height="540" alt="Aggregate _running_monthly_sales_totals" src="https://github.com/user-attachments/assets/06873350-41cb-47bf-8442-fc694dc7e65c" />
Interpretation: Cumulative spending, average purchase amounts per period.

Navigation Functions:

Use LAG() & LEAD() for sales growth analysis and trend prediction.
<img width="959" height="540" alt="Navigation_month-over-month_growth_calculation_query" src="https://github.com/user-attachments/assets/18c1a853-bbd6-473a-a67b-433cb4637f09" />

<img width="958" height="536" alt="Navigation_month_over_month_growth_calculation_output" src="https://github.com/user-attachments/assets/08e4a0c3-2461-49d1-8153-9647ba3e636e" />
Interpretation: Month-over-month comparisons and forecast preparation.

Distribution Functions:

Apply NTILE(4) and CUME_DIST() for customer segmentation.
<img width="958" height="535" alt="Distribution_Customers_quartiles_by_total_spending" src="https://github.com/user-attachments/assets/c64b5ab5-8090-4dfa-82ed-9c82970ae2f8" />
Interpretation: Categorizes customer spending for targeted marketing programs.

5. Results Analysis:
   
A. Descriptive Analysis  
The analysis revealed that certain beverages such as premium coffee and flavored teas consistently rank as the top-selling products across multiple regions and quarters. Monthly sales totals showed an upward trend from January to March 2024, with noticeable spikes during promotional periods. Customer segmentation using quartiles indicated that roughly 25% of customers contribute over 60% of total sales, highlighting a concentrated group of high-value buyers. A three-month moving average smoothed sales fluctuations, confirming stable growth overall.

B. Diagnostic Analysis  
The strong sales performance of premium beverages is influenced by targeted marketing campaigns and seasonal demand aligned with holidays and festivals. Regions with higher urban density demonstrated greater sales volumes, likely due to better logistics and consumer purchasing power. Customer buying behavior analysis via navigation functions showed repeat purchases and gradual increases in spend among the top quartile segment, suggesting effective customer retention and satisfaction. Month-over-month growth variations correspond to promotional timing and competitor activity.

C. Prescriptive Analysis  
It is recommended to increase inventory and marketing budgets focused on high-performing products and regions, prioritizing the top customer quartile through loyalty programs and personalized offers. Expanding promotional activities during periods identified with growth spikes can amplify revenue. Additionally, regions showing lower sales could benefit from improved distribution and localized marketing efforts. Continued analysis using these window functions should guide dynamic inventory management and customer engagement strategies to maintain competitive advantage.

7. References:
1. Oracle Corporation. (2023). Oracle Database SQL Language Reference – Analytic Functions. Retrieved from https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/Analytic-Functions.html

2. Oracle Tutorial. (2024). Oracle Analytic Functions Guide. Retrieved from https://www.oracletutorial.com/oracle-analytic-functions/

3. Mode Analytics. (2023). SQL Window Functions Tutorial. Retrieved from https://mode.com/sql-tutorial/sql-window-functions/

4. Hightouch. (2024). SQL Window Functions Dictionary. Retrieved from https://hightouch.com/sql-dictionary/sql-window-functions

5. TechOnTheNet. (2024). Oracle/PLSQL Function Reference. Retrieved from https://www.techonthenet.com/oracle/functions/

6. SQL Shack. (2023). Understanding SQL Window Functions. Retrieved from https://www.sqlshack.com/use-window-functions-sql-server/

7. GeeksforGeeks. (2024). Window Functions in PL/SQL. Retrieved from https://www.geeksforgeeks.org/plsql/window-functions-in-plsql/

8. DataLemur. (2024). SQL Time-Series Window Functions: LEAD & LAG Tutorial. Retrieved from https://datalemur.com/sql-tutorial/sql-time-series-window-function-lead-lag

9. Rwanda Dairy Development Program. (2012). Rwanda National Dairy Consumer Survey Analysis & Marketing Strategy Recommendations Workshop. Retrieved from https://cgspace.cgiar.org/server/api/core/bitstreams/f6ca3dbb-b395-4d46-8220-d558d06a9610/content

10. Ngendahimana, L. (2021). Impact of Supply Chain Management on Business Growth: The Case of Inyange Industries Ltd. Retrieved from https://dr.ur.ac.rw/bitstream/handle/123456789/139/Ngendahimana%20Ladislas.pdf?sequence=1&isAllowed=y

 Integrity Statement
All sources were properly cited. Implementations and analysis represent original work.  
No AI-generated content was copied without attribution or adaptation.
















