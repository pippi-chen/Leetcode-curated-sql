-- 1484. Group Sold Products By The Date 
-- Write an SQL query to find for each date, the number of distinct products sold and their names.
-- The sold-products names for each date should be sorted lexicographically.
-- Return the result table ordered by sell_date.

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
SELECT A.SELL_DATE, COUNT(DISTINCT A.PRODUCT) AS 'NUM_SOLD', GROUP_CONCAT(DISTINCT A.PRODUCT) AS 'PRODUCTS'
FROM ACTIVITIES A
GROUP BY A.SELL_DATE;
