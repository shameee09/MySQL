-- Question 1: Retrieve Employee Details Retrieve all employees whose salary is greater than 60000.
use Empdb;

SELECT * from employees
Where salary>6000;

-- Question 2: Find Total Sales Per Customer Calculate the total sales amount for each customer from the sales table.

SELECT customer_id,
SUM(amount) 
FROM Sales
GROUP BY customer_id;

-- Question 3: Employee Salary in Finance Department Retrieve the names and salaries of all employees working in the 'Finance' department.
SELECT e.name,e.salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';

-- Question 4: Total Sales on a Specific Date Find the total sales amount made on '2023-03-17'.
SELECT SUM(amount) AS total_sales
FROM Sales
WHERE sale_date = '2023-03-17';

-- Question 5: High-Value Orders Get the names of customers who have placed an order of more than 600.

SELECT DISTINCT c.customer_name
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
WHERE s.amount > 600;


