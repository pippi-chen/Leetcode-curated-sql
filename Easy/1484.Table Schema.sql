-- 1407. Top Travellers
-- Write an SQL query to report the distance travelled by each user.
-- Return the result table ordered by travelled_distance in descending order, 
-- if two or more users travelled the same distance, order them by their name in ascending order.

-- Create table
DROP TABLE ACTIVITIES;
CREATE TABLE ACTIVITIES(
 SELL_DATE DATE,
 PRODUCT VARCHAR(20)
);

INSERT INTO ACTIVITIES VALUES ('2020-05-30', 'Headphone');
INSERT INTO ACTIVITIES VALUES ('2020-06-01', 'Pencil');
INSERT INTO ACTIVITIES VALUES ('2020-06-02', 'Mask');
INSERT INTO ACTIVITIES VALUES ('2020-05-30', 'Basketball');
INSERT INTO ACTIVITIES VALUES ('2020-06-01', 'Bible');
INSERT INTO ACTIVITIES VALUES ('2020-06-02', 'Mask');
INSERT INTO ACTIVITIES VALUES ('2020-05-30', 'T-Shirt');
COMMIT;

-- Solution



