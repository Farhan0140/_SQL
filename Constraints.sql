1. NOT NULL
2. UNIQUE
3. PRIMARY KEY
4. DEFAULT
5. CHECK
6. FOREIGN KEY


--------> NOT NULL
CREATE TABLE tab(
    name VARCHAR(100) NOT NULL
);

--------> UNIQUE
CREATE TABLE tab(
    name VARCHAR(100) UNIQUE
);


--------> PRIMARY KEY (Not NULL & UNIQUE)
CREATE TABLE tab(
    name VARCHAR(100) PRIMARY KEY
);

CREATE TABLE tab(
    id INT,
    name VARCHAR(100),

    PRIMARY KEY (id, name) ---> Storing all of the Combinations as unique 
);


--------> DEFAULT
CREATE TABLE tab(
    name VARCHAR(50),
    salary INT DEFAULT 25000 ---> It automatically sets the salary default don't need to insert value
);


--------> CHECK
CREATE TABLE tab(
    age INT,
    CHECK (age >= 18 AND age <= 25) ---> It checks the condition if it's true then creates the table
);


--------> FOREIGN KEY