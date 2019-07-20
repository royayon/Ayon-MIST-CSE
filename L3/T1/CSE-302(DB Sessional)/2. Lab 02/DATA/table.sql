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