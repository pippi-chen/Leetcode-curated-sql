-- 608. Tree Node
-- Write a query to print the node id and the type of the node. 
-- Sort your output by the node id. 
-- The result for the above sample is:

-- Create table
DROP TABLE TREE;
CREATE TABLE TREE(
 ID INT,
 P_ID INT,
 PRIMARY KEY (ID)
);

INSERT INTO TREE VALUES (1, null);
INSERT INTO TREE VALUES (2, 1);
INSERT INTO TREE VALUES (3, 1);
INSERT INTO TREE VALUES (4, 2);
INSERT INTO TREE VALUES (5, 2);
COMMIT;

-- Solution
SELECT T.ID, 'ROOT' AS 'TYPE'
FROM TREE T
WHERE T.P_ID IS NULL
UNION
SELECT T1.ID, 'LEAF' AS 'TYPE'
FROM TREE T1
WHERE T1.ID NOT IN (SELECT DISTINCT T11.P_ID
        FROM TREE T11
        WHERE T11.P_ID IS NOT NULL) 
    AND T1.P_ID IS NOT NULL
UNION
SELECT T2.ID, 'INNER' AS 'Type'
FROM TREE T2
WHERE T2.ID IN (SELECT DISTINCT T22.P_ID
        FROM TREE T22
        WHERE T22.P_ID IS NOT NULL)
    AND T2.P_ID IS NOT NULL
ORDER BY ID;

