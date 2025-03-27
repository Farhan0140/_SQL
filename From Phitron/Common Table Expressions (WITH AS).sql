-- database https://github.com/Farhan0140/_SQL/blob/main/Dummy_DataBase

WITH temp AS (

    SELECT * 
    FROM employees
    LIMIT 10

)
SELECT * FROM temp
LIMIT 3, 2;



-- Problem Statement
/*

1. Higher than the average salary of employees in the IT department (Department ID: 60).  
2. Lower than the maximum salary of employees in the Marketing department (Department ID: 20).  

*/
WITH avg_it AS (

    SELECT AVG(salary) AS mark_1
    FROM employees
    WHERE department_id = 60

), max_marketing AS (

    SELECT MAX(salary) AS mark_2
    FROM employees
    WHERE department_id = 20

)
SELECT * FROM employees
WHERE salary > ( SELECT mark_1 FROM avg_it ) AND salary < ( SELECT mark_2 FROM max_marketing );