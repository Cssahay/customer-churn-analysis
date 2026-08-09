-- Q1. Customer Churn Risk Classification
SELECT
    customerID,
    Contract,
    InternetService,
    MonthlyCharges,
    tenure,
    CASE
        WHEN Contract = 'Month-to-month'
             AND InternetService = 'Fiber optic'
             AND tenure < 12
        THEN 'High Risk'

        WHEN Contract = 'Month-to-month'
             AND tenure < 24
        THEN 'Medium Risk'

        ELSE 'Low Risk'
    END AS Risk_Level
FROM customers;