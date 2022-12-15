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







