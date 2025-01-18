----------------------------------------> INNER JOIN

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student(id, name)
VALUES
    (101, "Nadim"),
    (102, "Farhan"),
    (103, "Bob")


CREATE TABLE course(
    id INT PRIMARY KEY,
    course VARCHAR(50)
);


INSERT INTO course(id, course)
VALUES
    (102, "English"),
    (105, "Math"),
    (103, "Science"),
    (107, "CSE")


SELECT *
FROM student
INNER JOIN course
ON student.id = course.id;

-----> For Short Name

SELECT *
FROM student as s
INNER JOIN course as c
ON s.id = c.id;


----------------------------------------> LEFT JOIN
SELECT *
FROM student as A
LEFT JOIN course as B
ON A.id = B.id;


----------------------------------------> RIGHT JOIN
SELECT *
FROM student as A
RIGHT JOIN course as B
ON A.id = B.id;


----------------------------------------> ALL JOIN (L U R)
SELECT * FROM student as A
LEFT JOIN course as B
ON A.id = B.id

UNION

SELECT * FROM student as A
RIGHT JOIN course as B
ON A.id = B.id;