SELECT ROUND(AVG(int_rate),4) *100 AS Avg_Int_Rate FROM bank_loan_data

SELECT ROUND(AVG(int_rate),4) *100 AS MTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 12 and year(issue_date) = 2021

SELECT ROUND(AVG(int_rate),4) *100 AS PMTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11 and year(issue_date) = 2021
