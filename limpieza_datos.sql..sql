SELECT 
    person_age, 
    person_income, 
    person_home_ownership, 
    loan_amnt, 
    loan_status
FROM credit_risk_dataset
WHERE loan_status = 1 AND person_home_ownership = 'RENT'
ORDER BY loan_amnt DESC;