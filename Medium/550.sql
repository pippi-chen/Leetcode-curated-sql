-- 550. Game Play Analysis IV
-- Write an SQL query that reports the fraction of players that logged in again
-- on the day after the day they first logged in, rounded to 2 decimal places. 
-- In other words, you need to count the number of players that logged in 
-- for at least two consecutive days starting from their first login date, 
-- then divide that number by the total number of players.

-- Create table
DROP TABLE ACTIVITY;
CREATE TABLE ACTIVITY(PLAYER_ID INT, DEVICE_ID INT, EVENT_DATE DATE, GAMES_PLAYED INT);
INSERT INTO ACTIVITY VALUES (1, 2, '2016-03-01',  5);
INSERT INTO ACTIVITY VALUES (1, 2, '2016-03-02',  6);
INSERT INTO ACTIVITY VALUES (2, 3, '2017-06-25',  1);
INSERT INTO ACTIVITY VALUES (3, 1, '2016-03-02',  0);
INSERT INTO ACTIVITY VALUES (3, 4, '2018-07-03',  5);
COMMIT;  

-- Solution
SELECT ROUND(COUNT(DISTINCT S.PLAYER_ID)/COUNT(DISTINCT A1.PLAYER_ID), 2) 'FRACTION'
FROM ACTIVITY A1
LEFT JOIN (SELECT A2.PLAYER_ID, MIN(A2.EVENT_DATE) FIRST_LOGIN_IN
	FROM ACTIVITY A2
	GROUP BY A2.PLAYER_ID) S
ON A1.PLAYER_ID = S.PLAYER_ID
AND DATEDIFF(A1.EVENT_DATE, S.FIRST_LOGIN_IN) = 1;