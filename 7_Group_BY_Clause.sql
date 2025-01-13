CREATE TABLE student(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40),
    age INT,
    marks INT,
    cgpa FLOAT,
    country VARCHAR(100),
    email VARCHAR(50)
);

INSERT INTO student(name, age, marks, cgpa, country, email)
VALUES
    ("Leila Houston", 24, 65, 3.45, "Namibia", "rikre@lumi.hn"),
    ("Corey Obrien", 22, 98, 2.37, "Madagascar", "gaejakam@nilor.ye"),
    ("Jimmy Webster", 24, 60, 3.41, "Namibia", "bud@bahbabri.nl"),
    ("Virgie Chambers", 21, 51, 1.38, "Cayman Islands", "uliig@baik.mk"),
    ("Violet Murphy", 20, 91, 1.76, "Namibia", "nonsemu@ata.eh"),
    ("Hilda Clayton", 25, 91, 2.47, "Guernsey", "kutugfu@ze.pn"),
    ("Jeanette Mendoza", 22, 90, 3.79, "Eritrea", "ropew@ve.nu"),
    ("Polly Rios", 25, 87, 3.62, "Lebanon", "zu@zu.mc"),
    ("Jeff Oliver", 20, 73, 3.82, "Portugal", "vielumuv@kav.dz"),
    ("Ruth Burgess", 20, 73, 3.35, "Namibia", "ilur@je.ng"),
    ("Nellie Austin", 25, 56, 3.49, "Lebanon", "za@nava.ls"),
    ("Bernice Moran", 25, 75, 3.38, "Croatia", "kipak@bu.kw"),
    ("Alfred Knight", 25, 97, 3.19, "Namibia", "sa@uzkevo.tv"),
    ("Jonathan Maxwell", 25, 57, 3.33, "Venezuela", "ga@gumi.id"),
    ("Mina Barton", 22, 71, 2.21, "Namibia", "lakifa@niw.com"),
    ("Evelyn Love", 25, 69, 2.12, "Falkland Islands", "naj@polpov.kw"),
    ("Roxie Clayton", 20, 75, 1.71, "Namibia", "bubfoav@bac.hm")


----------> Count Number of Student in  Each Country
SELECT country, COUNT(name)
FROM student
GROUP BY country;

----------> Count the Number of Students Based on Each Country and name
SELECT country,name, COUNT(name)
FROM student
GROUP BY country, name;


----------> Calculate the Average Mark in  Each Country
SELECT country, AVG(marks)
FROM student
GROUP BY country;


---------> Write the Query to find avg marks in each city in ascending order.
SELECT country, AVG(marks)
FROM student
GROUP BY country
ORDER BY AVG(marks) ASC;


------------------->
INSERT INTO student(name, age, marks, cgpa, grade, country, email)
VALUES
    ("Leila Houston", 24, 65, 3.45, "A", "Namibia", "rikre@lumi.hn"),
    ("Corey Obrien", 22, 98, 2.37, "B", "Madagascar", "gaejakam@nilor.ye"),
    ("Jimmy Webster", 24, 60, 3.41, "A", "Namibia", "bud@bahbabri.nl"),
    ("Virgie Chambers", 21, 51, 1.38, "D", "Cayman Islands", "uliig@baik.mk"),
    ("Violet Murphy", 20, 91, 1.76, "A", "Namibia", "nonsemu@ata.eh"),
    ("Hilda Clayton", 25, 91, 2.47, "F", "Guernsey", "kutugfu@ze.pn"),
    ("Jeanette Mendoza", 22, 90, 3.79, "A", "Eritrea", "ropew@ve.nu"),
    ("Polly Rios", 25, 87, 3.62, "A", "Lebanon", "zu@zu.mc"),
    ("Jeff Oliver", 20, 73, 3.82, "F", "Portugal", "vielumuv@kav.dz"),
    ("Ruth Burgess", 20, 73, 3.35, "F", "Namibia", "ilur@je.ng"),
    ("Nellie Austin", 25, 56, 3.49, "F", "Lebanon", "za@nava.ls"),
    ("Bernice Moran", 25, 75, 3.38, "C", "Croatia", "kipak@bu.kw"),
    ("Alfred Knight", 25, 97, 3.19, "D", "Namibia", "sa@uzkevo.tv"),
    ("Jonathan Maxwell", 25, 57, 3.33, "D", "Venezuela", "ga@gumi.id"),
    ("Mina Barton", 22, 71, 2.21, "A", "Namibia", "lakifa@niw.com"),
    ("Evelyn Love", 25, 69, 2.12, "E", "Falkland Islands", "naj@polpov.kw"),
    ("Roxie Clayton", 20, 75, 1.71, "C", "Namibia", "bubfoav@bac.hm")


SELECT grade, COUNT(id)
FROM student
GROUP BY grade
ORDER BY grade;


------------------------>
SELECT country, COUNT(id)
FROM student
WHERE marks BETWEEN 90 and 100
GROUP BY country;