
-- Type 1:

CREATE TABLE student(
                          --Constraints

    Roll CHAR(4)            PRIMARY KEY,
    Name VARCHAR(50)        NOT NULL,
    Email VARCHAR(50)       UNIQUE,
    Address VARCHAR(255),
    Age INT                 CHECK(Age > 10)

);


-- Type - 2:

CREATE TABLE student(

    Roll CHAR(4),
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50),
    Address VARCHAR(255),
    Age INT,
    
    PRIMARY KEY(Roll),
    UNIQUE(Email),
    CHECK(Age > 10)

);


-- Type - 3:

CREATE TABLE student(

    Roll CHAR(4),
    Name VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(255),
    Age INT,

    Constraint PRIMARY KEY(Roll),
    Constraint UNIQUE(Email),
    Constraint CHECK(Age > 10)

);


-- Type - 4 Constraints with name:  When some rule is violated it shows the rule name

CREATE TABLE student(

    Roll CHAR(4),
    Name VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(255),
    Age INT,

    Constraint pk_rule PRIMARY KEY(Roll),
    Constraint unique_rule UNIQUE(Email),
    Constraint checking_rule CHECK(Age > 10)

);



CREATE TABLE Library(

    Book_Name VARCHAR(50) PRIMARY KEY,
    Id CHAR(4), -- who borrowed this book

    FOREIGN KEY( Id ) REFERENCES Student( RoLL )

);


