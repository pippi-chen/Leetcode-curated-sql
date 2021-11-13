-- 1517. Find Users With Valid Emails 
-- Write an SQL query to find the users who have valid emails.
-- A valid e-mail has a prefix name and a domain where:
-- The prefix name is a string that may contain letters (upper or lower case), digits, underscore ‘_’, period ‘.’ and/or dash ‘-‘. 
-- The prefix name must start with a letter.
-- The domain is ‘@leetcode.com’.
-- Return the result table in any order.

-- Create table
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

-- Solution
SELECT *
FROM USERS U
WHERE U.MAIL REGEXP '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode.com'

