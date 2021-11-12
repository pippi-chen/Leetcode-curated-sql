DROP TABLE USERS;
CREATE TABLE USERS(
 USER_ID INT,
 NAME VARCHAR(10),
 MAIL VARCHAR(60),
 PRIMARY KEY (USER_ID)
);
INSERT INTO USERS VALUES (1, 'Winston', 'winston@leetcode.com');
INSERT INTO USERS VALUES (2, 'Jonathan', 'jonathanisgreat');
INSERT INTO USERS VALUES (3, 'Annabelle', 'bella-@leetcode.com');
INSERT INTO USERS VALUES (4, 'Sally', 'sally.come@leetcode.com');
INSERT INTO USERS VALUES (5, 'Marwan', 'quarz#2020@leetcode.com');
INSERT INTO USERS VALUES (6, 'David', 'david69@gmail.com');
INSERT INTO USERS VALUES (7, 'Shapiro', '.shapo@leetcode.com');
COMMIT;