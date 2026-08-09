Q1. Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customers;

Q2. Preview Dataset
SELECT *
FROM customers
LIMIT 10;

Q3. Churn Distribution
SELECT
    Churn,
    COUNT(*) AS Customers
FROM customers
GROUP BY Churn;

Q4. Overall Churn Rate
SELECT
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customers;

Q5. Average Monthly Charges
SELECT
    ROUND(AVG(MonthlyCharges),2) AS Avg_Monthly_Charge
FROM customers;