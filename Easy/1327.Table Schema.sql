-- 1327. List The Products Ordered In A Period
-- Write an SQL query to get the names of products 
-- with greater than or equal to 100 units ordered in February 2020 and their amount.

-- Create table
DROP TABLE PRODUCTS;
CREATE TABLE PRODUCTS(
 PRODUCT_ID INT,
 PRODUCT_NAME VARCHAR(30),
 PRODUCT_CATEGORY VARCHAR(10),
 PRIMARY KEY (PRODUCT_ID)
);

DROP TABLE ORDERS;
CREATE TABLE ORDERS(
 PRODUCT_ID INT,
 ORDER_DATE DATE,
 UNIT INT
);

INSERT INTO PRODUCTS VALUES (1, 'Leetcode Solutions', 'Book');
INSERT INTO PRODUCTS VALUES (2, 'Jewels of Stringology', 'Book');
INSERT INTO PRODUCTS VALUES (3, 'HP', 'Laptop');
INSERT INTO PRODUCTS VALUES (4, 'Lenovo', 'Laptop');
INSERT INTO PRODUCTS VALUES (5, 'Leetcode Kit', 'T-shirt');
INSERT INTO ORDERS VALUES (1, '2020-02-05', 60);
INSERT INTO ORDERS VALUES (1, '2020-02-10', 70);
INSERT INTO ORDERS VALUES (2, '2020-01-18', 30);
INSERT INTO ORDERS VALUES (2, '2020-02-11', 80);
INSERT INTO ORDERS VALUES (3, '2020-02-17', 2 );
INSERT INTO ORDERS VALUES (3, '2020-02-24', 3 );
INSERT INTO ORDERS VALUES (4, '2020-03-01', 20);
INSERT INTO ORDERS VALUES (4, '2020-03-04', 30);
INSERT INTO ORDERS VALUES (4, '2020-03-04', 60);
INSERT INTO ORDERS VALUES (5, '2020-02-25', 50);
INSERT INTO ORDERS VALUES (5, '2020-02-27', 50);
INSERT INTO ORDERS VALUES (5, '2020-03-01', 50);
COMMIT;

-- Solution
SELECT P.PRODUCT_NAME, SUM(O.UNIT) AS 'UNIT'
FROM PRODUCTS P, ORDERS O
WHERE P.PRODUCT_ID = O.PRODUCT_ID
    AND O.ORDER_DATE BETWEEN '2020-02-01' AND '2020-02-28'
GROUP BY P.PRODUCT_NAME
HAVING SUM(O.UNIT) >= 100
ORDER BY SUM(O.UNIT) DESC;