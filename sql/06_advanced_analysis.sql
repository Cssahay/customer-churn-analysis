-- Q1. Contract + Internet Service
SELECT
    Contract,
    InternetService,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customers
GROUP BY Contract, InternetService
ORDER BY Churn_Rate DESC;

-- Q2. Payment Method + Contract
SELECT
    PaymentMethod,
    Contract,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customers
GROUP BY PaymentMethod, Contract
ORDER BY Churn_Rate DESC;

-- Q3. Average Charges by Tenure Group
SELECT
    CASE
        WHEN tenure < 12 THEN '0-11 Months'
        WHEN tenure < 24 THEN '12-23 Months'
        WHEN tenure < 48 THEN '24-47 Months'
        ELSE '48+ Months'
    END AS Tenure_Group,
    ROUND(AVG(MonthlyCharges), 2) AS Avg_Monthly_Charge,
    ROUND(AVG(TotalCharges), 2) AS Avg_Total_Charges
FROM customers
GROUP BY Tenure_Group;

-- Q4. High-Value Customers Who Churned
SELECT
    customerID,
    MonthlyCharges,
    Contract,
    tenure
FROM customers
WHERE
    MonthlyCharges > 80
    AND Contract = 'Month-to-month'
    AND Churn = 'Yes'
ORDER BY MonthlyCharges DESC;