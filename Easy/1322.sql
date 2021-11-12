-- 1322. Ads Performance 
-- Write an SQL query to find the ctr of each Ad.
-- Round ctr to 2 decimal points. 
-- Order the result table by ctr in descending order and by ad_id in ascending order in case of a tie.

-- Create table
DROP TABLE ADS;
CREATE TABLE ADS(
 AD_ID INT,
 USER_ID INT,
 -- MySQL
 -- action enum('Clicked', 'Viewed', 'Ignored'),
 ACTION VARCHAR(10) CHECK( ACTION IN ('Clicked', 'Viewed', 'Ignored') ),
 PRIMARY KEY (AD_ID, USER_ID)
);

INSERT INTO ADS VALUES(1, 1, 'Clicked');
INSERT INTO ADS VALUES(2, 2, 'Clicked');
INSERT INTO ADS VALUES(3, 3, 'Viewed');
INSERT INTO ADS VALUES(5, 5, 'Ignored');
INSERT INTO ADS VALUES(1, 7, 'Ignored');
INSERT INTO ADS VALUES(2, 7, 'Viewed');
INSERT INTO ADS VALUES(3, 5, 'Clicked');
INSERT INTO ADS VALUES(1, 4, 'Viewed');
INSERT INTO ADS VALUES(2, 11, 'Viewed');
INSERT INTO ADS VALUES(1, 2, 'Clicked');
COMMIT;

-- Solution
SELECT ADS.AD_ID, 
	ifnull(round(sum(action ='Clicked')/sum(action !='ignored') *100,2),0) AS ctr
 FROM ADS
 GROUP BY ADS.AD_ID
 ORDER BY ctr DESC, ADS.AD_ID ASC;


