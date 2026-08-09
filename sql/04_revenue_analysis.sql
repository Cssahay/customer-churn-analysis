-- Q1. Average Charges by Churn Status
SELECT
    Churn,
    ROUND(AVG(MonthlyCharges),2) AS Avg_Monthly_Charge,
    ROUND(AVG(TotalCharges),2) AS Avg_Total_Charges
FROM customers
GROUP BY Churn;