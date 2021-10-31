-- 1075. Project Employees I
-- Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.

-- Create table
DROP TABLE PROJECT;
CREATE TABLE PROJECT
(PROJECT_ID INT,
 EMPLOYEE_ID INT,
 PRIMARY KEY(PROJECT_ID, EMPLOYEE_ID));
 
DROP TABLE EMPLOYEE;
CREATE TABLE EMPLOYEE
(EMPLOYEE_ID INT,
 NAME VARCHAR(20),
 EXPERIENCE_YEARS INT,
 PRIMARY KEY (EMPLOYEE_ID));

INSERT INTO PROJECT VALUES (1, 1);
INSERT INTO PROJECT VALUES (1, 2);
INSERT INTO PROJECT VALUES (1, 3);
INSERT INTO PROJECT VALUES (2, 1);
INSERT INTO PROJECT VALUES (2, 4);

INSERT INTO EMPLOYEE VALUES (1, 'Khaled', 3);
INSERT INTO EMPLOYEE VALUES (2, 'Ali', 2);
INSERT INTO EMPLOYEE VALUES (3, 'John', 1);
INSERT INTO EMPLOYEE VALUES (4, 'Doe', 2);
COMMIT;

-- Solution
SELECT P.PROJECT_ID, ROUND(AVG(E.EXPERIENCE_YEARS), 2) 'Average of experience years'
FROM PROJECT P, EMPLOYEE E
WHERE P.EMPLOYEE_ID - E.EMPLOYEE_ID
GROUP BY P.PROJECT_ID;
