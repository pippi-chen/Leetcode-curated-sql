-- 1511. Customer Order Frequency
-- Write an SQL query to report the customer_id and 
-- customer_name of customers who have spent at least $100 in each month of June and July 2020.
-- Return the result table in any order.

-- Create table
DROP TABLE CUSTOMERS;
CREATE TABLE CUSTOMERS(
 CUSTOMER_ID INT,
 NAME VARCHAR(20),
 COUNTRY VARCHAR(20),
 PRIMARY KEY (CUSTOMER_ID)
);

DROP TABLE PRODUCT;
CREATE TABLE PRODUCT(
 PRODUCT_ID INT,
 DESCRIPTION VARCHAR(20),
 PRICE INT,
 PRIMARY KEY (PRODUCT_ID)
);

DROP TABLE ORDERS;
CREATE TABLE ORDERS(
  ORDER_ID INT,
  CUSTOMER_ID INT,
  PRODUCT_ID INT,
  ORDER_DATE DATE,
  QUANTITY INT,
  PRIMARY KEY (ORDER_ID)
);

INSERT INTO CUSTOMERS VALUES (1, 'Winston', 'USA');
INSERT INTO CUSTOMERS VALUES (2, 'Jonathan', 'Peru');
INSERT INTO CUSTOMERS VALUES (3, 'Moustafa', 'Egypt');

INSERT INTO PRODUCT VALUES (10, 'LC Phone', 300);
INSERT INTO PRODUCT VALUES (20, 'LC T-Shirt', 10);
INSERT INTO PRODUCT VALUES (30, 'LC Book', 45);
INSERT INTO PRODUCT VALUES (40, 'LC Keychain', 2);

INSERT INTO ORDERS VALUES (1, 1, 10, '2020-06-10', 1);
INSERT INTO ORDERS VALUES (2, 1, 20, '2020-07-01', 1);
INSERT INTO ORDERS VALUES (3, 1, 30, '2020-07-08', 2);
INSERT INTO ORDERS VALUES (4, 2, 10, '2020-06-15', 2);
INSERT INTO ORDERS VALUES (5, 2, 40, '2020-07-01', 10);
INSERT INTO ORDERS VALUES (6, 3, 20, '2020-06-24', 2);
INSERT INTO ORDERS VALUES (7, 3, 30, '2020-06-25', 2);
INSERT INTO ORDERS VALUES (9, 3, 30, '2020-05-08', 3);
COMMIT;

-- Solution
SELECT C.CUSTOMER_ID, C.NAME
FROM CUSTOMERS C, PRODUCT P, ORDERS O
WHERE C.CUSTOMER_ID = O.CUSTOMER_ID
	AND P.PRODUCT_ID = O.PRODUCT_ID
    AND O.ORDER_DATE BETWEEN '2020-06-01' AND '2020-06-30'
	AND P.PRICE >= 100
	AND C.CUSTOMER_ID IN(
		SELECT C.CUSTOMER_ID
		FROM CUSTOMERS C, PRODUCT P, ORDERS O
		WHERE C.CUSTOMER_ID = O.CUSTOMER_ID
			AND P.PRODUCT_ID = O.PRODUCT_ID
			AND O.ORDER_DATE BETWEEN '2020-07-01' AND '2020-07-31'
		GROUP BY C.CUSTOMER_ID
        HAVING SUM(P.PRICE * O.QUANTITY) >= 100);
        
