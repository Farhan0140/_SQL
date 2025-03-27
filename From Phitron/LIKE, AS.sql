CREATE TABLE employee_details(

     emp_id VARCHAR(8),
     emp_name VARCHAR(255),
     emp_designation VARCHAR(20),
     emp_age INT

);

INSERT INTO employee_details 
VALUES
    ('E40001','Samne PAVAN','H.R',36),
    ('E40002','PAVAN Picone Kicu','MANAGER',28),
    ('E40003','PAVAN KUMAR','ASST MANAGER',28),
    ('E40004','Tarek','ASST MANAGER',25),
    ('E40005','Samne PAVAN Picone Kicu Ace','GENERAL MANAGER',26);



-- For Both Side
SELECT * FROM employee_details
WHERE emp_name LIKE '%PAVAN%';


-- For Left Side
SELECT * FROM employee_details
WHERE emp_name LIKE '%PAVAN';


-- For Right Side
SELECT * FROM employee_details
WHERE emp_name LIKE 'PAVAN%';



-- AS
SELECT emp_name AS Name -- Showing emp_name as a Name in a column name
FROM employee_details;




-- database https://github.com/Farhan0140/_SQL/blob/main/Dummy_DataBase

-- Find departments where the average salary is higher than the overall average salary
WITH avg_depts AS (

    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id

)
SELECT department_id, (

    SELECT department_name
    FROM departments
    WHERE departments.department_id = avg_depts.department_id

), avg_salary 
FROM avg_depts
WHERE avg_salary > (

    SELECT AVG(salary)
    FROM employees

)
ORDER BY avg_salary ASC;
ORDER BY department_id ASC;

--