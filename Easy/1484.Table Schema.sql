DROP TABLE ACTIVITIES;
CREATE TABLE ACTIVITIES(
 SELL_DATE DATE,
 PRODUCT VARCHAR(20)
);

INSERT INTO ACTIVITIES VALUES ('2020-05-30', 'Headphone');
INSERT INTO ACTIVITIES VALUES ('2020-06-01', 'Pencil');
INSERT INTO ACTIVITIES VALUES ('2020-06-02', 'Mask');
INSERT INTO ACTIVITIES VALUES ('2020-05-30', 'Basketball');
INSERT INTO ACTIVITIES VALUES ('2020-06-01', 'Bible');
INSERT INTO ACTIVITIES VALUES ('2020-06-02', 'Mask');
INSERT INTO ACTIVITIES VALUES ('2020-05-30', 'T-Shirt');
COMMIT;