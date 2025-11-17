--TOTAL LOAN APPLICATIONS
select count(id) as total_loan_application from bank_loan_data

-- Month to date total loan application
select count(id) as MTD_total_loan_application from bank_loan_data
where month(issue_date) = 12 and year(issue_date) = 2021

-- Previous month to date total loan application
select count(id) as PMTD_total_loan_application from bank_loan_data
where month(issue_date) = 11 and year(issue_date) = 2021

--MOM: month over month
-- MOM = (MTD - PMTD)/PMTD

SELECT 
    (
        SELECT COUNT(id) 
        FROM bank_loan_data
        WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021
    ) AS MTD_total_loan_application,
    (
        SELECT COUNT(id) 
        FROM bank_loan_data
        WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021
    ) AS PMTD_total_loan_application,
    (
        (
            (
                (SELECT COUNT(id) 
                 FROM bank_loan_data
                 WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021)
                -
                (SELECT COUNT(id) 
                 FROM bank_loan_data
                 WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021)
            )
            /
            CAST(
                (SELECT COUNT(id) 
                 FROM bank_loan_data
                 WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021) 
                AS DECIMAL(10,5)
            )
        ) * 100
    ) AS MOM_percentage;