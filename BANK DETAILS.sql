/*syntax for creating the database 
CREATE DATABASE database_name;*/
CREATE DATABASE SEP_08;
SHOW DATABASES;
USE SEP_08;
/*syntax for creating the data
CREATE TABLE table_name(column_name datatype,column_name datatype);
varchar(20): accept alphanumeric 
int:accept only numeric values
bigint: */

CREATE TABLE BANK_TRANSACTION(ID INT, CUSTOMER_NAME VARCHAR(20), ACC_NO BIGINT);

DESC BANK_TRANSACTION;
CREATE TABLE BUS_DETAILS(BUSNUMBER INT,  FARE INT , TIMING INT, DESIGNATION VARCHAR(30), DEPO VARCHAR(30));  

CREATE TABLE HOSPITAL(DOCTORNAME VARCHAR(20), SPECAILIZATION VARCHAR(20), SHIFT VARCHAR(20), DEPARTMENT VARCHAR(20), WORKINGHOURS INT); 
ALTER TABLE bus_details ADD COLUMN State VARCHAR(20);
ALTER TABLE bus_details DROP COLUMN FARE;
ALTER TABLE bus_details RENAME COLUMN BUSNUMBER TO BUSNO;
ALTER TABLE bus_details MODIFY COLUMN BUSNO VARCHAR(30);
DESC bus_details;
INSERT INTO bus_details VALUES('343', 6, 'k.r.market','peenya', 'karnataka');
INSERT INTO bus_details VALUES('600F', 7, 'banashankari','shantinagar', 'karnataka');
INSERT INTO bus_details VALUES('500d', 8, 'Tinfactroy','peenya', 'karnataka');
INSERT INTO bus_details VALUES('88', 9, 'Basveshwarnagar','peenya', 'karnataka');
INSERT INTO bus_details VALUES('356', 10, 'shantinagar','peenya', 'karnataka');
INSERT INTO bus_details VALUES('365A', 7, 'KBS','peenya', 'karnataka');
INSERT INTO bus_details VALUES('600', 8, 'Attibele','peenya', 'karnataka');
INSERT INTO bus_details VALUES('356M', 8, 'Chandapura','peenya', 'karnataka');
INSERT INTO bus_details VALUES('96', 8, 'Nandinilayout','peenya' ,'karnataka');
INSERT INTO bus_details VALUES('360', 6, 'Lalbhag','peenya', 'karnataka');
INSERT INTO bus_details VALUES('376', 7, 'ElectriicCity','peenya', 'karnataka');

SELECT *FROM bus_details;
INSERT INTO hospital VALUES('Smita', 'Dentist','Night','Dental',8);
INSERT INTO hospital VALUES('Someshwari', 'Dermotologist','Morning','Dermo',8);
INSERT INTO hospital VALUES('Saroja', 'Psychastrist','Night','Psycoogy',8);
INSERT INTO hospital VALUES('Soumya', 'Physician','Night','Physcical',8);
INSERT INTO hospital VALUES('Sooraj', 'EYE','Night','EYE',8);
INSERT INTO hospital VALUES('Sangeeta', 'Cardiologist','morning','Heart',8);
INSERT INTO hospital VALUES('Saniya', 'ENT','Night','ENT',8);
INSERT INTO hospital VALUES('Savita', 'Pediatrition','Night','Children',8);
SELECT *FROM hospital;

SELECT TIMING FROM bus_details WHERE BUSNO = 88;
SELECT * FROM bus_details WHERE BUSNO = 88;

DELETE FROM bus_details where DEPO = 'peenya';
SELECT * FROM bus_details WHERE BUSNO = 88;
DELETE FROM bus_details where DEPO = 'peenya';
UPDATE bus_details SET TIMING = 12 where TIMING = 7;

Create TABLE TheatreList(TheatreName varchar(30) not null,  location varchar(30) unique,  noOfShows int not null unique,  noOfseats int not null unique,  ticketsAvailable int unique,
			 price int not null,  movieName varchar(30) not null unique,  timings varchar(30) unique,  movieLanguage varchar(30) unique,  noOfPeople int not null, check(ticketsAvailable>=30), check(price<450));

INSERT INTO TheatreList VALUES('Sangam','Gulbarga',5,400,350,380,'Avatar2','7:00 AM','English',380);
INSERT INTO TheatreList VALUES('Sangam','Bengaluru',7,290,250,400,'Charli','7:00 PM','Kannada',200);
INSERT INTO TheatreList VALUES('Netravati','Bengaluru',6,300,380,250,'Bhrmastra','9:00 PM','Hindi',300);
INSERT INTO TheatreList VALUES('Mukta','Gulbarga',7,340,380,280,'Druvatare','5:00 PM','kannada',400);
INSERT INTO TheatreList VALUES('SRS','Hubbali',4,300,280,350,'Yajamana','8:00 PM','kannada',300);
INSERT INTO TheatreList VALUES('Bigcinemas','Dharwad',6,380,350,0,'Badavarascal','9:00 AM','Kannada',200);
INSERT INTO TheatreList VALUES('Esquare','Bidar',4,300,260,200,'Pailwan','7:00 PM','Kannada',290);
INSERT INTO TheatreList VALUES('PVR','Chikkmanguluru',6,320,300,250,'Ashique2','10:00 AM','Hindi',300);
INSERT INTO TheatreList VALUES('Cinipolis','Belgaum',4,500,490,400,'Sita Ramam','11:30 AM','Telagu',400);
INSERT INTO TheatreList VALUES('Sathyam','Gadag',6,250,240,190,'Vikram Vedam','11:35 AM','Telagu',200);

select * from theatreList;

 select dayofdate('2022-12-23');
 select dayofmonth('2022-04-13')as day;
 select datedidff('2022-12-24', '2022-11-20');
 select dayname('2000-11-20');
 
 select quarter('2022-12-23');
 select adddate('2022-12-21',interval 5 day);
select adddate('2022-12-23 08:40:59', interval -5 Minute);
 select adddate('2022-12-21',interval 5 week);
 select adddate('2022-12-21',interval 5 month);
 select adddate('2022-12-21',interval 5 Quarter);
 select adddate('2022-12-21',interval -50 year);
 select adddate('2022-12-21',interval 5 year);






