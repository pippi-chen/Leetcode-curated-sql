DROP TABLE MOVIES;
CREATE TABLE MOVIES(
 MOVIE_ID INT,
 TITLE VARCHAR(20),
 PRIMARY KEY (MOVIE_ID)
);
DROP TABLE USERS;
CREATE TABLE USERS(
 USER_ID INT,
 NAME VARCHAR(20),
 PRIMARY KEY (USER_ID)
);
DROP TABLE MOVIE_RATING;
CREATE TABLE MOVIE_RATING(
 MOVIE_ID INT,
 USER_ID INT,
 RATING INT,
 CREATED_AT DATE,
 PRIMARY KEY (MOVIE_ID, USER_ID)
);

INSERT INTO MOVIES VALUES (1, 'Avengers');
INSERT INTO MOVIES VALUES (2, 'Frozen 2');
INSERT INTO MOVIES VALUES (3, 'Joker');
INSERT INTO USERS VALUES(1, 'Daniel');
INSERT INTO USERS VALUES(2, 'Monica');
INSERT INTO USERS VALUES(3, 'Maria');
INSERT INTO USERS VALUES(4, 'James');
INSERT INTO MOVIE_RATING VALUES (1, 1, 3, '2020-01-12');
INSERT INTO MOVIE_RATING VALUES (1, 2, 4, '2020-02-11');
INSERT INTO MOVIE_RATING VALUES (1, 3, 2, '2020-02-12');
INSERT INTO MOVIE_RATING VALUES (1, 4, 1, '2020-01-01');
INSERT INTO MOVIE_RATING VALUES (2, 1, 5, '2020-02-17');
INSERT INTO MOVIE_RATING VALUES (2, 2, 2, '2020-02-01');
INSERT INTO MOVIE_RATING VALUES (2, 3, 2, '2020-03-01');
INSERT INTO MOVIE_RATING VALUES (3, 1, 3, '2020-02-22');
INSERT INTO MOVIE_RATING VALUES (3, 2, 4, '2020-02-25');
COMMIT;