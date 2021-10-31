-- 1113. Reported Posts
-- Write an SQL query that reports the number of posts reported yesterday for each report reason. 
-- Assume today is 2019-07-05.

-- Create table
DROP TABLE ACTIONS;
CREATE TABLE ACTIONS (
 USER_ID INT,
 POST_ID INT,
 ACTION_DATE DATE,
 -- MySQL
 -- action enum('view', 'like', 'reaciton', 'comment', 'report', 'share'),
 ACTION VARCHAR(10) CHECK( ACTION IN ('view', 'like', 'reaciton', 'comment', 'report', 'share') ),
 EXTRA VARCHAR(10)
);

INSERT INTO ACTIONS VALUES (1, 1, '2019-07-01', 'view', NULL);
INSERT INTO ACTIONS VALUES (1, 1, '2019-07-01', 'like', NULL);
INSERT INTO ACTIONS VALUES (1, 1, '2019-07-01', 'share', NULL);
INSERT INTO ACTIONS VALUES (2, 4, '2019-07-04', 'view', NULL);
INSERT INTO ACTIONS VALUES (2, 4, '2019-07-04', 'report', 'spam');
INSERT INTO ACTIONS VALUES (3, 4, '2019-07-04', 'view', NULL);
INSERT INTO ACTIONS VALUES (3, 4, '2019-07-04', 'report', 'spam');
INSERT INTO ACTIONS VALUES (4, 3, '2019-07-02', 'view', NULL);
INSERT INTO ACTIONS VALUES (4, 3, '2019-07-02', 'report', 'spam');
INSERT INTO ACTIONS VALUES (5, 2, '2019-07-04', 'view', NULL);
INSERT INTO ACTIONS VALUES (5, 2, '2019-07-04', 'report', 'racism');
INSERT INTO ACTIONS VALUES (5, 5, '2019-07-04', 'view', NULL);
INSERT INTO ACTIONS VALUES (5, 5, '2019-07-04', 'report', 'racism');
COMMIT;

-- Solution
SELECT A.EXTRA REPORT_REASON, COUNT(DISTINCT A.POST_ID) REPORT_COUNT 
FROM ACTIONS A
WHERE A.ACTION_DATE = '2019-07-04'
	AND
    A.`ACTION` = 'report'
GROUP BY A.EXTRA;



