CREATE TABLE Bank_info(id int not null, b_name varchar(40) unique not null, b_id int not null, no_of_customers int not null, 
loan_status varchar(30) default 'ACTIVE',location varchar(30) not null);

insert into bank_info values(1,'SBI',501,100,'ACTIVE','kalaburagi');
insert into bank_info values(2,'ICICI',502,150,'ACTIVE','Banglore');
insert into bank_info values(3,'CANARA',503,100,'ACTIVE','Mysore');
insert into bank_info values(4,'KARNATAKA',504,200,'ACTIVE','Bidar');
insert into bank_info values(5,'KRUSHNA',505,400,'ACTIVE','Hasan');
insert into bank_info values(6,'KOTAK',506,350,'ACTIVE','Hubbli');
insert into bank_info values(7,'AXIS',507,250,'ACTIVE','Shivamogga');
insert into bank_info values(8,'SYNDICATE',508,100,'ACTIVE','Manglore');
insert into bank_info values(9,'YES',509,100,'ACTIVE','Ballari');
insert into bank_info values(10,'RBS',510,100,'ACTIVE','Belgaum');

select*from bank_info;

CREATE TABLE cust_info(id int not null, c_name varchar(30) not null, balance bigint not null,c_id int not null, b_id int not null, 
c_location varchar(30));

insert into cust_info values(1,'saraswati',5065245,701,505,'Hasan');
insert into cust_info values(2,'vani',10245630,702,501,'Kalaburagi');
insert into cust_info values(3,'mahesh',84563221,703,504,'Bidar');
insert into cust_info values(4,'pooja',2000000,704,516,'Koppal');
insert into cust_info values(5,'raj',8000000,705,509,'Ballari');
insert into cust_info values(6,'spoorthi',7000000,706,506,'Hubbli');
insert into cust_info values(7,'kavya',8400000,707,610,'Bidar');
insert into cust_info values(8,'megha',4000000,708,502,'Banglore');
insert into cust_info values(9,'vishal',23600000,709,350,'Hasan');
insert into cust_info values(10,'divya',100000,710,507,'Sivamogga');

select*from cust_info;


CREATE TABLE loan_info(id int not null, loan_type varchar(40), loan_amount bigint not null, c_id int not null);
insert into loan_info values(1,'goldloan',500000,705);
insert into loan_info values(2,'vehicleloan',2000000,701);
insert into loan_info values(3,'homeloan',2200000,710);
insert into loan_info values(4,'educationloan',500000,703);
insert into loan_info values(5,'personalloan',100000,702);
insert into loan_info values(6,'businesloan',1000000,810);
insert into loan_info values(7,'agricultural',800000,708);
insert into loan_info values(8,'consumerloan',200000,570);
insert into loan_info values(9,'cashcreditloan',100000,706);
insert into loan_info values(10,'festivalloan',150000,690);

select*from loan_info;

select * from bank_info inner join cust_info on bank_info.b_id=cust_info.b_id;
select * from bank_info inner join cust_info on bank_info.b_id=cust_info.b_id inner join loan_info on cust_info.c_id=loan_info.c_id;

select * from bank_info left join cust_info on bank_info.b_id=cust_info.b_id;
select * from bank_info right join cust_info on bank_info.b_id=cust_info.b_id;

select * from cust_info left join loan_info on cust_info.c_id=loan_info.c_id;
select * from cust_info right join loan_info on cust_info.c_id=loan_info.c_id;
