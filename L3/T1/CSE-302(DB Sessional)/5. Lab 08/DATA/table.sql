Create table Customer
(
	Cust_id 	VARCHAR2(12)  NOT NULL PRIMARY KEY,
	Cust_name	VARCHAR2(12),
	Cust_dob	DATE,
	Cust_street	VARCHAR2(12),
	Cust_city	VARCHAR2(12)
);

Create table Account
(
	Account_id 	VARCHAR2(12)  NOT NULL,
	Balance		NUMBER(20,5),
	Type		VARCHAR2(8)
);

Create table Depositor
(
	Cust_id 	VARCHAR2(12)  NOT NULL,
	Account_id	 VARCHAR2(12) NOT NULL
);

insert into customer values('C00000000001','Arnab',to_date('11-01-1982','DD-MM-YYYY'),'Hatirjhil','Dhaka');
insert into customer values('C00000000002','Sanjida',to_date('22-01-1958','DD-MM-YYYY'),'Hajrapukur','Rajshahi');
insert into customer values('C00000000003','Fahim',to_date('23-02-1962','DD-MM-YYYY'),'Hatirjhil','Dhaka');
insert into customer values('C00000000004','Kona',to_date('24-02-1964','DD-MM-YYYY'),'Hajrapukur','Rajshahi');
insert into customer values('C00000000005','Afsana',to_date('25-10-1956','DD-MM-YYYY'),'Jhaotola','Potuakhali');
insert into customer values('C00000000006','Nabila',to_date('26-11-1982','DD-MM-YYYY'),'Ghosh Road','Khulna');
insert into customer values('C00000000007','Nawshin',to_date('27-12-1975','DD-MM-YYYY'),'Khalispur','Khulna');
insert into customer values('C00000000008','Maruf',to_date('28-02-1978','DD-MM-YYYY'),'Ferry Ghat','Potuakhali');
insert into customer values('C00000000009','Jahidul',to_date('27-03-1974','DD-MM-YYYY'),'Bakshiganj','Jamalpur');
insert into customer values('C00000000010','Ferdous',to_date('21-04-1956','DD-MM-YYYY'),'Bakshiganj','Jamalpur');
insert into customer values('C00000000011','Sazzad',to_date('21-04-1974','DD-MM-YYYY'),'Nobogram','Barisal');
insert into customer values('C00000000012','Amir',to_date('19-04-1979','DD-MM-YYYY'),'Nabab Road','Khulna');


insert into account values('A-101',500, 'CURRENT');
insert into account values('A-215',700, 'CURRENT');
insert into account values('A-102',400, 'CURRENT');
insert into account values('A-305',350, 'CURRENT');
insert into account values('A-201',900, 'CURRENT');
insert into account values('A-222',700, 'CURRENT');
insert into account values('A-217',750, 'CURRENT');


insert into depositor values('C00000000001','A-101');
insert into depositor values('C00000000002','A-215');
insert into depositor values('C00000000003','A-102');
insert into depositor values('C00000000004','A-305');
insert into depositor values('C00000000001','A-201');
insert into depositor values('C00000000005','A-217');
insert into depositor values('C00000000006','A-222');