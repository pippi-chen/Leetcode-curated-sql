-- 534. Game Play Analysis III
-- Write an SQL query that reports for each player and date, how many games played so far by the player. 
-- That is, the total number of games played by the player until that date. Check the example for clarity.

-- Create table
DROP TABLE ACTIVITY;
CREATE TABLE ACTIVITY(PLAYER_ID INT, DEVICE_ID INT, EVENT_DATE DATE, GAMES_PLAYED INT);
INSERT INTO ACTIVITY VALUES (1, 2, '2016-03-01',  5);
INSERT INTO ACTIVITY VALUES (1, 2, '2016-05-02',  6);
INSERT INTO ACTIVITY VALUES (1, 3, '2017-06-25',  1);
INSERT INTO ACTIVITY VALUES (3, 1, '2016-03-02',  0);
INSERT INTO ACTIVITY VALUES (3, 4, '2018-07-03',  5);
COMMIT;

-- Solution
SELECT A1.PLAYER_ID, A1.EVENT_DATE, SUM(A2.GAMES_PLAYED) AS 'GAMES_PLAYED_SO_FAR'
FROM ACTIVITY A1 
JOIN ACTIVITY A2
ON A1.PLAYER_ID = A2.PLAYER_ID
WHERE A1.EVENT_DATE >= A2.EVENT_DATE
GROUP BY A1.PLAYER_ID, A1.EVENT_DATE;


