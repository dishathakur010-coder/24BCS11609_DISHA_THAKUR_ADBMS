-- 1.Employee and Manager Names: Display a list of employee names along with their manager's names. Use the 'employees' table provided.

-- 2.Every Possible Combination: Show every possible combination of 'customer_name' from the 'customers' table and 'product_name' from the 'products' table.
SELECT e1.employee_name AS Employee,e2.employee_name AS Manager FROM employees AS e1
LEFT JOIN employees AS e2
ON e1.manager_id=e2.employee_id;

SELECT c1.customer_name,p1.product_name FROM customers as c1 CROSS JOIN products as p1;
