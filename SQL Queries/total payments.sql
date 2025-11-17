--Total payments
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data

SELECT SUM(total_payment) AS MTD_Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 12 and year(issue_date) = 2021

SELECT SUM(total_payment) AS PMTD_Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 11 and year(issue_date) = 2021;

-- MOM

SELECT 
    (SELECT SUM(total_payment)
     FROM bank_loan_data
     WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021
    ) AS MTD_Total_Amount_Collected,

    (SELECT SUM(total_payment)
     FROM bank_loan_data
     WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
    ) AS PMTD_Total_Amount_Collected,

    (
        (
            (
                (SELECT SUM(total_payment)
                 FROM bank_loan_data
                 WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021)
                -
                (SELECT SUM(total_payment)
                 FROM bank_loan_data
                 WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021)
            )
            /
            CAST(
                (SELECT SUM(total_payment)
                 FROM bank_loan_data
                 WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021)
                AS DECIMAL(15,5)
            )
        ) * 100
    ) AS MOM_Percentage;
