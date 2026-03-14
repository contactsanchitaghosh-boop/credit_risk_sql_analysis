# Credit Risk Analysis (SQL Project)

*Author:* Sanchita Ghosh  

## Project Overview
This project analyzes a loan dataset to understand the factors that influence *loan default risk*.  
The dataset was first cleaned using *Python, and then analyzed using **SQL (MySQL)*.

The goal of this project is to explore borrower characteristics and loan attributes to identify patterns associated with *loan repayment and default*.

---

## Tools Used
- Python (Pandas) – Data cleaning
- SQL (MySQL) – Data analysis
- GitHub – Project documentation

---

## Dataset
The dataset used in this project contains borrower and loan information used to analyze credit risk.

Dataset file: [cleaned_credit_risk.csv](cleaned_credit_risk.csv)

The dataset was cleaned using Python before being imported into MySQL for analysis.

---

## Analysis Performed
The SQL queries analyze multiple factors related to loan repayment behavior, including:

- Loan repayment vs default distribution
- Interest rate comparison
- Loan-to-income ratio analysis
- Previous default history analysis
- Loan grade risk comparison
- Employment length comparison
- Home ownership analysis
- Loan purpose analysis
- Borrower income comparison
- Loan amount comparison
- Credit history length comparison

---

## Key Insights

- Most borrowers repay their loans, with *16,356 repayments compared to 4,958 defaults*.

- Borrowers who default tend to have *higher interest rates (≈12.96%) compared to those who repay (≈10.45%)*.

- Defaulted borrowers have a *higher loan-to-income ratio (≈0.25 vs 0.15)*, indicating greater financial burden.

- Many borrowers with previous defaults still repay their loans (*2295 repaid vs 1488 defaulted again*), showing that past defaults increase risk but do not guarantee future default.

- Higher loan grades such as *C, D, and E show more default cases compared to safer grades like A and B*.

- Borrowers who repay loans have *slightly longer employment history (≈4.38 years vs 3.80 years)*.

- *Renters show higher default counts* compared to borrowers who own homes or have mortgages.

- Loan purposes such as *medical, personal, and debt consolidation show relatively higher default cases*.

- Borrowers who default generally have *lower average income (~46k) compared to those who repay (~64k)*.

- Defaulted borrowers tend to take *larger average loan amounts (~10,659) compared to repaid loans (~8,821)*.

---

## Project Workflow
1. Cleaned the raw dataset using *Python (Pandas)*.
2. Exported the cleaned dataset.
3. Imported the dataset into *MySQL*.
4. Performed SQL queries to analyze loan default patterns.
5. Documented the analysis and insights on *GitHub*.

---

## Repository Contents

- [credit_risk_analysis.sql](credit_risk_analysis.sql) – SQL queries used for the analysis  
- [cleaned_credit_risk.csv](cleaned_credit_risk.csv)– Cleaned dataset used for the project  
- [README.md](README.md)– Project documentation  

---
