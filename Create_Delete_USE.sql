
---------------> Create & Delete Database
CREATE DATABASE db_name;

DROP DATABASE db_name;

___BEST_PRACTICE
CREATE DATABASE IF NOT EXISTS db_name;
DROP DATABASE IF EXISTS db_name;


USE DATABASE db_name; --> Selecting the Database for working on the current database


-------------> Create & Delete Table

CREATE TABLE table_name(
    column_name_1 Data_Type Constraint,
    column_name_2 Data_Type Constraint,
    column_name_3 Data_Type Constraint
);

-->Example
CREATE TABLE tab(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone INT UNIQUE NOT NULL,
    email VARCHAR(50) UNIQUE
);


-------------> Insert value into Table & Print
INSERT INTO tab(name, phone, email)
VALUES
    ("Amy Weaver", 0121212, "bek@hep.es"),
    ("Nancy Joseph", 01215452, "pom@uvbeddip.at"),
    ("Julia Herrera", 01245212, "toprevzeb@ac.ad"),
    ("Steven Powell", 01678612, "focwimafe@gi.cc"),
    ("Lenora Bush", 012134212, "wonfisgaw@vugef.sj"),
    ("Esther Schneider", 012221212, "bibkorwa@walafvuj.sl")


INSERT INTO table_name VALUES(__, ____, ___); ---> if all data type are different
DROP TABLE table_name; ---> Delete Table


-----------------> PRINT Table
SELECT * FROM tab;   ----> * means ALL


--> if we want to print only name column
CREATE TABLE tab(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40),
    country VARCHAR(100),
    email VARCHAR(50)
);

INSERT INTO tab(name, country, email)
VALUES
    ("Eula Drake", "Svalbard & Jan Mayen", "jo@op.co"),
    ("Elizabeth Harris", "Ghana", "kek@lokiguz.hn"),
    ("Anthony Arnold", "South Korea", "pi@jij.tk"),
    ("Lottie Vargas", "Cyprus", "ni@zufnorro.sj"),
    ("Francis Robertson", "Jersey", "laz@nouha.lc"),
    ("Luella Jacobs", "New Caledonia", "gojud@cibze.fi"),
    ("Rebecca Carlson", "Palau", "tu@pirfiz.kp"),
    ("Bettie Taylor", "Austria", "orjipoh@uwvottet.net"),
    ("Martin Barton", "Serbia", "tucub@fubcuv.na"),
    ("Myrtle Roberts", "Sweden", "boklevcum@da.th")


SELECT name FROM tab;  ---> Print only name
SELECT name, email FROM tab; ---> Print only name & email
SELECT DISTINCT country FROM tab; ---> Print only UNIQUE values
