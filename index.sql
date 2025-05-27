SELECT * FROM employees;

EXPLAIN ANALYSE
SELECT * from employees WHERE department_name = 'HR';

CREATE INDEX index_em_department 
ON employees (department_name)

SHOW data_directory;
