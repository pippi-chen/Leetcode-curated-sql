-- 603. Consecutive Available Seats
-- Several friends at a cinema ticket office would like to reserve consecutive available seats.
-- Can you help to query all the consecutive available seats order by the seat_id using the following cinema table?

-- Create table
DROP TABLE CINEMA;

CREATE TABLE CINEMA
(
  SEAT_ID INT NOT NULL 
, FREE CHAR(1) 
, CONSTRAINT CINEMA_PK PRIMARY KEY (SEAT_ID)
);

INSERT INTO CINEMA (SEAT_ID,FREE) VALUES (1,'1');
INSERT INTO CINEMA (SEAT_ID,FREE) VALUES (2,'0');
INSERT INTO CINEMA (SEAT_ID,FREE) VALUES (3,'1');
INSERT INTO CINEMA (SEAT_ID,FREE) VALUES (4,'1');
INSERT INTO CINEMA (SEAT_ID,FREE) VALUES (5,'1');

COMMIT;

-- Solution
SELECT DISTINCT C1.SEAT_ID 
FROM CINEMA C1, CINEMA C2
WHERE ((C1.SEAT_ID = C2.SEAT_ID + 1) OR
       (C1.SEAT_ID = C2.SEAT_ID - 1)) AND 
    (C1.FREE = 1) AND (C2.FREE = 1)
ORDER BY C1.SEAT_ID;



