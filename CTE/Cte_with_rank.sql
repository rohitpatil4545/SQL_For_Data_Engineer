WITH RankedEmployees AS (
    SELECT emp_name,
           salary,
           RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM employees
)
SELECT * FROM RankedEmployees;