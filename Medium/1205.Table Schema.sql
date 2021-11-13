DROP TABLE TRANSACTIONS;
CREATE TABLE TRANSACTIONS (
 ID INT,
 COUNTRY VARCHAR(2), 
 -- MySQL
 -- state enum('approved', 'declined'),
 STATE VARCHAR(20) CHECK( STATE IN ('approved', 'declined') ),
 AMOUNT INT,
 TRANS_DATE DATE,
 PRIMARY KEY (ID)
);
DROP TABLE CHARGEBACKS;
CREATE TABLE CHARGEBACKS (
 TRANS_ID INT,
 TRANS_DATE DATE,
 PRIMARY KEY (TRANS_ID)
);
INSERT INTO TRANSACTIONS VALUES (101, 'US', 'approved', 1000, '2019-05-18');
INSERT INTO TRANSACTIONS VALUES (102, 'US', 'declined', 2000, '2019-05-19');
INSERT INTO TRANSACTIONS VALUES (103, 'US', 'approved', 3000, '2019-06-10');
INSERT INTO TRANSACTIONS VALUES (104, 'US', 'approved', 4000, '2019-06-13');
INSERT INTO TRANSACTIONS VALUES (105, 'US', 'approved', 5000, '2019-06-15');
INSERT INTO CHARGEBACKS VALUES (102, '2019-05-29');
INSERT INTO CHARGEBACKS VALUES (101, '2019-06-30');
INSERT INTO CHARGEBACKS VALUES (105, '2019-09-18');
COMMIT;