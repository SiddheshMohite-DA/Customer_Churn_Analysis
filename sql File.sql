CREATE DATABASE churn_analysis;
USE churn_analysis;
CREATE TABLE customer_churn (
    customerID VARCHAR(20),
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(30),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(40),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(10),
    TenureBand VARCHAR(20),
    MonthlyChargeBand VARCHAR(20)
);
DESCRIBE customer_churn;
USE churn_analysis;
SELECT COUNT(*) FROM customer_churn;

USE churn_analysis;

SELECT COUNT(*) AS total_rows
FROM customer_churn;

SELECT *
FROM customer_churn
LIMIT 5;

SELECT COUNT(*) AS TotalCustomers
FROM customer_churn;

SELECT *
FROM customer_churn
LIMIT 10;

SELECT
    gender,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY gender;

SELECT
    Contract,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY Contract
ORDER BY CustomerCount DESC;

# Customer Count by internet service 
SELECT
    InternetService,
    COUNT(*) AS CustomerCount
FROM customer_churn
GROUP BY InternetService
ORDER BY CustomerCount DESC;

# Average Monthly Charges 
SELECT
    ROUND(AVG(MonthlyCharges), 2) AS AverageMonthlyCharge
FROM customer_churn;

# Average Customer Tenure
SELECT
    ROUND(AVG(tenure), 2) AS AverageTenure
FROM customer_churn;

# Maximum Monthly Charge 
SELECT
    MAX(MonthlyCharges) AS MaximumMonthlyCharge
FROM customer_churn; 

# Minimum Monthly Charge
SELECT
    MIN(MonthlyCharges) AS MinimumMonthlyCharge
FROM customer_churn; 

# Total customer Charges 
SELECT
    ROUND(SUM(TotalCharges), 2) AS TotalCustomerCharges
FROM customer_churn;

# Over all churn 
SELECT 
    Churn,
    COUNT(*) AS CustomerCount,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_churn),
        2
    ) AS ChurnPercentage
FROM customer_churn
GROUP BY Churn;

# Churn By Contract
SELECT
    Contract,
    COUNT(*) AS TotalCustomers,
    SUM(Churn = 'Yes') AS ChurnedCustomers,
    ROUND(
        SUM(Churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS ChurnRate
FROM customer_churn
GROUP BY Contract
ORDER BY ChurnRate DESC;

# Churn By Tenure Band 
SELECT
    TenureBand,
    COUNT(*) AS TotalCustomers,
    SUM(Churn = 'Yes') AS ChurnedCustomers,
    ROUND(
        SUM(Churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS ChurnRate
FROM customer_churn
GROUP BY TenureBand
ORDER BY ChurnRate DESC;

# Churn by Internet Service
SELECT
    InternetService,
    COUNT(*) AS TotalCustomers,
    SUM(Churn = 'Yes') AS ChurnedCustomers,
    ROUND(
        SUM(Churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS ChurnRate
FROM customer_churn
GROUP BY InternetService
ORDER BY ChurnRate DESC;

# Churn by Monthly Charge Band
SELECT
    MonthlyChargeBand,
    COUNT(*) AS TotalCustomers,
    SUM(Churn = 'Yes') AS ChurnedCustomers,
    ROUND(
        SUM(Churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS ChurnRate
FROM customer_churn
GROUP BY MonthlyChargeBand
ORDER BY ChurnRate DESC;

# Churn by gender
SELECT
    gender,
    COUNT(*) AS TotalCustomers,
    SUM(Churn = 'Yes') AS ChurnedCustomers,
    ROUND(
        SUM(Churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS ChurnRate
FROM customer_churn
GROUP BY gender
ORDER BY ChurnRate DESC;

# Churn by Payment Method 
SELECT
    PaymentMethod,
    COUNT(*) AS TotalCustomers,
    SUM(Churn = 'Yes') AS ChurnedCustomers,
    ROUND(
        SUM(Churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS ChurnRate
FROM customer_churn
GROUP BY PaymentMethod
ORDER BY ChurnRate DESC;

# Churn by Partner Status
SELECT
    Partner,
    COUNT(*) AS TotalCustomers,
    SUM(Churn = 'Yes') AS ChurnedCustomers,
    ROUND(
        SUM(Churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS ChurnRate
FROM customer_churn
GROUP BY Partner
ORDER BY ChurnRate DESC;

# Dependent by churn  
SELECT
    Dependents,
    COUNT(*) AS TotalCustomers,
    SUM(Churn = 'Yes') AS ChurnedCustomers,
    ROUND(
        SUM(Churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS ChurnRate
FROM customer_churn
GROUP BY Dependents
ORDER BY ChurnRate DESC;

# Senior Citizen vs Churn
SELECT
    SeniorCitizen,
    COUNT(*) AS TotalCustomers,
    SUM(Churn = 'Yes') AS ChurnedCustomers,
    ROUND(
        SUM(Churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS ChurnRate
FROM customer_churn
GROUP BY SeniorCitizen
ORDER BY ChurnRate DESC;

# Churn by Tech Support
SELECT
    TechSupport,
    COUNT(*) AS TotalCustomers,
    SUM(Churn = 'Yes') AS ChurnedCustomers,
    ROUND(
        SUM(Churn = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS ChurnRate
FROM customer_churn
GROUP BY TechSupport
ORDER BY ChurnRate DESC;