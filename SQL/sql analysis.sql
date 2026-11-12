
--create table bank churn
create table bank_churn (
	CustomerId BIGINT,
    Surname VARCHAR(100),
    CreditScore INT,
    Geography VARCHAR(50),
    Gender VARCHAR(20),
    Age INT,
    Tenure INT,
    Balance DECIMAL(12,2),
    NumOfProducts INT,
    HasCrCard INT,
    IsActiveMember INT,
    EstimatedSalary DECIMAL(15,2),
    Exited INT
);

select * from bank_churn

--Find high-risk customer segments
SELECT
    Geography,
    IsActiveMember,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS Churn_Rate
FROM bank_churn
GROUP BY Geography, IsActiveMember
ORDER BY Churn_Rate DESC;

-- Age Group + Active Membership
SELECT
    CASE
        WHEN age BETWEEN 18 AND 27 THEN '18-27'
        WHEN age BETWEEN 28 AND 37 THEN '28-37'
        WHEN age BETWEEN 38 AND 47 THEN '38-47'
        WHEN age BETWEEN 48 AND 57 THEN '48-57'
        WHEN age BETWEEN 58 AND 67 THEN '58-67'
        WHEN age BETWEEN 68 AND 77 THEN '68-77'
        WHEN age BETWEEN 78 AND 87 THEN '78-87'
        WHEN age >= 88 THEN '88+'
    END AS age_group,
    isactivemember,
    COUNT(*) AS total_customers,
    SUM(exited) AS churned_customers,
    ROUND(SUM(exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY age_group, isactivemember
ORDER BY churn_rate DESC;

--Product Usage + Active Membership
select 
numofproducts,
isactivemember,
count(*) as total_customers,
sum(exited) as churned_customers,
round(sum(exited) * 100 / count(*),2) as churn_rate
from bank_churn
group by 1,2
order by churn_rate desc;

--sql validation
SELECT
    COUNT(*) AS total_customers,
    SUM(exited) AS churned_customers,
    COUNT(*) - SUM(exited) AS retained_customers,
    ROUND(SUM(exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn;