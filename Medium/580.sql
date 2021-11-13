-- 580. Count Student Number In Departments
-- Write a query to print the respective department name and 
-- number of students majoring in each department for all departments in the 
-- department table (even ones with no current students).

-- Sort your results by descending number of students; 
-- if two or more departments have the same number of students, 
-- then sort those departments alphabetically by department name.

-- Create table
DROP TABLE STUDENT;
CREATE TABLE STUDENT( 
 STUDENT_ID INT,
 STUDENT_NAME VARCHAR(10),
 GENDER CHAR(1),
 DEPT_ID INT,
 PRIMARY KEY (STUDENT_ID)
);

DROP TABLE DEPARTMENT;
CREATE TABLE DEPARTMENT( 
 DEPT_ID INT,
 DEPT_NAME VARCHAR(20),
 PRIMARY KEY (DEPT_ID)
);

INSERT INTO STUDENT VALUES (1, 'Jack', 'M', 1);
INSERT INTO STUDENT VALUES (2, 'Jane', 'F', 1);
INSERT INTO STUDENT VALUES (3, 'Mark', 'M', 2);

INSERT INTO DEPARTMENT VALUES (1, 'Engineering');
INSERT INTO DEPARTMENT VALUES (2, 'Science');
INSERT INTO DEPARTMENT VALUES (3, 'Law');
COMMIT;

-- Solution
SELECT D.DEPT_NAME, COUNT(S.STUDENT_ID) STUDENT_NUMBER
FROM DEPARTMENT D 
LEFT JOIN STUDENT S
ON S.DEPT_ID = D.DEPT_ID
GROUP BY D.DEPT_ID
ORDER BY STUDENT_NUMBER DESC, D.DEPT_NAME;

