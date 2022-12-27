Create Table District_information(name varchar(30) unique, No_of_talukas varchar(30) not null, id int not null unique, population int not null, Total_area int primary key, District_code varchar(30), Availability_of_metro int not null, Speaciality varchar(30), DC_name varchar(30), pincode int);  
INSERT INTO  District_information values('Belgavi', '14', 1, 4779661, 13415,'BG', 'no', 'kunda', 'Nitesh patil','590001');
INSERT INTO  District_information values('Bagalkot', '17', 2, 1889752, 6575,'BK', 'no', 'Badami', 'SunilKumar','587101');   
INSERT INTO  District_information values('Bidar', '8', 3, 134563, 7685,'BDR', 'no', 'Gurunanak', 'Govind reddy','594101');   
INSERT INTO  District_information values('Gulbarga', '7', 4, 188952, 56432,'GLB', 'no', 'malpuri', 'Yashwant','585101');   
INSERT INTO  District_information values('Bellari', '11', 5, 2566326, 10951,'BL', 'no', 'Badami', 'PavanKumar','565102');   
INSERT INTO  District_information values('Davanagere', '12', 6, 134555, 76543,'DG', 'no', 'Benne Dose', 'Shivanand','576210');   
INSERT INTO  District_information values('Yadagiri', '13', 7, 176822, 8765,'YG', 'no', 'YadgiriGudda', 'Snehal','565102');   
INSERT INTO  District_information values('Mysore', '11', 8, 167543, 6563,'MSR', 'no', 'Dasara festival', 'Rajendra','345567');   
INSERT INTO  District_information values('Bengaluru', '09', 9, 165436, 9876,'BLR', 'yes', 'VidhanSoidha', 'Shrinivas','569876');   
INSERT INTO  District_information values('Raichur', '12', 10, 165779, 4563,'Rai', 'no', 'Mantralaya', 'Chandrashekar',589701);   
commit;
desc Taluka_information;
Create Table Taluka_information(name varchar(30) unique, No_of_hobalis varchar(30) not null, id int not null unique, population int not null, Total_area int primary key,  Taluk_code varchar(30), Availability_of_Multispeciality_hospital int not null,  pincode int, check(Total_area>=300), foreign key (Total_area) references District_information(Total_area));
ALTER TABLE Taluka_information MODIFY COLUMN Availability_of_Multispeciality_hospital varchar(40);

INSERT INTO  Taluka_information values('Athani', '05', 01, 35678, 13415,'AT', 'no', 59086);   
INSERT INTO  Taluka_information values('Chikkodi', '09', 02, 76353, 6575,'CK', 'yes', 58765);
INSERT INTO  Taluka_information values('Chitapur', '06', 03, 87365, 7685,'CT', 'yes', 3478);   
INSERT INTO  Taluka_information values('Raibhag', '07', 04, 93844, 56432,'rb', 'no', 585104);   
INSERT INTO  Taluka_information values('Gokak', '08', 05, 87346, 10951,'GK', 'no', 654352);   
INSERT INTO  Taluka_information values('ramdurga', '06', 06, 34635, 76543,'RD', 'yes', 987623);   
INSERT INTO  Taluka_information values('saoudatti', '08', 07, 83473, 8765,'SD', 'no', 37363);   
INSERT INTO  Taluka_information values('basavkalyan', '04', 08, 2733673, 6563,'BK', 'yes', 27734);   
INSERT INTO  Taluka_information values('sedam', '09', 09, 76353, 9876,'SD', 'yes', 09876);   
INSERT INTO  Taluka_information values('mudhol', '09', 10, 76353, 4563,'mud', 'no', 47736);   
   
Select * from   Taluka_information;
Select * from district_information where name = 'Belgavi';

select * from taluka_information where name='saoudatti';
select name from taluka_information where id = 03;

update taluka_information set name ='chittapura' where population=87365;
delete from taluka_information where population=76353;

rollback;

commit;

select * from taluka_information where name='chitapur' and No_of_hobalis=06;
select * from taluka_information where name='chitapur' and No_of_hobalis=09;

update taluka_information set name='soudatti' where name='saoudatti' and no_of_hobalis ='08'; 
update taluka_information set name='soudatti' where name='mudhol' and no_of_hobalis ='11'; 

select * from taluka_information where name='sedam' or population=87365;
select * from taluka_information where name='chitapur' or population=87365;

select*from taluka_information order by name;
select*from taluka_information order by No_of_hobalis;
select*from taluka_information order by Total_area;

select* from taluka_information name where Total_area in(7685);
select no_of_hobalis from taluka_information where name in('sedam');

select*from taluka_information population where name not in('sedam');
select taluk_code from taluka_information where name not in ('mudhol');
select name from taluka_information where name not in ('mudhol');

select*from taluka_information name where name between 'chikkodi' and 'sedam';
select*from taluka_information name where Total_area between 4563 and 6575;

select upper(name) as converted from taluka_information;
select upper(name) from taluka_information;

select lower(taluk_code) as converted from taluka_information;

select concat(name,taluk_code) as combined from taluka_information;

select length(name) as length from taluka_information;
select length(name) as length from taluka_information order by name desc;

select instr('chikkodi','i') name from taluka_information;
select instr('chikkodi','i') as str from taluka_information;

select instr(name,'s') name from taluka_information;

select substr('basavkalyan',1,5) from taluka_information;
select substr('basavkalyan',1,5) as str;

select ltrim('           banshankari')as devi;
select rtrim('yalahanka       ')as taluk;
select rtrim(ltrim('           soudatti           '))as Yellamma;

select count(*) from taluka_information;
select count(name) from taluka_information;

select sum(Total_area) from taluka_information;
select sum(No_of_hobalis) from taluka_information;

select max(Total_area) from taluka_information;
select min(no_of_hobalis) from taluka_information; 

select avg(total_area) from taluka_information;



 select dayofdate('2022-12-23');

 select dayofmonth('2022-04-13')as day;
 
 select datediff('2022-12-24', '2022-11-20');
 
 select dayname('2000-11-20');

 select quarter('2022-12-23');
 
 select adddate('2022-12-21',interval 5 day);
 
select adddate('2022-12-23 08:40:59', interval -5 Minute);

 select adddate('2022-12-21',interval 5 week);
 
 select adddate('2022-12-21',interval 5 month);
 
 select adddate('2022-12-21',interval 5 Quarter);
 
 select adddate('2022-12-21',interval -50 year);
 
 select adddate('2022-12-21',interval 5 year);
 select dayname('2000-07-14');
select dayname('2001-02-04');
select dayname('1998-08-01');
select dayname('1997-04-05');
select dayname('2001-03-24');
select dayname('2000-11-18');
select dayname('1999-11-26');
