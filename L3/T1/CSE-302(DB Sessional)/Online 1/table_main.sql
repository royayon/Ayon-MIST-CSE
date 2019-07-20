CREATE TABLE Doctor
(
	Doc_id VARCHAR2(20),
	Name VARCHAR2(40),
	Speciality VARCHAR2(50),
	Email VARCHAR2(40),
	Phone VARCHAR2(15),
	Date_of_birth DATE,
	Joining_date DATE,
	Department VARCHAR2(40),
	Assistant_of VARCHAR2(20)
);    

CREATE TABLE Treats_the_Admitted
(
	Doc_id VARCHAR2(20),
	Admission_id VARCHAR2(20)
); 

CREATE TABLE Admission
(
	Admission_id VARCHAR2(20),
	Admission_reason VARCHAR2 (50),
	Admission_date DATE,
	Release_date DATE,
	Room_no NUMBER,
	Admission_fees NUMBER
); 

CREATE TABLE Admitted_Patient
(
	Patient_id VARCHAR2(20),
	Admission_id VARCHAR2(20)
);   

CREATE TABLE Patient
(
	Patient_id VARCHAR2(20),
	Name VARCHAR2(40),
	Gender VARCHAR2(10),
	Blood_group VARCHAR2(10),
	Date_of_birth DATE,
	Nationality VARCHAR2(20),
	Email VARCHAR2(40),
	Phone VARCHAR2(15)
);  

CREATE TABLE Admitted_Patient_Record
(
	Admission_id VARCHAR2(20),
	Record_date DATE,
	Blood_Pressure VARCHAR2(20),
	Blood_Sugar VARCHAR2(40),
	Weight NUMBER,
	Height NUMBER
);


CREATE TABLE Admitted_Patient_Operation
(
	Admission_id VARCHAR2(20),
	Operation_id VARCHAR2(20),
	Operation_date DATE
);
   
CREATE TABLE Operation
(
	Operation_id VARCHAR2 (20),
	Operation_name VARCHAR2 (30),
	Operation_date DATE,
	Operation_room VARCHAR2(20),
	Operation_result VARCHAR2(30)
); 

CREATE TABLE Performed_By
(
	Doc_id VARCHAR2 (20),
	Operation_id VARCHAR2 (20),
	Operation_date DATE
); 
