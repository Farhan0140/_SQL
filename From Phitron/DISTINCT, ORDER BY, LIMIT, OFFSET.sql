CREATE TABLE employee_details(

     emp_id VARCHAR(8),
     emp_name VARCHAR(20),
     emp_designation VARCHAR(20),
     emp_age INT

);

INSERT INTO employee_details 
VALUES
    ('E40001','PRADEEP','H.R',36),
    ('E40002','ASHOK','MANAGER',28),
    ('E40003','PAVAN KUMAR','ASST MANAGER',28),
    ('E40004','SANTHOSH','STORE MANAGER',25),
    ('E40005','THAMAN','GENERAL MANAGER',26);




-- DISTINCT
SELECT DISTINCT emp_designation
FROM employee_details;


-- ORDER BY ASCENDING
SELECT * FROM employee_details
ORDER BY emp_age ASC;


-- ORDER BY DESCENDING
SELECT * FROM employee_details
ORDER BY emp_age DESC;


-- LIMIT, OFFSET
-- Type 1
SELECT * FROM employee_details
LIMIT 2
OFFSET 2;

-- Type 2
SELECT * FROM employee_details
LIMIT 1, 2;
--    ^
--    | যে কয়টা বাদ দিতে চাই   



--