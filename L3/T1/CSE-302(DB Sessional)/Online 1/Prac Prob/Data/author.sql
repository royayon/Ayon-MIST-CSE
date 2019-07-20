INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_001', 'Muhammed Zafar Iqbal', 'Novel',  to_date('23-Dec-1952','DD-MON-YYYY'), 120, 'Bangladesh');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_002', 'Munier Choudhury', 'Literature',  to_date('27-Nov-1925','DD-MON-YYYY'), 20, 'Bangladesh');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_003', 'Selina Hossain', 'Novel',  to_date('23-Dec-1952','DD-MON-YYYY'), 60, 'Bangladesh');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_004', 'Humayun Ahmed', 'Novel',  to_date('13-Nov-1948','DD-MON-YYYY'), 100, 'Bangladesh');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_005', 'Sunil Gangopadhyay', 'Poetry',  to_date('7-Sep-1934','DD-MON-YYYY'), 50, 'India');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_006', 'Michel de Montaigne', 'Literature',  to_date('28-February-1533','DD-MON-YYYY'), 60, 'France');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_007', 'Jane Austen', 'Novel',  to_date('6-Dec-1775','DD-MON-YYYY'), 20, 'England');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_008', 'Horace Walpole', 'Gothic fiction',  to_date('16-Dec-1764','DD-MON-YYYY'), 70, 'England');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_009', 'Michael Eric Dyson', 'Historical Affair',  to_date('23-Oct-1958','DD-MON-YYYY'), 50, 'USA');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_010', 'Orhan Pamuk', 'Novel',  to_date('27-Nov-1925','DD-MON-YYYY'), 50, 'Turkey');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_011', 'Albert Camus', 'History',  to_date('20-Nov-1975','DD-MON-YYYY'), 80, 'France');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_012', 'Jamuna Haque', 'Poetry',  to_date('22-Mar-1958','DD-MON-YYYY'), 59, 'Bangladesh');
INSERT into AUTHOR (author_id, author_name, writing_category, author_dob, published_book_no, country) values('A_013', 'Rokon Abdullah', 'Novel',  to_date('22-Apr-1965','DD-MON-YYYY'), 56, 'Bangladesh');

CREATE TABLE AUTHOR
(
author_id VARCHAR2(20),
author_name VARCHAR2(50),
writing_category VARCHAR2(20),
author_dob DATE,
published_book_no NUMBER,
country VARCHAR2(20)
);