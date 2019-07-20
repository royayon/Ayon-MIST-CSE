INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_001', 'Copotronik Sukh Dukho', 350, 'Science Fiction');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_002', 'Nondito Noroke', 450, 'Novel');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_003', 'Neera', 350, 'Poetry');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_004', 'Neel Moyurer Joubon',500, 'Novel');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_005', 'Aguner Poroshmoni',250, 'Novel');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_006', 'Essais', 850, 'Literature');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_007', 'Pride and Prejudice', 650, 'Novel');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_008', 'The Castle of Otranto', 500, 'Novel');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_009', 'The Stranger', 480, 'Poetry');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_010', 'The Black Presidency', 400, 'Historial Book');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_011', 'Desher Bamon', 350, 'Poetry');
INSERT into books (Book_code, Book_title, Book_price, Book_category) values('B_012', 'Megher Agomon', 350, 'Novel');

CREATE TABLE books
(
Book_code VARCHAR2(20),
Book_title VARCHAR2(80),
Book_price NUMBER,
Book_category VARCHAR2(20)
);