-- 607. Triangle Judgement
-- A pupil Tim gets homework to identify whether three line segments could possibly from a triangle.
-- However, this assignment is very heavy because there are hundreds of records to calaulate. 
-- Could you help Tim by writting a query to judge whether these three sides can form a triangle assuming table triangle holds the length of the three sides x, y, and z.

-- Create table
DROP TABLE TRIANGLE;
CREATE TABLE TRIANGLE(
  X INT,
  Y INT,
  Z INT
);

INSERT INTO TRIANGLE VALUES (13, 15, 30);
INSERT INTO TRIANGLE VALUES (10, 20, 15);
COMMIT;

-- Solution
SELECT T.X, T.Y, T.Z, IF(T.X + T.Y > T.Z AND T.Y + T.Z > T.X AND T.X + T.Z > T.Y, 'Yes', 'No') 'triangle'
FROM TRIANGLE T;

