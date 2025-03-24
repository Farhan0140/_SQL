
-- Type 1:

CREATE TABLE student(
                          --Constraints

    Roll CHAR(4)            PRIMARY KEY,
    Name VARCHAR(50)        NOT NULL,
    Email VARCHAR(50)       UNIQUE,
    Address VARCHAR(255),
    Age INT                 CHECK(Age > 10)

);


