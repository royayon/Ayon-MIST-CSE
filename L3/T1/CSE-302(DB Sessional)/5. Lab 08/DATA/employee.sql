
CREATE TABLE EMPLOYEE
(
Employee_ID VARCHAR2(40),
Employee_Name VARCHAR2(10),
Employee_dob DATE,
EMPLOYEE_street VARCHAR2(40),
Employee_City VARCHAR2(30),
Employee_Joining_date DATE,
Salary NUMBER,
Reports_To VARCHAR2(40)

);



Insert into Employee values('E00000000001','E_A',TO_DATE('11-JAN-1982','DD-MON-YYYY'),'e_street_006', 'e_city_001',TO_DATE('11-JAN-2005','DD-MON-YYYY'),5000,'');
Insert into Employee values('E00000000002','E_B',TO_DATE('22-JAN-1958','DD-MON-YYYY'),'e_street_005', 'e_city_002',TO_DATE('11-JAN-2005','DD-MON-YYYY'),2850,'E00000000001');
Insert into Employee values('E00000000003','E_C',TO_DATE('23-FEB-1962','DD-MON-YYYY'),'e_street_007', 'e_city_003',TO_DATE('11-JAN-2005','DD-MON-YYYY'),2000,'E00000000001');
Insert into Employee values('E00000000004','E_D',TO_DATE('24-FEB-1964','DD-MON-YYYY'),'e_street_004', 'e_city_004',TO_DATE('11-JAN-2005','DD-MON-YYYY'),5300,'E00000000001');
Insert into Employee values('E00000000005','E_E',TO_DATE('25-OCT-1956','DD-MON-YYYY'),'e_street_004', 'e_city_005',TO_DATE('11-JAN-2005','DD-MON-YYYY'),6500,'E00000000001');
Insert into Employee values('E00000000006','E_F',TO_DATE('26-NOV-1982','DD-MON-YYYY'),'e_street_003', 'e_city_006',TO_DATE('11-JAN-2005','DD-MON-YYYY'),1700,'E00000000007');
Insert into Employee values('E00000000007','E_G',TO_DATE('27-DEC-1975','DD-MON-YYYY'),'e_street_002', 'e_city_007',TO_DATE('11-JAN-2005','DD-MON-YYYY'),9000,'');
Insert into Employee values('E00000000008','E_H',TO_DATE('28-MAR-1978','DD-MON-YYYY'),'e_street_002', 'e_city_008',TO_DATE('11-JAN-2005','DD-MON-YYYY'),5000,'E00000000007');
Insert into Employee values('E00000000009','E_I',TO_DATE('27-MAR-1974','DD-MON-YYYY'),'e_street_001', 'e_city_009',TO_DATE('11-JAN-2005','DD-MON-YYYY'),4000,'E00000000007');
Insert into Employee values('E00000000010','E_J',TO_DATE('21-APR-1956','DD-MON-YYYY'),'e_street_018', 'e_city_010',TO_DATE('11-JAN-2005','DD-MON-YYYY'),5600,'E00000000007');
Insert into Employee values('E00000000011','E_K',TO_DATE('21-APR-1974','DD-MON-YYYY'),'e_street_017', 'e_city_001',TO_DATE('11-JAN-2005','DD-MON-YYYY'),1400,'E00000000007');
Insert into Employee values('E00000000012','E_L',TO_DATE('19-APR-1979','DD-MON-YYYY'),'e_street_016', 'e_city_002',TO_DATE('11-JAN-2005','DD-MON-YYYY'),5600,'E00000000008');
Insert into Employee values('E00000000013','E_M',TO_DATE('29-APR-1974','DD-MON-YYYY'),'e_street_015', 'e_city_003',TO_DATE('11-JAN-2005','DD-MON-YYYY'),9900,'E00000000008');
Insert into Employee values('E00000000014','E_N',TO_DATE('18-MAY-1976','DD-MON-YYYY'),'e_street_014', 'e_city_004',TO_DATE('11-JAN-2005','DD-MON-YYYY'),1000,'');
Insert into Employee values('E00000000015','E_O',TO_DATE('17-MAY-1973','DD-MON-YYYY'),'e_street_013', 'e_city_005',TO_DATE('11-JAN-2005','DD-MON-YYYY'),5000,'E00000000014');
Insert into Employee values('E00000000016','E_P',TO_DATE('14-MAY-1982','DD-MON-YYYY'),'e_street_012', 'e_city_006',TO_DATE('11-JAN-2005','DD-MON-YYYY'),2200,'E00000000014');
Insert into Employee values('E00000000017','E_Q',TO_DATE('11-MAY-1980','DD-MON-YYYY'),'e_street_011', 'e_city_007',TO_DATE('11-JAN-2005','DD-MON-YYYY'),3500,'E00000000014');
Insert into Employee values('E00000000018','E_R',TO_DATE('23-JUN-1982','DD-MON-YYYY'),'e_street_010', 'e_city_008',TO_DATE('11-JAN-2005','DD-MON-YYYY'),1500,'E00000000014');
Insert into Employee values('E00000000019','E_S',TO_DATE('26-JUN-1981','DD-MON-YYYY'),'e_street_009', 'e_city_009',TO_DATE('11-JAN-2005','DD-MON-YYYY'),4000,'E00000000014');
Insert into Employee values('E00000000020','E_T',TO_DATE('22-JUN-1981','DD-MON-YYYY'),'e_street_008', 'e_city_010',TO_DATE('11-JAN-2005','DD-MON-YYYY'),7900,'E00000000014');
Insert into Employee values('E00000000021','E_U',TO_DATE('27-JUL-1981','DD-MON-YYYY'),'e_street_007', 'e_city_001',TO_DATE('11-JAN-2005','DD-MON-YYYY'),5000,'E00000000014');
Insert into Employee values('E00000000022','E_V',TO_DATE('24-JUL-1974','DD-MON-YYYY'),'e_street_006', 'e_city_002',TO_DATE('11-JAN-2005','DD-MON-YYYY'),5700,'E00000000014');
Insert into Employee values('E00000000023','E_W',TO_DATE('15-AUG-1977','DD-MON-YYYY'),'e_street_005', 'e_city_003',TO_DATE('11-JAN-2005','DD-MON-YYYY'),5400,'E00000000026');
Insert into Employee values('E00000000024','E_X',TO_DATE('17-AUG-1978','DD-MON-YYYY'),'e_street_004', 'e_city_004',TO_DATE('11-JAN-2005','DD-MON-YYYY'),4000,'E00000000014');
Insert into Employee values('E00000000025','E_Y',TO_DATE('20-SEP-1979','DD-MON-YYYY'),'e_street_003', 'e_city_005',TO_DATE('11-JAN-2005','DD-MON-YYYY'),6600,'E00000000026');
Insert into Employee values('E00000000026','E_Z',TO_DATE('01-SEP-1972','DD-MON-YYYY'),'e_street_001', 'e_city_006',TO_DATE('11-JAN-2005','DD-MON-YYYY'),1500,'');

