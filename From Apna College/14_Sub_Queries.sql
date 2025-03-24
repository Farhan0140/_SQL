CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

INSERT INTO student(id, name, marks)
VALUES
  (101, "Nadim", 78),
  (102, "Farhan", 93),
  (103, "Anil", 85),
  (104, "Bob", 96),
  (105, "Farah", 92),
  (106, "Bhumika", 82)



--> EX-1
-------> Get names of all students who scored more than class average?
--->Step 1. Find the avg of class
SELECT AVG(marks)
FROM student;
---> 87.6667

--->Step 2. Find the names of students with marks > avg
SELECT * FROM student
WHERE marks > 87.6667

--->In that case, we can combine these two queries. Using sub_Query
SELECT * 
FROM student
WHERE marks > (
    SELECT AVG(marks)
    FROM student
);



---> EX-2
--->Find the names of all students with even roll numbers.
--->Step 1. Find the even roll numbers
SELECT id
FROM student
WHERE id % 2 = 0;
--> 102, 104, 106

--->Step 2. Find the names of students with even roll no
SELECT id, name FROM student
WHERE id IN (102, 104, 106);

--->In that case, we can combine these two queries. Using sub_Query
SELECT id, name FROM student
WHERE id IN (
    SELECT id FROM student
    WHERE id % 2 = 0
);



-->EX-3
CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO student(id, name, marks, city)
VALUES
  (101, "Nadim", 78, "Dhaka"),
  (102, "Farhan", 93, "Bogra"),
  (103, "Anil", 85, "Comilla"),
  (104, "Bob", 96, "Dhaka"),
  (105, "Farah", 92, "Bogra"),
  (106, "Bhumika", 82, "Dhaka")

--->Find the max marks from the students of Dhaka
--->Step 1. Find the students of Dhaka
SELECT * FROM student
WHERE city = "Dhaka"; 


--->Step 2. Find their max marks using the sublist in step 1
SELECT MAX(marks) 
FROM (
    SELECT marks FROM student
    WHERE city = "Dhaka"
) AS temp;
------------> It creates a temp table where all students from Dhaka



--> OR
SELECT MAX(marks)
FROM student
WHERE city = "Dhaka";