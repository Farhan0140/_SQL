CREATE TABLE dept (
    id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

INSERT INTO dept (id, dept_name)
VALUES
    (101, "Science"),
    (102, "English"),
    (103, "BBA"),
    (104, "CSE")

SELECT * FROM dept;

---->
UPDATE dept
SET id = 169        -----> It updates the  teacher table too,,  Because of ON UPDATE CASCADE & ON DELETE CASCADE
WHERE id = 104;                                         ----> If we don't use UPDATE CASCADE & ON DELETE CASCADE nothing change on Teacher Table


------------------------------------> FOREIGN KEY -- ON UPDATE/DELETE CASCADE

CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES dept(id)

    ON UPDATE CASCADE
    ON DELETE CASCADE
);



------------------------------------> FOREIGN KEY -- ON DELETE SET NULL
CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE SET NULL
);




INSERT INTO teacher (id, name, dept_id)
VALUES
    (101, "BOB", 102),
    (102, "ADAM", 102),
    (103, "CASY", 101),
    (104, "RABBI", 104)

SELECT * FROM teacher;