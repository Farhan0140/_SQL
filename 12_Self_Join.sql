CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT
);

INSERT INTO employee (id, name, manager_id)
VALUES
    (101, "Adam", 103),
    (102, "Bob", 104),
    (103, "Casey", NULL),
    (104, "Donald", 103)


-------------------------------------->
SELECT *
FROM employee AS a 
JOIN employee AS b 
ON a.id = b.manager_id;   


-------------------------------------->
SELECT a.name, b.name
FROM employee AS a 
JOIN employee AS b 
ON a.id = b.manager_id;   


-------------------------------------->
SELECT a.name AS mamager_name, b.name
FROM employee AS a 
JOIN employee AS b 
ON a.id = b.manager_id;   