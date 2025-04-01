CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;



--
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;


-- https://leetcode.com/problems/tree-node/description/
--
SELECT 
    id,
    CASE
        WHEN p_id IS NULL THEN 'Root'
        WHEN id IN ( SELECT p_id FROM Tree ) THEN 'Inner'
        ELSE 'Leaf'
    END AS type
FROM Tree;




-- if
SELECT IF(500<1000, 5, 10);





--