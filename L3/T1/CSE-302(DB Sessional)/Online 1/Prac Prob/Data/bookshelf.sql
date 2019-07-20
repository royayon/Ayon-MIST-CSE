INSERT into bookshelf (Shelf_id, Shelf_name, Shelf_topic, last_updated, shelf_location) values('S_001', 'Bangla Bhubon', 'Bengali Literature',to_date('3-MAR-2016','DD-MON-YYYY'), 'Third Floor');
INSERT into bookshelf (Shelf_id, Shelf_name, Shelf_topic, last_updated, shelf_location) values('S_002', 'Forashi Duniya', 'French Literature',to_date('13-Dec-2014','DD-MON-YYYY'), 'Second Floor');
INSERT into bookshelf (Shelf_id, Shelf_name, Shelf_topic, last_updated, shelf_location) values('S_003', 'English Books', 'English Literature',to_date('23-Dec-2012','DD-MON-YYYY'), 'Third Floor');
INSERT into bookshelf (Shelf_id, Shelf_name, Shelf_topic, last_updated, shelf_location) values('S_004', 'Itihasher Jogot', 'Historial Books',to_date('13-jan-2016','DD-MON-YYYY'), 'First Floor');
INSERT into bookshelf (Shelf_id, Shelf_name, Shelf_topic, last_updated, shelf_location) values('S_005', 'Arabian Nights', 'Arabian Story Book',to_date('13-feb-2016','DD-MON-YYYY'), 'First Floor');


CREATE TABLE bookshelf
(
Shelf_id VARCHAR2(20),
Shelf_name VARCHAR2(30),
Shelf_topic VARCHAR2(30),
last_updated DATE,
shelf_location VARCHAR2(20)
);