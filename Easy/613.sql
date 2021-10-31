-- 613. Shortest Distance in a Line
-- Table point holds the x coordinate of some points on x-axis in a plane, which are all integers.
-- Write a query to find the shortest distance between two points in these points.

-- Create table
DROP TABLE POINT;
CREATE TABLE POINT (X INT);
INSERT INTO POINT VALUES (-1);
INSERT INTO POINT VALUES (0);
INSERT INTO POINT VALUES (2);
COMMIT;

-- Solution
SELECT MIN(ABS(P1.X - P2.X))
FROM `POINT` P1, `POINT` P2
WHERE P1.X <> P2.X;