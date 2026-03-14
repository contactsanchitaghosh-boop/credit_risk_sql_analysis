-- CREDIT RISK ANALYSIS PROJECT
-- Author: Sanchita Ghosh

-- Create and use database
CREATE DATABASE IF NOT EXISTS credit_risk;
USE credit_risk;

-- View dataset
-- Shows all columns and records in the dataset
SELECT * FROM loans;

-- 1. Default vs repaid loans
-- Shows how many loans are repaid vs defaulted and their average interest rate
SELECT loan_status, COUNT(*) AS total_loans, AVG(loan_int_rate) AS avg_interest
FROM loans
GROUP BY loan_status;

-- 2. Previous default history
-- Shows how many borrowers who had previous defaults defaulted again
SELECT loan_status, COUNT(cb_person_default_on_file) AS previous_default
FROM loans
WHERE cb_person_default_on_file = 'Y'
GROUP BY loan_status;

-- 3. Loan-to-income ratio
-- Shows whether borrowers with higher loan-to-income ratios default more
SELECT loan_status, COUNT(*) AS total_loans, AVG(loan_percent_income) AS avg_ratio
FROM loans
GROUP BY loan_status;

-- 4. Loan grade risk
-- Shows how default varies across different loan grades
SELECT loan_status, loan_grade, COUNT(*) AS total_loans
FROM loans
GROUP BY loan_status, loan_grade
ORDER BY loan_grade;

-- 5. Employment length comparison
-- Shows average years of employment for defaulters vs non-defaulters
SELECT loan_status, AVG(person_emp_length) AS avg_emp_length
FROM loans
GROUP BY loan_status;

-- 6. Home ownership analysis
-- Shows whether home ownership status affects loan repayment
SELECT person_home_ownership, loan_status, COUNT(*) AS total
FROM loans
GROUP BY person_home_ownership, loan_status;

-- 7. Loan purpose analysis
-- Shows which loan purposes have higher default rates
SELECT loan_intent, loan_status, COUNT(*) AS total
FROM loans
GROUP BY loan_intent, loan_status;

-- 8. Income comparison
-- Shows average income of borrowers who repaid vs defaulted
SELECT loan_status, AVG(person_income) AS avg_income
FROM loans
GROUP BY loan_status;

-- 9. Loan amount comparison
-- Shows whether higher loan amounts are linked to default
SELECT loan_status, AVG(loan_amnt) AS avg_loan
FROM loans
GROUP BY loan_status;

-- 10. Credit history comparison
-- Shows whether shorter credit history increases default risk
SELECT loan_status, AVG(cb_person_cred_hist_length) AS avg_credit_history
FROM loans
GROUP BY loan_status;