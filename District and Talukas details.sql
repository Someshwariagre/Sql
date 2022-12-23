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
INSERT INTO  Taluka_information values('Chikkodi', '09', 02, 76353, 6675,'CK', 'yes', 58765);
INSERT INTO  Taluka_information values('Chitapur', '06', 03, 87365, 7685,'CT', 'yes', 3478);   
INSERT INTO  Taluka_information values('Raibhag', '07', 04, 93844, 56432,'rb', 'no', 585104);   
INSERT INTO  Taluka_information values('Gokak', '08', 05, 87346, 10951,'GK', 'no', 654352);   
INSERT INTO  Taluka_information values('ramdurga', '06', 06, 34635, 76543,'RD', 'yes', 987623);   
INSERT INTO  Taluka_information values('saoudatti', '08', 07, 83473, 8765,'SD', 'no', 37363);   
INSERT INTO  Taluka_information values('basavkalyan', '04', 08, 2733673, 6563,'BK', 'yes', 27734);   
INSERT INTO  Taluka_information values('sedam', '09', 09, 76353, 9876,'SD', 'yes', 09876);   
INSERT INTO  Taluka_information values('mudhol', '09', 10, 76353, 4563,'mud', 'no', 47736);   
   
Select * from   Taluka_information;

