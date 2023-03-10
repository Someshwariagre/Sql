
CREATE DATABASE Details;
CREATE TABLE College_details(Collegename VARCHAR(40), Place VARCHAR(40), Type VARCHAR(40), Code VARCHAR(30), Aided VARCHAR(40), Unaided varchar(30), Principlename varchar(30), CETCollegefees int, MANAGEMENTCollegefees int); 
DESC College_details;

INSERT INTO College_details VALUES('PDA', 'Gulbarga', 'Degree', '031', 'yes','yes','Kalashetty', 38000, 100000, 'Karnataka'); 
INSERT INTO College_details VALUES('BKIT', 'bhalki', 'Degree', '041', 'no','yes','Rudreshwar', 40000, 200000, 'Karnataka'); 
INSERT INTO College_details VALUES('MPU', 'Belgavi', 'PUC', '021', 'no','yes','Manjunath', 45000, 75000, 'Andrapradesh'); 
INSERT INTO College_details VALUES('CB', 'Bidar', 'Degree', '041', 'yes','yes','Veeresh', 50000, 400000, 'Tamilnadu'); 
INSERT INTO College_details VALUES('KLE', 'Belguam', 'Degree', '097', 'no','yes','Sakshi', 100000, 400000,'Karnataka');
INSERT INTO College_details VALUES('Sarvodaya', 'Humanabad', 'Degree', '087', 'no','yes','Sampatti', 65000, 400000,'Karnataka');
INSERT INTO College_details VALUES('Gogate', 'Belgaum', 'Degree', '987', 'no','yes','Gangadhar', 20000, 700000,'Andrapradesh');
INSERT INTO College_details VALUES('Shetty', 'Gulabarga', 'Degree', '453', 'yes','yes','Smita', 98000, 500000,'Tamilnadu');
INSERT INTO College_details VALUES('Mukatambika', 'Gulabraga', 'PUC', '087', 'no','yes','Santosh', 45000,500000,'Karnataka');
INSERT INTO College_details VALUES('JNMC', 'Belgaum', 'Medical', '087', 'yes','yes','Aishwrya', 300000, 300000,'Karnataka');
COMMIT;
SELECT *FROM College_details;
UPDATE college_details SET  Type = Engineering where College_name = 'PDA' and Type = Medical;

SELECT Collegename FROM college_details WHERE Collegename = 'BKIT' or code = 041;
SELECT *FROM college_details where name in('JNMC','Muktambika');
UPDATE college_details SET Type = 'M' WHERE Collegename in('JNMC','Muktambika');

SELECT *FROM college_details where Collegename not in('JNMC','Muktambika');
rollback;

SELECT * FROM college_details order by Collegename;
SELECT * FROM college_details order by Collegename DESC;
ALTER TABLE college_details ADD COLUMN State VARCHAR(20);
INSERT INTO college_details value(Karnataka);
select * From college_details;

SELECT UPPER(Collegename) as Converted from college_details;
SELECT LOWER(Collegename) as Converted from college_details;

SELECT CONCAT('XWORKZ', 'ODC') AS MERGE;
SELECT LENGTH(Place) FROM college_details ORDER BY ID DESC;
SELECT INSTR('SOMESHWARI', 'R') AS POSITION;
SELECT INSTR('Aided', 'S'), LOCATION FROM college_details;
SELECT SUBSTR('Muktambika',3,6) AS SUBSTR;
SELECT LTRIM('       SMITA') AS REMOVE;
SELECT RTRIM('SMITA       ') AS REMOVE;
SELECT RTRIM(LTRIM(TYPE)) AS REMOVE;

select * FROM college_details;
SELECT CONCAT('Place', 'Type') AS MERGE;
SELECT LENGTH(Collegename) FROM college_details ORDER BY ID DESC;
SELECT INSTR(Place, 'l') AS POSITION;
SELECT INSTR(Aided, 'S')  FROM college_details;
SELECT SUBSTR('Principlename',3,6) AS SUBSTR;
SELECT LTRIM('       Somu') AS REMOVE;
SELECT RTRIM('Somu       ') AS REMOVE;
SELECT RTRIM(LTRIM(TYPE)) AS REMOVE;


SELECT COUNT(Place) from college_details;
SELECT COUNT(Collegename) from college_details;
SELECT COUNT(Type) from college_details;

SELECT SUM(Code) from college_details;
SELECT SUM(CETCollegefees) from college_details;
SELECT SUM(MANAGEMENTCollegefees) from college_details;

Select MIN(CETCollegefees) From college_details;
Select MIN(MANAGEMENTCollegefees) From college_details;
Select MIN(Code) From college_details;

select MAX(MANAGEMENTCollegefees) from college_details;
select MAX(CETCollegefees) from college_details;
select MAX(Code) from college_details;

SELECT AVG(Code) from college_details;
SELECT AVG(CETCollegefees) from college_details;
SELECT AVG(MANAGEMENTCollegefees) from college_details;

ALTER TABLE college_details MODIFY COLUMN Collegename VARCHAR(40);
ALTER TABLE college_details MODIFY COLUMN Code int(40);
DESC college_details;
ALTER TABLE college_details MODIFY COLUMN CETCollegefees VARCHAR(40);
DESC college_details;






