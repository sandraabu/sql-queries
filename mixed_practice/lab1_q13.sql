SELECT first_name, last_name, cast(hire_date AS date) AS hired
FROM employees
WHERE title_of_courtesy IN ('Ms.', 'Mrs.') 
ORDER BY 3
LIMIT 2;