-- MID

-- 1	2	3	4	5	6	7	8	9	10	11	12
-- S	Q	L	 	T	u	t	o	r	i	a	l

-- Note: The position of the last character in the string is -1.

-- -12	-11	-10	-9	-8	-7	-6	-5	-4	-3	-2	-1
--  S 	 Q	 L	 	 T	 u	 t	 o	 r	 i	 a	 l

SELECT MID("SQL Tutorial", 5, 2) AS ExtractString; -- Tu
SELECT MID("SQL Tutorial", -5, 3) AS ExtractString; -- ori



-- UPPER
SELECT UPPER('farhAn NadiM'); -- FARHAN NADIM


-- LOWER
SELECT LOWER('farhan NadiM'); -- farhan nadim


-- ABS
SELECT ABS(-100); -- 100
SELECT ABS(100); -- 100


-- RADIANS TO DEGREES
SELECT DEGREES(12);
-- DEGREES TO RADIANS
SELECT RADIANS(90);


-- COS
SELECT COS(90); -- return cos 90 radians
SELECT COS(RADIANS(90)); -- return cos 90 degree


-- ACOS
SELECT ACOS(90); -- return cos inverse 90 radians
SELECT ACOS(RADIANS(90));

-- SIN, ASIN
SELECT SIN(RADIANS(90)); 
SELECT ASIN(RADIANS(90)); 

-- TAN, ATEN
SELECT TAN(RADIANS(90)); 
SELECT ATAN(RADIANS(90)); 


-- CEIL
SELECT CEIL(25.001); -- 26


-- FLOOR
SELECT FLOOR(25.999); -- 25


-- DIV
SELECT 10/2; -- 5.0000
SELECT 10 DIV 2; -- 5


-- EXP
SELECT EXP(10);  -- e^10
SELECT EXP(-10); -- e^-10


-- GREATEST
SELECT GREATEST(-10, 8, 2, 100); -- 100

-- LEAST
SELECT LEAST(-10, 8, 2, 100); 


-- LN
SELECT LN(10); -- log base e 
SELECT LOG(10);  -- LN & LOG Same

-- LOG10
SELECT LOG10(10); -- log base 10

-- LOG2
SELECT LOG2(10); -- log base 2


-- MOD
SELECT 5%2; -- 1
SELECT 5 MOD 2; -- 1


-- PI
SELECT PI(); -- 3.14153


-- POW
SELECT POW(2, 3); -- 2^3 = 8


-- ROUND
SELECT ROUND(3.14159, 3); -- 3.142 , 3rd value >= 5
SELECT ROUND(3.14159, 2); -- 3.14 , 3rd value < 5

-- TRUNCATE
SELECT TRUNCATE(3.14159, 3); -- 3.141
SELECT TRUNCATE(3.14159, 2); -- 3.14


-- SQRT
SELECT SQRT(25); -- 5


-- RAND
SELECT RAND(); -- RETURN RANDOME VALUE 0 to 1
SELECT CEIL(RAND() * 10);  -- RETURN RANDOME VALUE 1 to 10