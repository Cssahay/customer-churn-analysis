# Customer Churn Analysis

## Project Overview

Customer churn is a major challenge for subscription-based businesses because retaining existing customers can be more cost-effective than acquiring new ones.

In this project, I analyzed 7,043 telecommunications customers to identify patterns associated with churn. Using SQL and SQLite, I examined churn across contract type, payment method, internet service, customer tenure, Online Security, and Tech Support.

The analysis was then presented through an interactive Power BI dashboard containing key churn metrics and customer segment visualizations. The final findings were used to develop data-driven recommendations for improving customer retention.

## Project Objectives

The main goal of this project was to explore customer churn and identify the factors associated with customers leaving a telecommunications company.

The project aimed to:

- Analyze customer churn trends using SQL.
- Identify customer segments with higher churn rates.
- Examine how contract type, internet service, payment method, customer tenure, Tech Support, and Online Security relate to churn.
- Build an interactive Power BI dashboard to communicate key findings.
- Develop practical, data-driven recommendations to support customer retention.

## Tools & Technologies

- **SQL (SQLite)** – Queried and analyzed customer churn data.
- **DB Browser for SQLite** – Managed and explored the SQLite database.
- **Microsoft Excel** – Performed initial data review and validation.
- **Power BI** – Built an interactive dashboard to visualize churn patterns and key metrics.
- **Git & GitHub** – Managed and documented the project.

## Dataset

This project uses the **IBM Telco Customer Churn** dataset, which contains information about customers of a telecommunications company.

The dataset includes customer demographics, subscribed services, contract information, billing details, payment methods, tenure, and churn status.

### Dataset Summary

- **Total Records:** 7,043
- **Total Columns:** 21
- **Primary Key:** `customerID`
- **Target Variable:** `Churn`

## Business Questions

The analysis focused on the following business questions:

### Data Exploration

1. How many customers are included in the dataset?
2. What is the overall customer churn rate?
3. What is the average monthly charge for customers?

### Customer Services & Contracts

4. Which contract type has the highest churn rate?
5. Which internet service has the highest churn rate?
6. Does having Tech Support relate to lower churn?
7. Does having Online Security relate to lower churn?
8. Which payment method is associated with the highest churn?

### Customer Tenure

9. Which customer tenure group has the highest churn rate?
10. How does churn change as customer tenure increases?

### Churn Risk Segmentation

11. Which customers can be classified as High, Medium, or Low churn risk using predefined business rules?

## Methodology

The analysis followed the workflow below:

1. Imported the IBM Telco Customer Churn dataset into a SQLite database using DB Browser for SQLite.
2. Performed data exploration to understand the dataset structure and validate the data.
3. Used SQL to analyze customer churn across contract, service, payment, and tenure-related attributes.
4. Calculated customer counts and churn rates for different customer segments using aggregate functions and conditional logic.
5. Compared churn rates across customer segments to identify the groups with the highest churn.
6. Built an interactive Power BI dashboard to visualize the analysis.
7. Developed business recommendations based on the identified churn patterns.

## Key Findings

### 1. Overall Customer Churn

The overall customer churn rate was **26.54%**, with **1,869 out of 7,043 customers** having churned.

This means that approximately **1 in 4 customers** in the dataset had left the company.

### 2. Contract Type

Contract type showed one of the strongest differences in churn rates.

| Contract Type | Customers | Churned | Churn Rate |
|---|---:|---:|---:|
| Month-to-month | 3,875 | 1,655 | 42.71% |
| One year | 1,473 | 166 | 11.27% |
| Two year | 1,695 | 48 | 2.83% |

Customers on month-to-month contracts had the highest churn rate at **42.71%**, while customers on two-year contracts had the lowest at **2.83%**.

Customers with longer-term contracts therefore showed substantially lower churn rates.

### 3. Internet Service

| Internet Service | Customers | Churned | Churn Rate |
|---|---:|---:|---:|
| Fiber optic | 3,096 | 1,297 | 41.89% |
| DSL | 2,421 | 459 | 18.96% |
| No internet service | 1,526 | 113 | 7.40% |

Fiber optic customers had the highest churn rate at **41.89%**.

This indicates that the company should investigate factors such as pricing, service quality, installation experience, and customer expectations within the fiber optic segment.

### 4. Payment Method

| Payment Method | Customers | Churned | Churn Rate |
|---|---:|---:|---:|
| Electronic check | 2,365 | 1,071 | 45.29% |
| Mailed check | 1,612 | 308 | 19.11% |
| Bank transfer (automatic) | 1,544 | 258 | 16.71% |
| Credit card (automatic) | 1,522 | 232 | 15.24% |

Customers using **Electronic Check** had the highest churn rate at **45.29%**.

Customers using automatic payment methods had substantially lower churn rates, with **16.71%** for automatic bank transfers and **15.24%** for automatic credit card payments.

### 5. Customer Tenure

| Tenure Group | Customers | Churned | Churn Rate |
|---|---:|---:|---:|
| 0–11 Months | 2,069 | 999 | 48.28% |
| 12–23 Months | 1,047 | 309 | 29.51% |
| 24–47 Months | 1,624 | 339 | 20.87% |
| 48+ Months | 2,303 | 222 | 9.64% |

Customers with less than 12 months of tenure had the highest churn rate at **48.28%**.

Churn decreased as customer tenure increased, with customers who had been with the company for 48 months or more having a churn rate of only **9.64%**.

This suggests that the early stages of the customer lifecycle are particularly important for retention efforts.

### 6. Tech Support

Customers without Tech Support had a churn rate of **41.64%**, compared with **15.17%** among customers who had Tech Support.

This shows a strong association between Tech Support subscription and lower churn.

### 7. Online Security

Customers without Online Security had a churn rate of **41.77%**, compared with **14.61%** among customers who subscribed to Online Security.

Customers with Online Security therefore showed substantially lower churn rates.

### 8. Rule-Based Churn Risk Classification

A rule-based customer risk classification was created using contract type, internet service, and customer tenure.

- **High Risk:** Month-to-month contract + Fiber optic internet + less than 12 months tenure.
- **Medium Risk:** Month-to-month contract + less than 24 months tenure.
- **Low Risk:** Customers who do not meet the above conditions.

This classification is a business-rule segmentation rather than a machine-learning prediction model and can be used to prioritize customers for further retention analysis.

## Power BI Dashboard

An interactive Power BI dashboard was created to present the analysis and allow users to explore different customer segments.

The dashboard includes:

- Total Customers
- Average Monthly Charges
- Churn Rate
- Churned Customers
- Customer churn by contract type
- Customer churn by payment method
- Customer churn by internet service
- Customer churn by tenure group
- Customer churn by Online Security
- Customer churn by Tech Support
- Interactive filters for contract, gender, and payment method

<img width="1216" height="688" alt="image" src="https://github.com/user-attachments/assets/e6260915-c658-4afc-b375-5b6137f87fdf" />


## Business Recommendations

Based on the analysis, the following actions could help reduce customer churn:

### 1. Focus retention efforts on month-to-month customers

Month-to-month customers had a churn rate of **42.71%**, substantially higher than customers on one-year and two-year contracts.

The company could test targeted incentives that encourage month-to-month customers to move to longer-term contracts.

### 2. Prioritize new customers

Customers with less than 12 months of tenure had the highest churn rate at **48.28%**.

The company could introduce stronger onboarding programs, proactive customer support, and targeted retention offers during the first year of the customer relationship.

### 3. Investigate the Fiber Optic customer experience

Fiber optic customers had a churn rate of **41.89%**.

The company should investigate whether pricing, service quality, installation issues, or customer expectations are contributing to the higher churn rate in this segment.

### 4. Encourage automatic payment methods

Electronic Check customers had the highest churn rate at **45.29%**, while customers using automatic payment methods had substantially lower churn rates.

The company could encourage customers to adopt automatic payment methods through simplified enrollment or targeted incentives.

### 5. Promote value-added support services

Customers without Tech Support or Online Security had substantially higher churn rates than customers who subscribed to these services.

The company could test targeted offers or bundled packages for these services, particularly among customer segments with higher churn.

## Skills Demonstrated

- SQL querying and data exploration
- SQLite database management
- Data validation
- Aggregation and conditional logic
- Customer segmentation
- Churn rate analysis
- Business analysis
- Power BI dashboard development
- Data visualization
- Business recommendations
- Git and GitHub project organization

## Project Structure

```text
Customer-Churn-Analysis/
│
├── data/
│   └── Telco-Customer-Churn.csv
│
├── database/
│   └── churn.db
│
├── sql/
│   ├── 01_exploration.sql
│   ├── 02_churn_analysis.sql
│   ├── 03_customer_segmentation.sql
│   └── 04_business_insights.sql
│
├── powerbi/
│   └── Customer_Churn_Dashboard.pbix
│
├── images/
│   └── dashboard.png
│
└── README.md
