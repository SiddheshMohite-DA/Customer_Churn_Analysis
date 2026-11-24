# Customer Churn and Retention Analysis

## Project Overview

Customer Churn and Retention Analysis is a data analytics project focused on understanding customer behavior and identifying the key factors that influence customer churn in the telecommunications industry.

The objective of this project is to analyze customer data, identify patterns among customers who leave the service, and generate meaningful insights that can help businesses improve customer retention.

This project uses Python for data profiling, cleaning, and exploratory data analysis (EDA), MySQL for data storage and SQL-based analysis, and Power BI for interactive dashboard development.

## Project Objectives

- Analyze customer churn and retention patterns.
- Identify customer segments with higher churn rates.
- Understand the relationship between customer tenure and churn.
- Analyze churn based on contract type and internet services.
- Examine the impact of monthly charges and payment methods.
- Create meaningful business insights to support customer retention strategies.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data profiling, cleaning, and analysis |
| Pandas & NumPy | Data manipulation |
| Matplotlib & Seaborn | Data visualization |
| MySQL | Database management and SQL analysis |
| Power BI | Interactive dashboard development |
| Jupyter Notebook | Python development environment |

## Project Workflow

### 1. Data Profiling and Cleaning – Python
- Loaded and explored the raw telecom customer dataset.
- Checked dataset dimensions and data types.
- Identified missing and duplicate values.
- Converted TotalCharges into numeric format.
- Handled missing TotalCharges values.
- Performed data validation and quality checks.

### 2. Exploratory Data Analysis (EDA) – Python
Performed exploratory analysis to understand customer behavior and churn patterns.

Key analysis areas:
- Customer churn distribution.
- Churn by gender and senior citizen status.
- Customer tenure analysis.
- Churn by contract type.
- Churn by internet service.
- Monthly charges and payment methods.
- Technical support and customer retention.
- Correlation analysis and churn rate comparisons.

### 3. SQL Analysis – MySQL
Used MySQL to perform customer-level and business-oriented analysis.

Key SQL operations:
- Customer count and data exploration.
- GROUP BY and ORDER BY.
- Aggregate functions such as COUNT, SUM, AVG, MIN, and MAX.
- Overall customer churn percentage.
- Churn analysis by contract type.
- Churn analysis by tenure and monthly charge bands.
- Churn analysis by payment method and internet service.
- Customer segmentation based on different attributes.

### 4. Dashboard Development – Power BI
Developed a Power BI dashboard to present customer churn insights through interactive data visualizations.

The dashboard is included in this repository as a Power BI `.pbix` file.

## Key Business Insights

Based on the exploratory analysis:

1. **Overall Churn:** Approximately 26.54% of customers have discontinued the service.

2. **Contract Type:** Month-to-month customers have the highest churn rate at 42.71%, compared with 11.27% for one-year contracts and 2.83% for two-year contracts.

3. **Customer Tenure:** New customers with 0–12 months of tenure have a churn rate of 47.44%, while long-term customers with 49–72 months of tenure have a churn rate of 9.51%.

4. **Internet Service:** Fiber optic customers have a churn rate of 41.89%, compared with 18.96% for DSL customers.

5. **Payment Method:** Customers using electronic checks have the highest churn rate at 45.29%.

6. **Technical Support:** Customers without technical support have a churn rate of 41.64%, compared with 15.17% among customers with technical support.

## Business Recommendations

- Introduce loyalty programs for month-to-month customers.
- Improve onboarding and engagement for newly acquired customers.
- Investigate service quality and pricing concerns among fiber optic customers.
- Encourage automatic payment methods.
- Provide better technical support to improve customer satisfaction.
- Develop targeted retention campaigns for high-risk customer segments.

## Dataset Information

- Industry: Telecommunications
- Total Records: 7,043 customers
- Total Original Features: 21 columns
- Target Variable: Churn
- Churn Status: Yes / No

## Project Files

- `Data Profiling .ipynb` – Data profiling and cleaning.
- `eda.ipynb` – Exploratory data analysis.
- `Raw-Dataset.csv` – Original customer dataset.
- `Telco_Customer_Clean_Data.csv` – Cleaned customer dataset.
- `sql File.sql` – SQL queries for customer churn analysis.
- `TELCO CUSTOMER CHURN DASHBOARD.pbix` – Power BI dashboard.

## Conclusion

This project demonstrates the practical application of data analytics techniques to understand customer churn and retention.

By combining Python, MySQL, and Power BI, the project transforms raw customer data into meaningful insights that can support business decision-making and help organizations develop effective customer retention strategies.

---

**Project Domain:** Data Analytics | Telecommunications

**Technologies:** Python | SQL | MySQL | Power BI | Excel (not used in the documented workflow)

