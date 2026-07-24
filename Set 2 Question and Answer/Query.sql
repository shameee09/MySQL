USE Empdb;
-- 1.	Retrieve all employees whose salary is greater than 60000.
SELECT *
FROM Employees
WHERE salary > 60000;

-- 2.	Calculate the total sales amount for each customer from the sales table.
SELECT customer_id,
       SUM(amount) AS total_sales
FROM Sales
GROUP BY customer_id;

-- 3.	Retrieve the names and salaries of all employees working in the Finance department

SELECT E.name,
       E.salary
FROM Employees E
JOIN Departments D
ON E.department_id = D.department_id
WHERE D.department_name = 'Finance';

-- 4.	Find the total sales amount made on 2023-03-17 from the sales table.
SELECT SUM(amount) AS total_sales
FROM Sales
WHERE sale_date = '2023-03-17';

-- 5.	Get the names of customers who have placed an order of more than 600 from the orders table.
SELECT c.customer_name
FROM customers o
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_amount > 600;


