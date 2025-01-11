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


----> 1
SELECT * FROM student LIMIT 3;   ---> Print Only 3 rows

----> 2
SELECT * FROM student WHERE marks > 90 LIMIT 3;

----> 2