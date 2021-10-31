-- 1303. Find The Team Size 
-- Write an SQL query to find the team size of each of the employees.

-- Create table
DROP TABLE EMPLOYEE;
CREATE TABLE EMPLOYEE (
 EMPLOYEE_ID INT,
 TEAM_ID INT
);
 
INSERT INTO EMPLOYEE VALUES (1, 8);
INSERT INTO EMPLOYEE VALUES (2, 8);
INSERT INTO EMPLOYEE VALUES (3, 8);
INSERT INTO EMPLOYEE VALUES (4, 7);
INSERT INTO EMPLOYEE VALUES (5, 9);
INSERT INTO EMPLOYEE VALUES (6, 9);
COMMIT;

-- Solution
SELECT E1.EMPLOYEE_ID, COUNT(E2.EMPLOYEE_ID) TEAM_SIZE
FROM EMPLOYEE E1
INNER JOIN EMPLOYEE E2
ON E1.TEAM_ID = E2.TEAM_ID
GROUP BY E1.EMPLOYEE_ID, E2.TEAM_ID;
