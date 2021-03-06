-- 1495. Friendly Movies Streamed Last Month
-- Write an SQL query to report the distinct titles of the kid-friendly movies streamed in June 2020.
-- Return the result table in any order.

-- Create table
DROP TABLE TVPROGRAM;
CREATE TABLE TVPROGRAM(
 PROGRAM_DATE DATE,
 CONTENT_ID INT,
 CHANNEL VARCHAR(20),
 PRIMARY KEY (PROGRAM_DATE, CONTENT_ID)
);

DROP TABLE CONTENT;
CREATE TABLE CONTENT(
 CONTENT_ID INT,
 TITLE VARCHAR(20),
 KIDS_CONTENT CHAR(1) CHECK (KIDS_CONTENT IN('Y','N')), 
 CONTENT_TYPE VARCHAR(20),
 PRIMARY KEY (CONTENT_ID)
);

INSERT INTO TVPROGRAM VALUES ('2020-06-10 08:00', 1, 'LC-Channel');
INSERT INTO TVPROGRAM VALUES ('2020-05-11 12:00', 2, 'LC-Channel');
INSERT INTO TVPROGRAM VALUES ('2020-05-12 12:00', 3, 'LC-Channel');
INSERT INTO TVPROGRAM VALUES ('2020-05-13 14:00', 4, 'Disney Ch');
INSERT INTO TVPROGRAM VALUES ('2020-06-18 14:00', 4, 'Disney Ch');
INSERT INTO TVPROGRAM VALUES ('2020-07-15 16:00', 5, 'Disney Ch');

INSERT INTO CONTENT VALUES (1, 'Leetcode Movie', 'N', 'Movies');
INSERT INTO CONTENT VALUES (2, 'Alg. for Kids', 'Y', 'Series');
INSERT INTO CONTENT VALUES (3, 'Database Sols', 'N', 'Series');
INSERT INTO CONTENT VALUES (4, 'Aladdin', 'Y', 'Movies');
INSERT INTO CONTENT VALUES (5, 'Cinderella', 'Y', 'Movies');
COMMIT;

-- Solution
SELECT C.TITLE
FROM TVPROGRAM T, CONTENT C
WHERE T.CONTENT_ID = C.CONTENT_ID
	AND T.PROGRAM_DATE BETWEEN '2020-06-01' AND '2020-06-30'
	AND C.KIDS_CONTENT = 'Y';
    