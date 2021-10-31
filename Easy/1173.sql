-- 1173. Immediate Food Delivery I
-- If the preferred delivery date of the customer is the same as the order date then the order is called immediate 
-- otherwise it’s called scheduled.
-- Write an SQL query to find the percentage of immediate orders in the table, rounded to 2 decimal places.

-- Create table
DROP TABLE DELIVERY;
CREATE TABLE DELIVERY (
 DELIVERY_ID INT,
 CUSTOMER_ID INT,
 ORDER_DATE DATE,
 CUSTOMER_PREF_DELIVERY_DATE DATE
);
 
INSERT INTO DELIVERY VALUES (1, 1, '2019-08-01', '2019-08-02');
INSERT INTO DELIVERY VALUES (2, 5, '2019-08-02', '2019-08-02');
INSERT INTO DELIVERY VALUES (3, 1, '2019-08-11', '2019-08-11');
INSERT INTO DELIVERY VALUES (4, 3, '2019-08-24', '2019-08-26');
INSERT INTO DELIVERY VALUES (5, 4, '2019-08-21', '2019-08-22');
INSERT INTO DELIVERY VALUES (6, 2, '2019-08-11', '2019-08-13');
COMMIT;

-- Solution
SELECT ROUND(100*(D.IMMEDIATE / COUNT(D2.DELIVERY_ID)), 2) IMMEDIATE_PERCENTAGE
FROM (
	SELECT COUNT(D1.DELIVERY_ID) IMMEDIATE
    FROM DELIVERY D1
    WHERE D1.ORDER_DATE = D1.CUSTOMER_PREF_DELIVERY_DATE) D, 
    DELIVERY D2

