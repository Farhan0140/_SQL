-- Arithmatic Operators : +, -, *, /, %

CREATE TABLE student(

    Roll CHAR(4),
    Name VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(255),
    Age INT,
    CGPA FLOAT NOT NULL,

    Constraint pk_rule PRIMARY KEY(Roll),
    Constraint unique_rule UNIQUE(Email),
    Constraint checking_rule CHECK(Age > 10)

);

INSERT INTO student (Roll, Name, Email, Address, Age, CGPA)
VALUES 
    ('0001', 'Farhan', 'abc@gmail.com', 'Dhaka', 23, 3.45),
    ('0002', 'Nadim', 'abcd@gmail.com', 'Aka', 25, 2.45),
    ('0003', 'Ruby Franklin', 'tohuho@go.ag', 'Equatorial Guinea', 25, 3.85),
    ('0004', 'Viola Cross', 'ake@ezafocu.cv', 'Grenada', 29, 4.00);




SELECT CGPA + Age FROM student
WHERE Roll = '0001';


SELECT CGPA * 2 FROM student
WHERE Roll = '0004';
