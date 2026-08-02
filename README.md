# Customer Churn Analysis

## Project Overview

Customer churn is one of the biggest challenges for subscription-based businesses, as keeping existing customers is usually more affordable than finding new ones. In this project, I analyzed customer churn data from a telecommunications company to understand why customers leave and identify the factors that influence their decisions.

I used SQL to explore the dataset and answer business-focused questions about customer demographics, contract types, services, payment methods, and tenure. The findings were then presented in an interactive Power BI dashboard, making it easy to spot churn trends, uncover key insights, and support better business decisions aimed at improving customer retention.

## Project Objectives

The main goal of this project was to explore customer churn and uncover the factors that influence why customers leave a telecommunications company. Specifically, the project aimed to:

* Analyze customer churn trends using SQL.
* Identify which customer groups are most likely to churn.
* Examine how factors such as services, contract types, payment methods, and customer tenure affect churn.
* Create an interactive Power BI dashboard to present key metrics and insights in a clear and engaging way.
* Provide practical, data-driven recommendations to help improve customer retention and reduce churn.

## Tools & Technologies

This project was completed using the following tools:

* **SQL (SQLite)** – Queried and analyzed customer churn data.
* **DB Browser for SQLite** – Managed and explored the SQLite database.
* **Microsoft Excel** – Performed initial data review and validation.
* **Power BI** – Built an interactive dashboard to visualize key insights and churn trends.
* **Git & GitHub** – Tracked project changes and hosted the project repository.

## Dataset

This project uses the **IBM Telco Customer Churn** dataset, which contains information about customers of a telecommunications company. The data includes customer demographics, the services they subscribe to, billing and payment details, contract information, and whether the customer has churned.

**Dataset Summary**

* **Total Records:** 7,043
* **Total Columns:** 21
* **Primary Key:** `customerID`
* **Target Variable:** `Churn`

## Business Questions

The following business questions were explored during the analysis:

### Data Exploration
1. How many customers are included in the dataset?
2. What is the overall customer churn rate?
3. What is the average monthly charge for customers?

### Customer Demographics
4. Does gender influence customer churn?
5. Are senior citizens more likely to churn?
6. Does having a partner affect churn?
7. Does having dependents affect churn?

### Customer Services
8. Which contract type has the highest churn rate?
9. Which internet service has the highest churn rate?
10. Does having Tech Support reduce churn?
11. Does having Online Security reduce churn?
12. Which payment method is associated with the highest churn?

### Revenue & Customer Lifetime
13. Do churned customers pay higher monthly charges?
14. Which customer tenure group has the highest churn rate?

### Predictive Analysis
15. Which customers can be classified as High, Medium, or Low churn risk using business rules?

## Methodology

The analysis was completed using the following workflow:

1. Imported the IBM Telco Customer Churn dataset into a SQLite database using DB Browser for SQLite.
2. Performed data exploration to understand the dataset structure and verify data quality.
3. Used SQL to analyze customer churn across different demographic, service, billing, and contract-related attributes.
4. Calculated churn rates and compared customer segments using aggregate functions and conditional logic.
5. Built an interactive Power BI dashboard to visualize key metrics and business insights.
6. Developed business recommendations based on the analysis to help improve customer retention.


## Key Findings

Based on the SQL analysis, the following insights were identified:

### 1. Overall Customer Churn
- The overall customer churn rate was **26.54%**, meaning approximately **1 in 4 customers** left the company.

### 2. Contract Type
- Customers on **month-to-month contracts** had the highest churn rate (**42.71%**).
- Customers with **one-year contracts** had a significantly lower churn rate (**11.27%**).
- Customers with **two-year contracts** had the lowest churn rate (**2.83%**), suggesting that longer-term contracts greatly improve customer retention.

### 3. Internet Service
- Customers using **Fiber Optic** internet experienced the highest churn rate (**41.89%**).
- Customers using **DSL** had a considerably lower churn rate (**18.96%**).
- Customers without internet service had the lowest churn rate (**7.40%**).

### 4. Payment Method
- Customers paying through **Electronic Check** had the highest churn rate (**45.29%**).
- Customers using **automatic payment methods** (Bank Transfer or Credit Card) had much lower churn rates (**16.71%** and **15.24%**, respectively).

### 5. Customer Tenure
- Customers with **less than 12 months** of tenure showed the highest churn rate (**48.28%**).
- Churn steadily decreased as customer tenure increased.
- Customers with **48 months or more** had a churn rate of only **9.64%**, indicating that long-term customers are much more likely to remain with the company.

### 6. Tech Support
- Customers **without Tech Support** had a churn rate of **41.64%**.
- Customers **with Tech Support** had a much lower churn rate (**15.17%**), indicating that support services are associated with improved customer retention.

### 7. Online Security
- Customers **without Online Security** experienced a churn rate of **41.77%**.
- Customers subscribed to **Online Security** had a significantly lower churn rate (**14.61%**), suggesting that value-added security services contribute to customer loyalty.

