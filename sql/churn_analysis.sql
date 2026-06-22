-- Churn by Contract Type
SELECT
    contract,
    churn,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY contract, churn
ORDER BY contract;

-- Average Customer Tenure
SELECT
    churn,
    ROUND(AVG(tenure),2) AS avg_tenure
FROM customer_churn
GROUP BY churn;

-- Average Monthly Charges
SELECT
    churn,
    ROUND(AVG(monthlycharges),2) AS avg_monthly_charge
FROM customer_churn
GROUP BY churn;

-- Churn by Internet Service
SELECT
    internetservice,
    churn,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY internetservice, churn
ORDER BY internetservice;

-- Churn by Payment Method
SELECT
    paymentmethod,
    churn,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY paymentmethod, churn
ORDER BY paymentmethod;