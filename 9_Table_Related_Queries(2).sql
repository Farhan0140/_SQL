CREATE TABLE student(
    id INT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL, 
    age INT NOT NULL, 
    sec VARCHAR(5),
    marks INT,
    cgpa FLOAT,
    grade VARCHAR(10),
    phone VARCHAR(50) UNIQUE, 
    country VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO student(id, name, age, sec, marks, cgpa, grade, phone, country, email)
VALUES
    (101, "Leila Houston", 24, "A", 30, 2.00, "F", "01403563478", "Namibia", "rikre@lumi.hn"),
    (102, "Corey Obrien", 22, "A", 98, 4.00, "A+", "01609976678","Madagascar", "gaejakam@nilor.ye"),
    (103, "Jimmy Webster", 24, "C", 60, 2.50, "B", "01905775667","Namibia", "bud@bahbabri.nl"),
    (104, "Virgie Chambers", 21, "B", 51, 2.68, "B+", "01203576678","Cayman Islands", "uliig@baik.mk"),
    (105, "Violet Murphy", 20, "A", 91, 4.00, "A+","01207897667", "Namibia", "nonsemu@ata.eh"),
    (106, "Hilda Clayton", 25, "C", 91, 4.00, "A+","01999966678", "Guernsey", "kutugfu@ze.pn"),
    (107, "Jeanette Mendoza", 22, "B", 20, 1.66, "F","01888566678", "Eritrea", "ropew@ve.nu"),
    (108, "Polly Rios", 25, "A", 87, 3.62, "A", "01905778678","Lebanon", "zu@zu.mc"),
    (109, "Jeff Oliver", 20, "A", 73, 3.24, "B+","01783566678", "Portugal", "vielumuv@kav.dz"),
    (110, "Ruth Burgess", 20, "B", 56, 3.00, "C","01603478867", "Namibia", "ilur@je.ng"),
    (111, "Nellie Austin", 25, "C", 33, 1.49, "D", "01803562688","Lebanon", "za@nava.ls"),
    (112, "Bernice Moran", 25, "D", 36, 1.60, "D", "01403544788","Croatia", "kipak@bu.kw"),
    (113, "Alfred Knight", 25, "A", 78, 3.19, "B","01403565775", "Namibia", "sa@uzkevo.tv"),
    (114, "Jonathan Maxwell", 25, "A", 40, 2.33, "D","01703997667", "Venezuela", "ga@gumi.id"),
    (115, "Mina Barton", 22, "B", 71, 2.61, "B", "01303898678","Namibia", "lakifa@niw.com"),
    (116, "Evelyn Love", 25, "C", 45, 2.12, "D","01904566678", "Falkland Islands", "naj@polpov.kw"),
    (117, "Roxie Clayton", 20, "D", 2, 1.00, "F", "01693526678", "Namibia", "bubfoav@bac.hm")



-------------------------------> ADD COLUMN
ALTER TABLE student
ADD COLUMN cf_handle VARCHAR(50) NOT NULL;

---->
ALTER TABLE student
ADD COLUMN cf_handle VARCHAR(50) NOT NULL DEFAULT "__Farhan___";


-------------------------------> DROP COLUMN
ALTER TABLE student
DROP COLUMN cf_handle;


-------------------------------> CHANGE COLUMN (Rename)
ALTER TABLE student
CHANGE COLUMN cf_handle cc_userName VARCHAR(100);


-------------------------------> MODIFY Column (Change Data Type or Constrain)
ALTER TABLE student
MODIFY age VARCHAR(10);


-------------------------------> RENAME TABLE ()
ALTER TABLE student
RENAME TO st;


-------------------------------> TRUNCATE (Delete all data)
TRUNCATE student;