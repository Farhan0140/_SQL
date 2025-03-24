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


-------------------------------------------> Left Exclusive JOIN
SELECT * FROM student AS A
LEFT JOIN course AS B 
ON A.id = B.id
WHERE B.id IS NULL; 


-------------------------------------------> RIGHT Exclusive JOIN
SELECT * FROM student AS A
RIGHT JOIN course AS B 
ON A.id = B.id
WHERE A.id IS NULL; 


-------------------------------------------> FULL Exclusive JOIN
SELECT * FROM student AS A
LEFT JOIN course AS B 
ON A.id = B.id
WHERE B.id IS NULL
UNION
SELECT * FROM student AS A 
RIGHT JOIN course AS B 
ON A.id = B.id 
WHERE A.id IS NULL;    