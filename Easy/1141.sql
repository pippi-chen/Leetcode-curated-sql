-- 1141. User Activity for the Past 30 Days I
-- Write an SQL query to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. 
-- A user was active on some day if he/she made at least one activity on that day.

-- Create table
DROP TABLE ACTIVITY;
CREATE TABLE ACTIVITY (
 USER_ID INT,
 SESSION_ID INT,
 ACTIVITY_DATE DATE,
 -- MySQL
 -- ACTIVITY_TYPE ENUM('open_session', 'end_session', 'scroll_down', 'send_message')
 ACTIVITY_TYPE VARCHAR(20) CHECK( ACTIVITY_TYPE IN ('open_session', 'end_session', 'scroll_down', 'send_message') )
);

INSERT INTO ACTIVITY VALUES (1, 1, '2019-07-20', 'open_session');
INSERT INTO ACTIVITY VALUES (1, 1, '2019-07-20', 'scroll_down');
INSERT INTO ACTIVITY VALUES (1, 1, '2019-07-20', 'end_session');
INSERT INTO ACTIVITY VALUES (2, 4, '2019-07-20', 'open_session');
INSERT INTO ACTIVITY VALUES (2, 4, '2019-07-21', 'send_message');
INSERT INTO ACTIVITY VALUES (2, 4, '2019-07-21', 'end_session');
INSERT INTO ACTIVITY VALUES (3, 2, '2019-07-21', 'open_session');
INSERT INTO ACTIVITY VALUES (3, 2, '2019-07-21', 'send_message');
INSERT INTO ACTIVITY VALUES (3, 2, '2019-07-21', 'end_session');
INSERT INTO ACTIVITY VALUES (4, 3, '2019-06-25', 'open_session');
INSERT INTO ACTIVITY VALUES (4, 3, '2019-06-25', 'end_session');
COMMIT;

-- Solution
SELECT A.ACTIVITY_DATE 'DAY', COUNT(DISTINCT A.USER_ID) ACTIVE_USERS
FROM ACTIVITY A
WHERE A.ACTIVITY_DATE BETWEEN '2019-06-27' AND '2019-07-27'
GROUP BY A.ACTIVITY_DATE;

