-- database https://github.com/Farhan0140/_SQL/blob/main/Dummy_DataBase

-- Joining Tables without using JOIN Query

-- Best Practice
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
