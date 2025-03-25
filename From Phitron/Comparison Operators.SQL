-- 2. Comparison Operators : =, !=, >=, >, <=, <


CREATE TABLE student(

    Roll CHAR(4),
    Name VARCHAR(50),
    CSE_101 INT DEFAULT(0),
    CSE_102 INT DEFAULT(0),
    CSE_103 INT DEFAULT(0),
    CGPA FLOAT NOT NULL,

    Constraint pk_rule PRIMARY KEY(Roll)

);

INSERT INTO student (Roll, Name, CSE_101, CSE_102, CSE_103, CGPA)
VALUES 
    ('0001', 'Farhan', 78, 89, 57, 3.14),
    ('0002', 'Dora', 87, 71, 90, 3.39),
    ('0003', 'Julian', 51, 74, 40, 3.62),
    ('0004', 'Francisco', 89, 72, 15, 2.31);



-- ' = '
SELECT (CSE_101 + CSE_102 + CSE_103) AS Total_Marks
FROM student
WHERE Roll = '0001';


-- ' != '
SELECT * FROM student
WHERE Roll != '0002';


-- ' >= '
SELECT * FROM student
WHERE CGPA >= 3.50;