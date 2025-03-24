-------------> Select

SELECT col_1 FROM table_name;  ---> Select only name
SELECT col_1, col_2 FROM table_name; ---> Select only name & email
SELECT DISTINCT col_1 FROM table_name; ---> Select only UNIQUE values
SELECT * FROM table_name; ---> Select all column



-------------> Whare_Clause

SELECT col_1, col_2 FROM table_name WHERE condtion;

--->
INSERT INTO tab(name, age, country, email)
VALUES
    ("Eula Drake", 28, "Svalbard & Jan Mayen", "jo@op.co"),
    ("Elizabeth Harris", 30, "Ghana", "kek@lokiguz.hn"),
    ("Anthony Arnold", 27, "South Korea", "pi@jij.tk"),
    ("Lottie Vargas", 29, "Cyprus", "ni@zufnorro.sj"),
    ("Francis Robertson", 25, "Jersey", "laz@nouha.lc"),
    ("Luella Jacobs", 30, "New Caledonia", "gojud@cibze.fi"),
    ("Rebecca Carlson", 27, "Palau", "tu@pirfiz.kp"),
    ("Bettie Taylor", 25, "Austria", "orjipoh@uwvottet.net"),
    ("Martin Barton", 30, "Serbia", "tucub@fubcuv.na"),
    ("Myrtle Roberts", 25, "Sweden", "boklevcum@da.th")


SELECT * FROM tab WHERE age = 30;
SELECT * FROM tab WHERE age = 30 OR age = 25;


-------------> Operators
1. Arithmetic: +, -, *, /, %
2. Comparison: =, !=, >=, >, <=, <
3. Logical: AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY
4. bitwise: &, |


-->Ex
SELECT * FROM tab WHERE age % 2 = 0;  ---> Print Even ages
SELECT * FROM tab WHERE age % 2 != 0;  ---> Print Odd ages