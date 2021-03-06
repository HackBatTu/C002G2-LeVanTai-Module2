drop database case_study;
create database case_study;
use case_study;
create table location (
id_location int auto_increment primary key,
name_location varchar(255),
`status` bit(1) default 0);
create table levels (
id_levels int auto_increment primary key,
name_levels varchar(255),
`status` bit(1) default 0);
create table part(
id_part int auto_increment primary key,
name_part varchar(255),
`status` bit(1) default 0);
create table employee (
id_employee int auto_increment primary key,
name_employee varchar(255),
date_employee date,
id_card varchar(255),
salary double,
phone varchar(255),
email varchar(255),
address varchar(255),
id_location int,
id_levels int,
id_part int,
foreign key(id_location) REFERENCES location(id_location),
foreign key(id_levels) references levels(id_levels),
foreign key (id_part) references part(id_part),
`status` bit(1) default 0
);
create table customer_type(
id_customer_type int auto_increment primary key,
name_customer_type varchar(255),
`status` bit(1) default 0);
create table customer(
id_customer int auto_increment primary key,
id_customer_type int,
foreign key(id_customer_type) references customer_type(id_customer_type),
name_customer varchar(255),
date_customer date,
gender bit(1),
id_card varchar(255),
phone varchar(255),
email varchar(255),
address varchar(255),
`status` bit(1) default 0);
create table rental_type(
id_rental_type int auto_increment primary key,
name_rental_type varchar(255),
`status` bit(1) default 0);
create table type_service(
id_type_service int auto_increment primary key,
name_type_service varchar(255),
`status` bit(1) default 0);
create table service(
id_service int auto_increment primary key,
name_service varchar(255),
area_service int,
cost_service double,
max_person int,
room_standard varchar(255),
another_convenient varchar(255),
pool_area double,
number_of_floors int,
id_rental_type int,
foreign key(id_rental_type) references rental_type(id_rental_type),
id_type_service int,
foreign key(id_type_service) references type_service(id_type_service),
`status` bit(1) default 0
);
create table accompani_service(
id_accompani_service int auto_increment primary key,
name_accompani_service varchar(255),
prince double,
unit varchar(255),
`status` varchar(255));
create table contract (
id_contract int auto_increment primary key,
date_check_in datetime,
date_check_out datetime,
money_check_in double,
id_employee int,
id_customer int,
id_service int,
foreign key(id_employee) references employee(id_employee),
foreign key(id_customer) references customer(id_customer),
foreign key(id_service) references service(id_service),
`status` bit(1) default 0);
create table details_contract(
id_details_contract int auto_increment primary key,
id_contract int,
foreign key(id_contract) references contract(id_contract),
id_accompani_service int,
foreign key(id_accompani_service) references accompani_service(id_accompani_service),
number_contract int,
`status` bit(1) default 0);

insert into location(id_location,name_location)
value (1,'Qu???n L??'),(2,'Nh??n Vi??n');

insert into levels(id_levels,name_levels)
value (1,'Trung C???p'),(2,'Cao ?????ng'),(3,'?????i H???c'),(4,'Sau ?????i H???c');

insert into part(id_part,name_part)
value (1,'Sale-Marketing'),(2,'H??nh Ch??nh'),(3,'Ph???c v???'),(4,'Qu???n l??');

insert into employee(id_employee,name_employee,date_employee,id_card,salary,phone,email,address,id_location,id_levels,id_part)
value 
(1,'Nguy???n V??n An','1970-11-07','456231786',10000000,0901234121,'annguyen@gmail.com','295 Nguy???n T???t Th??nh,???? N???ng',1,3,1),
(2,'L?? V??n B??nh','1997-04-09','654231234',7000000,0934212314,'binhlv@gmail.com','22 Y??n B??i, ???? N???ng',1,2,2),
(3,'H??? Th??? Y???n','1995-12-12','999231723',14000000,0412352315,'thiyen@gmail.com','K234/11 ??i???n Bi??n Ph???,Gia Lai',1,3,2),
(4,'V?? C??ng To???n','1980-04-04','123231365',17000000,0374443232,'toan0404@gmail.com','77 Ho??ng Di???u,Qu???ng Tr???',1,4,4),
(5,'Nguy???n B???nh Ph??t','1999-12-09','454363232',6000000,0902341231,'phatphat@gmail.com','43 Y??n B??i,???? N???ng',2,1,1),
(6,'Kh??c Nguy???n An Nghi','2000-11-08','964542311',7000000,0978653213,'annghi20@gmail.com','294 Nguy???n T???t Th??nh,???? N???ng',2,2,3),
(7,'Nguy???n H???u H??','1993-01-01','534323231',8000000,0941234553,'nhh0101@gmail.com','4 Nguy???n Ch?? Thanh,Hu???',2,3,2),
(8,'Nguy???n H?? ????ng','1989-09-03','234414123',9000000,0642123111,'donghanguyen@gmail.com','111 H??ng V????ng,H?? N???i',2,4,4),
(9,'T??ng Hoang','1982-09-03','256781231',6000000,0245144444,'hoangtong@gmail.com','213 H??m Nghi, ???? N???ng',2,4,4),
(10,'Nguy???n C??ng ?????o','1994-01-08','755434343',8000000,0988767111,'nguyencongdao12@gmail.com','6 Ho?? Kh??nh,?????ng Nai',2,3,2);

insert into customer_type(id_customer_type,name_customer_type)
value (1,'Diamond'),(2,'Platinium'),(3,'Gold'),(4,'Silver'),(5,'Member');

insert into customer(id_customer,id_customer_type,name_customer,date_customer,gender,id_card,phone,email,address)
value (1,5,'Nguy???n Th??? H??o','1970-11-07',0,'643431213','0945423362','thihao07@gmail.com','23 Nguy???n Ho??ng,???? N???ng'),	
	(2,3,'Ph???m Xu??n Di???u','1992-08-08',1,'865342123','0954333333','xuandieu92@gmail.com','K77/22 Th??i Phi??n,Qu???ng Tr???'),
	(3,1,'Tr????ng ????nh Ngh???','1990-02-27',1,'488645199','0373213122','nghenhan2702@gmail.com','K323/12 ??ng ??ch Khi??m, Vinh'),
	(4,1,'D????ng V??n Quan','1981-07-08',1,'543432111','0490039241','duongquan@gmail.com','K453/12 L?? L???i, ???? N???ng'),
	(5,4,'Ho??ng Tr???n Nhi Nhi','1995-12-09',0,'795453345','0312345678','nhinhi123@gmail.com','224 L?? Th??i T???,Gia Lai'),
	(6,4,'T??n N??? M???c Ch??u','2005-12-06',0,'732434215','0988888844','tonnuchau@gmail.com','37 Y??n Th???,???? N???ng'),
	(7,1,'Nguy???n M??? Kim','1984-04-08',0,'856453123','0912345698','kimcuong84@gmail.com','K123/45 L?? L???i,H??? Ch?? Minh'),
	(8,3,'Nguy???n Th??? H??o','1999-04-08',0,'965656433','0763212345','haohao99@gmail.com','55 Nguy???n V??n Linh,Kon Tum'),
	(9,1,'Tr???n ?????i Danh','1994-07-01',1,'432341235','0643343433','danhhai99@gmail.com','24 L?? Th?????ng Ki???t Qu???ng Ng??i'),
	(10,2,'Nguy???n T??m ?????c','1989-07-01',1,'344343432','0987654321','dactam@gmail.com','22 Ng?? Quy???n, ???? N???ng');
    
insert into rental_type(id_rental_type,name_rental_type)
value (1,'year'),(2,'month'),(3,'day'),(4,'hour');

insert into type_service(id_type_service,name_type_service)
value (1,'Villa'),(2,'House'),(3,'Room');

insert into service(id_service,name_service,area_service,cost_service,max_person,room_standard,another_convenient,pool_area,number_of_floors,id_rental_type,id_type_service)
value (	1,'Villa Beach Front',25000,10000000,10,'vip','C?? h??? b??i',500,4,3,1),
	(2,'House Princess 01',	14000,5000000,7,'vip','C?? th??m b???p n?????ng',null,3,2,2),
	(3,'Room Twin 01',5000,1000000,2,'normal','C?? tivi',null,null,4,3),
	(4,'Villa No Beach Front',22000,9000000,8,'normal','C?? h??? b??i',300,3,3,1),
	(5,'House Princess 02',10000,4000000,5,'normal','C?? th??m b???p n?????ng',null,2,3,2),
	(6,'Room Twin 02',3000,900000,2,'normal','C?? tivi',null,null,4,3);
    
insert into accompani_service(id_accompani_service,name_accompani_service,prince,unit,`status`)
value (1,'Karaoke',10000,'gi???','ti???n nghi,hi???n t???i'),
	(2,'Thu?? xe m??y',10000,'chi???c','h???ng 1 xe'),
	(3,'Thu?? xe ?????p',20000,'chi???c','t???t'),
	(4,'Buffet bu???i s??ng',15000,'su???t','?????y ????? ????? ??n,tr??ng mi???ng'),
	(5,'Buffet bu???i tr??a',90000,'su???t','?????y ????? ????? ??n,tr??ng mi???ng'),
	(6,'Buffet bu???i t???i',16000,'su???t','?????y ????? ????? ??n,tr??ng mi???ng');
    
insert into contract(id_contract,date_check_in,date_check_out,money_check_in,id_employee,id_customer,id_service)
value (1,'2020-12-08','2020-12-08',0,3,1,3),
(2,'2020-07-14','2020-07-21',200000,7,3,1),
(3,'2021-03-15','2021-03-17',50000,3,4,2),
(4,'2021-01-14','2021-01-18',100000,7,5,5),
(5,'2021-07-14','2021-07-15',0,7,2,6),
(6,'2021-06-01','2021-06-03',0,7,7,6),
(7,'2021-09-02','2021-09-05',100000,7,4,4),
(8,'2021-06-17','2021-06-18',150000,3,4,1),
(9,'2020-11-19','2020-11-19',0,3,4,3),
(10,'2021-04-12','2021-04-14',0,10,3,5),
(11,'2021-04-25','2021-04-25',0,2,2,1),
(12,'2021-05-25','2021-05-27',0,7,10,1);

insert into details_contract(id_details_contract,id_contract,id_accompani_service,number_contract)
value (1,2,4,5),(2,2,5,8),(3,2,6,15),(4,3,1,1),
(5,3,2,11),(6,3,1,1),(7,1,2,2),(8,12,2,2);