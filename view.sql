SELECT * FROM employees;

CREATE View get_avg_salary 
as 
SELECT department_name, avg(salary) FROM employees GROUP BY department_name;

SELECT * FROM get_avg_salary;

-- why i will create view in psql
-- Simplifying complex queries
-- Improved security
-- Enhanced data abstraction