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


SELECT country, COUNT(id)
FROM student
GROUP BY country
HAVING MAX(marks) > 90;


--------------------------->
SELECT country
FROM student
WHERE grade = "A"
GROUP BY country
HAVING MAX(cgpa) >= 3.00;



--------------------------------->
SELECT country
FROM student
WHERE grade = "A"
GROUP BY country
HAVING MAX(cgpa) >= 3.00
ORDER BY country DESC;