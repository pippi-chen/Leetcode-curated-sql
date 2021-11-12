DROP TABLE EMPLOYEES;
CREATE TABLE EMPLOYEES(
 ID INT,
 NAME VARCHAR(20),
 PRIMARY KEY (ID)
);

DROP TABLE EMPLOYEEUNI;
CREATE TABLE EMPLOYEEUNI(
 ID INT,
 UNIQUE_ID INT,
 PRIMARY KEY (ID,UNIQUE_ID)
);

INSERT INTO EMPLOYEES VALUES (1, 'Alice');
INSERT INTO EMPLOYEES VALUES (7, 'Bob');
INSERT INTO EMPLOYEES VALUES (11, 'Meir');
INSERT INTO EMPLOYEES VALUES (90, 'Winston');
INSERT INTO EMPLOYEES VALUES (3, 'Jonathan');

INSERT INTO EMPLOYEEUNI VALUES (3, 1);
INSERT INTO EMPLOYEEUNI VALUES (11, 2);
INSERT INTO EMPLOYEEUNI VALUES (90, 3);  
COMMIT;