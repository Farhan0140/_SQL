-- database https://github.com/Farhan0140/_SQL/blob/main/Dummy_DataBase

-- Joining Tables without using JOIN Query

SELECT employees.first_name, departments.department_name
FROM employees, departments
WHERE employees.department_id = departments.department_id; 
--     m                      *    n
-- m*n 

-- OR
SELECT first_name, department_name
FROM employees, departments
WHERE employees.department_id = departments.department_id;

--
SELECT first_name, department_name, employees.department_id
FROM employees, departments
WHERE employees.department_id = departments.department_id;



-- INNER JOIN or JOIN
-- Joining Tables using JOIN Query

SELECT employees.first_name, departments.department_name
FROM employees
    JOIN departments
    ON employees.department_id = departments.department_id;


-- If both column are same
SELECT employees.first_name, departments.department_name
FROM employees
    JOIN departments
    USING(department_id);

-- Same
SELECT employees.first_name, departments.department_name
FROM employees
    INNER JOIN departments
    USING(department_id);



-- LEFT JOIN 

SELECT employees.first_name, departments.department_name
FROM employees
    LEFT JOIN departments
    USING(department_id);



-- RIGHT JOIN 

SELECT employees.first_name, departments.department_name
FROM employees
    RIGHT JOIN departments
    USING(department_id);



-- CROSS JOIN or FULL JOIN

SELECT employees.first_name, departments.department_name
FROM employees
    CROSS JOIN departments
    USING(department_id);

-- OR
SELECT employees.first_name, departments.department_name
FROM employees
    LEFT JOIN departments
    USING(department_id)

    UNION

    SELECT employees.first_name, departments.department_name
    FROM employees
        RIGHT JOIN departments
        USING(department_id);



-- SELF JOIN
SELECT emp.first_name AS manager_name, mana.first_name
FROM employees AS emp
    JOIN employees AS mana
    ON emp.employee_id = mana.manager_id; 



-- Write a SQL query to retrieve a list of employees along with the first name of their respective managers.
SELECT mana.first_name , emp.first_name AS manager_name
FROM employees AS emp
    JOIN employees AS mana
    ON emp.employee_id = mana.manager_id; 



-- A company wants to identify departments that do not have any employees assigned to them
SELECT departments.department_name
FROM departments
    LEFT JOIN employees
    ON departments.department_id = employees.department_id
WHERE employees.department_id IS NULL;



--Each employee's first name. Their salary. The difference between their salary and the average salary of their department.
SELECT 
    employees.first_name, 
    employees.salary,
    (
        SELECT AVG(salary) 
        FROM employees
        WHERE department_id = employees.department_id
    ) - employees.salary
FROM employees
    JOIN departments
    ON employees.department_id = departments.department_id;



-- Write an SQL query to retrieve the minimum salary in each department, ensuring that only departments where the minimum salary is greater than $5000 are included in the result.
SELECT departments.department_name
FROM employees
    JOIN departments
    ON departments.department_id = employees.department_id
GROUP BY departments.department_name
HAVING MIN(salary) > 5000;