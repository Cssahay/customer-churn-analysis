-- Q1. Churn by Tenure Group

SELECT
    CASE
        WHEN tenure < 12 THEN '0-11 Months'
        WHEN tenure < 24 THEN '12-23 Months'
        WHEN tenure < 48 THEN '24-47 Months'
        ELSE '48+ Months'
    END AS Tenure_Group,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customers
GROUP BY Tenure_Group
ORDER BY Churn_Rate DESC;