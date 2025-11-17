--TOTAL FUNDED AMOUNTS
select sum(loan_amount) as Total_Funded_Amount from bank_loan_data

select sum(loan_amount) as MTD_Total_Funded_Amount from bank_loan_data
where month(issue_date) = 12 and year(issue_date) = 2021

select sum(loan_amount) as PMTD_Total_Funded_Amount from bank_loan_data
where month(issue_date) = 11 and year(issue_date) = 2021

--MOM
SELECT 
    (SELECT SUM(loan_amount)
     FROM bank_loan_data
     WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021
    ) AS MTD_Total_Funded_Amount,

    (SELECT SUM(loan_amount)
     FROM bank_loan_data
     WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
    ) AS PMTD_Total_Funded_Amount,

    (
        (
            (
                (SELECT SUM(loan_amount)
                 FROM bank_loan_data
                 WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021)
                -
                (SELECT SUM(loan_amount)
                 FROM bank_loan_data
                 WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021)
            )
            /
            CAST(
                (SELECT SUM(loan_amount)
                 FROM bank_loan_data
                 WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021)
                AS DECIMAL(15,5)
            )
        ) * 100
    ) AS MOM_Percentage;