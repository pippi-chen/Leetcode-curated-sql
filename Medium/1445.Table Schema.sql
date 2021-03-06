DROP TABLE SALES;
CREATE TABLE SALES(
 SALE_DATE DATE, 
 -- fruit enum('apples', 'oranges'),
 FRUIT VARCHAR(10) CHECK( FRUIT IN ('apples', 'oranges') ), 
 SOLD_NUM INT,
 PRIMARY KEY (SALE_DATE,FRUIT)
);
INSERT INTO SALES VALUES ('2020-05-01', 'apples', 10);
INSERT INTO SALES VALUES ('2020-05-01', 'oranges', 8);
INSERT INTO SALES VALUES ('2020-05-02', 'apples', 15);
INSERT INTO SALES VALUES ('2020-05-02', 'oranges', 15);
INSERT INTO SALES VALUES ('2020-05-03', 'apples', 20);
INSERT INTO SALES VALUES ('2020-05-03', 'oranges', 0);
INSERT INTO SALES VALUES ('2020-05-04', 'apples', 15);
INSERT INTO SALES VALUES ('2020-05-04', 'oranges', 16);
COMMIT;