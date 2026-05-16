WITH HighSalary AS (
    SELECT emp_name, salary
    FROM employees
    WHERE salary > 50000
)
SELECT * FROM HighSalary;  