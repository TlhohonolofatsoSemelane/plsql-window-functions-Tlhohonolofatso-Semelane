### 1. Ranking: Top 5 products per region by sales

SELECT 
    region,
    product_id,
    name AS product_name,
    sale_quarter,
    total_amount,
    RANK() OVER (PARTITION BY region, sale_quarter ORDER BY total_amount DESC) AS rank
FROM (
    SELECT 
        c.region,
        p.product_id,
        p.name,
        TO_CHAR(t.sale_date, 'Q') AS sale_quarter,
        SUM(t.amount) AS total_amount
    FROM transactions t
    JOIN customers c ON t.customer_id = c.customer_id
    JOIN products p ON t.product_id = p.product_id
    GROUP BY c.region, p.product_id, p.name, TO_CHAR(t.sale_date, 'Q')
)
WHERE RANK() OVER (PARTITION BY region, sale_quarter ORDER BY total_amount DESC) <= 5;

### 2. Aggregate: Running monthly sales totals

SELECT 
    TO_CHAR(sale_date, 'YYYY-MM') AS month,
    SUM(amount) AS monthly_total,
    SUM(SUM(amount)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM')) AS running_total
FROM transactions
GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
ORDER BY month;

### 3. Navigation: Month-over-month growth calculation

WITH monthly_sales AS (
    SELECT 
        TO_CHAR(sale_date, 'YYYY-MM') AS month,
        SUM(amount) AS total_amount
    FROM transactions
    GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
)
SELECT 
    month,
    total_amount,
    LAG(total_amount) OVER (ORDER BY month) AS prev_month_amount,
    CASE 
        WHEN LAG(total_amount) OVER (ORDER BY month) IS NULL THEN NULL
        ELSE ROUND((total_amount - LAG(total_amount) OVER (ORDER BY month)) / LAG(total_amount) OVER (ORDER BY month) * 100, 2)
    END AS mom_growth_pct
FROM monthly_sales
ORDER BY month;

### 4. Distribution: Customer quartiles by total spending

SELECT 
    customer_id,
    total_spent,
    NTILE(4) OVER (ORDER BY total_spent DESC) AS customer_quartile
FROM (
    SELECT 
        customer_id,
        SUM(amount) AS total_spent
    FROM transactions
    GROUP BY customer_id
);

### 5. Moving Average: 3-month moving average of monthly sales

WITH monthly_totals AS (
    SELECT 
        TO_CHAR(sale_date, 'YYYY-MM') AS month,
        SUM(amount) AS total_amount
    FROM transactions
    GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
)
SELECT 
    month,
    total_amount,
    AVG(total_amount) OVER (
        ORDER BY month
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg_3_month
FROM monthly_totals
ORDER BY month;
