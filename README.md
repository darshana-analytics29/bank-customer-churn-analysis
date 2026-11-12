# Bank Customer Churn Analysis

## Project Overview
This project analyzes customer churn patterns in a banking dataset containing 10,000 customer records. The objective is to identify customer segments associated with higher churn and provide actionable, retention-focused business insights.

The project follows an end-to-end data analytics workflow, from data cleaning and exploratory analysis to SQL-based segmentation and interactive Power BI dashboards.

## Business Problem
Customer churn can reduce a bank's revenue and increase customer acquisition costs. This analysis investigates which customer characteristics and segments are associated with higher churn rates.

## Tools & Technologies
- **Microsoft Excel:** Exploratory Data Analysis (EDA)
- **Power Query:** Data cleaning and transformation
- **PostgreSQL:** SQL queries and customer segmentation
- **Power BI:** Interactive dashboards and data visualization
- **GitHub:** Project documentation and version control

## Dataset Overview
- Total Records: 10,000
- Total Columns: 13
- Target Variable: `Exited`
- `0` = Retained
- `1` = Churned
- Dataset Source: Kaggle – Churn Modelling

## Project Workflow
1. Data import and preparation using Power Query.
2. Data quality checks and cleaning.
3. Exploratory Data Analysis using Microsoft Excel.
4. Business analysis and customer segmentation using PostgreSQL.
5. Interactive dashboard development using Power BI.
6. Business insights and retention recommendations.

## Key Findings
- Overall customer churn rate: **20.37%**.
- Germany recorded the highest geographical churn rate at **32.44%**.
- Female customers had a churn rate of **25.07%**, compared with **16.46%** for male customers.
- Inactive members had a higher churn rate (**26.85%**) than active members (**14.27%**).
- Customers aged 48–57 had the highest substantial age-group churn rate at **55.26%**.
- Germany + inactive customers recorded **41.08%** churn.
- Inactive customers aged 48–57 recorded **73.27%** churn.

## Power BI Dashboard
The project contains two dashboard pages:


### Dashboard 1: Bank Customer Churn Overview

![Bank Customer Churn Overview](PowerBi/Churn%20Overview.png)

### Dashboard 2: High-Risk Customer Segments

![High-Risk Customer Segments](PowerBi/High%20Risk%20Customer%20Segments.png)
  

## Business Recommendations
- Prioritize re-engagement strategies for inactive customers.
- Investigate the reasons behind higher churn in Germany.
- Develop targeted retention strategies for inactive customers aged 48–57.
- Investigate customer engagement and product usage patterns.
- Monitor retention campaign performance over time.

## Limitations
- The dataset represents a snapshot rather than customer-level historical activity.
- It does not establish the reasons behind customer churn.
- Correlation and associations should not be interpreted as causation.
- Small customer segments require cautious interpretation.

## Conclusion
The analysis highlights that customer churn is not evenly distributed across the banking customer base. Germany, inactive customers and selected age groups show higher churn rates.

The findings provide a starting point for targeted customer retention strategies and demonstrate an end-to-end data analytics workflow using Excel, SQL, Power Query and Power BI.

## Project Deliverables
- Cleaned dataset
- Excel analysis
- PostgreSQL SQL queries
- Power BI dashboard
- Dashboard screenshots
- Detailed project report
- [Excel Exploratory Data Analysis](Excel/Bank_Customer_Churn_EDA.xlsx)
  

**Project Type:** Data Analytics | Descriptive and Diagnostic Analysis
