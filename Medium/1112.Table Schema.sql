DROP TABLE ENROLLMENTS;
CREATE TABLE ENROLLMENTS(
 STUDENT_ID INT,
 COURSE_ID INT,
 GRADE INT,
 PRIMARY KEY (STUDENT_ID, COURSE_ID)
);
INSERT INTO ENROLLMENTS VALUES (2, 2, 95);
INSERT INTO ENROLLMENTS VALUES (2, 3, 95);
INSERT INTO ENROLLMENTS VALUES (1, 1, 90);
INSERT INTO ENROLLMENTS VALUES (1, 2, 99);
INSERT INTO ENROLLMENTS VALUES (3, 1, 80);
INSERT INTO ENROLLMENTS VALUES (3, 2, 75);
INSERT INTO ENROLLMENTS VALUES (3, 3, 82);
COMMIT;