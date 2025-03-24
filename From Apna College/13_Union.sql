CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

INSERT INTO student(id, name, age)
VALUES
  (1, "Nadim", 23),
  (2, "Farhan", 24),
  (3, "Fardin", 34)

INSERT INTO teacher(id, name, age)
VALUES
  (1, "Rabbi", 34),
  (2, "Safi", 56),
  (3, "Sadman", 36),
  (4, "Sadiman", 40)


------------------------->
SELECT * FROM student
UNION
SELECT * FROM teacher

------------------------->
SELECT * FROM student
UNION ALL
SELECT * FROM teacher

