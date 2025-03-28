-- database https://github.com/Farhan0140/_SQL/blob/main/Dummy_DataBase

-- UNION
SELECT * 
FROM employees
WHERE department_id = 100

UNION

SELECT * 
FROM employees
WHERE salary >= 10000;


-- UNION ALL
SELECT * 
FROM employees
WHERE department_id = 100

UNION ALL

SELECT * 
FROM employees
WHERE salary >= 10000;


-- INTERSECTION
SELECT * 
FROM employees
WHERE department_id = 100
INTERSECT
SELECT * 
FROM employees
WHERE salary >= 10000;



-- MINUS
SELECT * 
FROM employees
WHERE salary >= 10000
MINUS
SELECT * 
FROM employees
WHERE department_id = 100;

-- OR
SELECT * 
FROM employees
WHERE salary >= 10000
EXCEPT
SELECT * 
FROM employees
WHERE department_id = 100;

-- OR
SELECT * 
FROM employees
WHERE salary >= 10000 AND department_id != 100;