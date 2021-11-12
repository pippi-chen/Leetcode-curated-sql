-- 1407. Top Travellers
-- Write an SQL query to report the distance travelled by each user.
-- Return the result table ordered by travelled_distance in descending order, 
-- if two or more users travelled the same distance, order them by their name in ascending order.

-- Create table
DROP TABLE USERS;
CREATE TABLE USERS(
 ID INT,
 NAME VARCHAR(30),
 PRIMARY KEY (ID)
);

DROP TABLE RIDES;
CREATE TABLE RIDES(
 ID INT,
 USER_ID INT,
 DISTANCE INT,
 PRIMARY KEY (ID)
);

INSERT INTO Users VALUES(1, 'Alice');
INSERT INTO Users VALUES(2, 'Bob');
INSERT INTO Users VALUES(3, 'Alex');
INSERT INTO Users VALUES(4, 'Donald');
INSERT INTO Users VALUES(7, 'Lee');
INSERT INTO Users VALUES(13, 'Jonathan');
INSERT INTO Users VALUES(19, 'Elvis');

INSERT INTO RIDES VALUES (1, 1, 120);
INSERT INTO RIDES VALUES (2, 2, 317);
INSERT INTO RIDES VALUES (3, 3, 222);
INSERT INTO RIDES VALUES (4, 7, 100);
INSERT INTO RIDES VALUES (5, 13, 312);
INSERT INTO RIDES VALUES (6, 19, 50);
INSERT INTO RIDES VALUES (7, 7, 120);
INSERT INTO RIDES VALUES (8, 19, 400);
INSERT INTO RIDES VALUES (9, 7, 230);
COMMIT;

-- Solution


