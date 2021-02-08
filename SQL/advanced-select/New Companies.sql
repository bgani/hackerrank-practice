-- https://www.hackerrank.com/challenges/the-company/problem

SELECT company_code, founder, 
(SELECT COUNT(DISTINCT lead_manager_code) FROM Lead_Manager WHERE company_code = c.company_code) as total_lead_managers,
(SELECT COUNT(DISTINCT senior_manager_code) FROM Senior_Manager WHERE company_code = c.company_code) as total_senior_managers,
(SELECT COUNT(DISTINCT manager_code) FROM Manager WHERE company_code = c.company_code) as total_managers,
(SElECT COUNT(DISTINCT employee_code) FROM Employee WHERE company_code = c.company_code) as total_employees
FROM Company as c ORDER BY company_code;