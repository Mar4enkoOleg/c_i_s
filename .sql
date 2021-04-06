CREATE DATABASE cash;

CREATE TABLE cashier(
    id bigserial primary key,
    fullname varchar(50) not null,
    age integer,
    sex varchar(6) not null,
    yearofexp integer,
    workslnshift integer not null,
    previouswork varchar(50),
    workweekstandart boolean not null,
    cashregister_id integer
);

CREATE TABLE shop(
    id serial primary key,
    name varchar(50) not null,
    city varchar(50) not null,
    address varchar(50) not null
);

CREATE TABLE cashregister(
    id serial primary key,
    num integer not null,
    serialnum varchar(50),
    shop_id integer
);

ALTER TABLE cashier ADD FOREIGN KEY (cashregister_id) REFERENCES cashregister (id);
ALTER TABLE cashregister ADD FOREIGN KEY (shop_id) REFERENCES shop (id);

INSERT INTO shop (name, city, address) VALUES ('Ashan', 'Lviv', 'address1, dom1');
INSERT INTO shop (name, city, address) VALUES ('Ashan', 'Kiev', 'address2, dom2');
INSERT INTO shop (name, city, address) VALUES ('Silpo', 'Zaporogie', 'address3, dom3');
INSERT INTO shop (name, city, address) VALUES ('Silpo', 'Rivne', 'address4, dom4');
INSERT INTO shop (name, city, address) VALUES ('ATB', 'Ujgorod', 'address5, dom5');
INSERT INTO shop (name, city, address) VALUES ('ATB', 'Dnepr', 'address6, dom6');
INSERT INTO shop (name, city, address) VALUES ('Apelmon', 'Chernovtsy', 'address7, dom7');
INSERT INTO shop (name, city, address) VALUES ('Apelmon', 'Melitopol', 'address8, dom8');
INSERT INTO shop (name, city, address) VALUES ('Trash', 'Herson', 'address9, dom9');
INSERT INTO shop (name, city, address) VALUES ('Trash', 'Harkov', 'address10, dom10');
INSERT INTO shop (name, city, address) VALUES ('Varus', 'Kiev', 'address11, dom11');
INSERT INTO shop (name, city, address) VALUES ('Varus', 'Lviv', 'address12, dom12');
INSERT INTO shop (name, city, address) VALUES ('ATB', 'Lviv', 'address13, dom13');
INSERT INTO shop (name, city, address) VALUES ('ATB', 'Lviv', 'address14, dom14');
INSERT INTO shop (name, city, address) VALUES ('ATB', 'Lviv', 'address15, dom15');

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber1',1);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber2',1);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber3',1);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber4',1);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber5',1);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber6',1);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber7',2);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber8',2);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber9',2);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber10',2);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber11',2);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber12',2);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber13',3);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber14',3);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber15',3);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber16',3);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber17',3);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber18',3);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber19',4);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber20',4);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber21',4);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber22',4);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber23',4);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber24',4);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber25',5);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber26',5);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber27',5);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber28',5);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber29',5);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber30',5);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber31',6);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber32',6);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber33',6);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber34',6);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber35',6);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber36',6);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber37',7);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber38',7);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber39',7);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber40',7);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber41',7);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber42',7);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber43',8);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber44',8);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber45',8);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber46',8);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber47',8);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber48',8);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber49',9);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber50',9);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber51',9);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber52',9);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber53',9);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber54',9);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber55',10);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber56',10);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber57',10);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber58',10);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber59',10);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber60',10);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber61',11);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber62',11);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber63',11);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber64',11);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber65',11);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber66',11);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber67',12);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber68',12);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber69',12);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber70',12);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber71',12);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber72',12);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber73',13);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber74',13);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber75',13);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber76',13);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber77',13);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber78',13);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber79',14);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber80',14);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber81',14);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber82',14);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber83',14);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber84',14);

INSERT INTO cashregister (num, serialnum, shop_id) VALUES (1, 'serialnumber85',15);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (2, 'serialnumber86',15);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (3, 'serialnumber87',15);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (4, 'serialnumber88',15);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (5, 'serialnumber89',15);
INSERT INTO cashregister (num, serialnum, shop_id) VALUES (6, 'serialnumber90',15);

insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Addy Dallosso', 25, 'Male', null, 1, null, false, 82);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Tiff Karczinski', 39, 'Female', 11, 2, null, false, 77);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Fayina Flynn', 35, 'Male', 10, 1, null, false, 6);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Yuma Pingston', 55, 'Male', 3, 3, null, false, 29);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Rochelle Sandbrook', 30, 'Female', 12, 3, null, true, 7);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Nicolina Jacmard', 29, 'Female', null, 2, null, true, 28);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Hilliary Goddert.sf', 55, 'Male', 11, 2, null, true, 67);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Bianca Ivanishchev', 61, 'Male', 5, 3, null, true, 70);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Terry Maasze', 33, 'Male', null, 1, null, true, 22);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Bordie Happel', 38, 'Female', null, 1, null, true, 58);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Archibold Bulfoy', 24, 'Female', 5, 1, null, false, 41);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Elyssa Blemen', 27, 'Male', 14, 1, null, false, 10);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Stavro Mateiko', 55, 'Female', 15, 1, null, false, 48);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Calypso Jeannel', 50, 'Female', 3, 1, null, true, 67);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Stearn McTerlagh', 25, 'Male', 1, 1, null, false, 5);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Katleen Furmagier', 62, 'Female', 9, 1, null, false, 57);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Meris Le Moucheux', 21, 'Female', 12, 2, null, true, 67);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Travis Biggerdike', 59, 'Male', null, 1, null, false, 69);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Tasia Pomroy', 41, 'Male', 9, 1, null, false, 84);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Rici Cureton', 32, 'Male', 11, 2, null, false, 71);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Katine MacKim', 30, 'Female', 1, 1, null, true, 64);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Wileen Seago', 20, 'Male', 10, 3, null, true, 72);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Reynolds Chopy', 63, 'Male', 10, 2, null, false, 34);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Ivett Inkpen', 26, 'Female', 5, 1, null, true, 12);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Henrietta Kordes', 61, 'Female', 1, 1, null, true, 82);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Gabe Swatton', 24, 'Male', 4, 2, null, false, 57);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Paddie McClarence', 55, 'Male', 12, 2, null, false, 65);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Blinni Caesar', 53, 'Male', 3, 1, null, true, 56);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Dareen Barrim', 18, 'Male', 1, 3, null, false, 25);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Jarret Muschette', 44, 'Male', null, 2, null, true, 50);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Miles Rapin', 46, 'Female', 5, 1, null, false, 28);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Roselle Asty', 64, 'Female', null, 2, null, true, 66);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Fredelia Cucuzza', 50, 'Female', null, 2, null, true, 58);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Russell Elies', 55, 'Male', 7, 3, null, true, 24);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Lyn Ewin', 28, 'Female', null, 3, null, false, 28);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Aime McKee', 43, 'Male', 2, 1, null, true, 43);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Marleah Mazey', 20, 'Male', 15, 2, null, true, 90);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Marwin Juschka', 49, 'Female', 2, 1, null, false, 25);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Erin Du Barry', 50, 'Female', null, 2, null, false, 73);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Kym Quantrill', 34, 'Male', 7, 3, null, true, 59);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Odelinda Samwell', 27, 'Female', 14, 3, null, true, 5);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Scarlet Beckenham', 19, 'Female', 11, 3, null, false, 23);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Suzy Olerenshaw', 61, 'Male', null, 3, null, false, 77);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Binky Beades', 51, 'Male', 4, 1, null, true, 53);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Quill Skett', 61, 'Male', 12, 3, null, false, 10);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Milton Leafe', 64, 'Female', 1, 1, null, false, 18);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Dew Kinavan', 54, 'Male', 11, 3, null, false, 75);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Erinna Tomet', 35, 'Male', 7, 3, null, false, 21);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Hildegarde Fairfull', 24, 'Female', 6, 1, null, true, 19);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Anet Warre', 61, 'Female', 10, 1, null, true, 61);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Lars Whyteman', 52, 'Female', 11, 1, null, true, 56);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Marquita Lawrance', 63, 'Female', 9, 3, null, false, 86);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Fey Pady', 51, 'Female', 7, 2, null, true, 77);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Ruthy Waterman', 42, 'Male', null, 2, null, true, 42);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Quinta Rabley', 32, 'Male', 14, 3, null, true, 70);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Betty Denes', 55, 'Male', null, 3, null, true, 34);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Christopher Romand', 51, 'Female', 6, 3, null, true, 87);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Alick McGuffie', 48, 'Male', 12, 3, null, false, 64);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Wake Hufton', 27, 'Female', 3, 3, null, false, 35);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Kassia Lasselle', 31, 'Male', 4, 3, null, false, 11);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Demetris Danieli', 37, 'Female', 7, 2, null, false, 87);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Adrian Laurencot', 21, 'Female', null, 3, null, true, 90);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Laurianne Quoit', 26, 'Male', null, 3, null, true, 34);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Vanya Boncoeur', 25, 'Female', null, 3, null, true, 14);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Ethelind Furmagier', 63, 'Female', 6, 2, null, true, 3);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Arv Bolt', 29, 'Female', 9, 1, null, true, 84);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Missy Steinhammer', 27, 'Male', 4, 2, null, true, 79);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Dewitt Reiner', 58, 'Female', 12, 3, null, false, 1);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Sibilla Labitt', 30, 'Male', 3, 2, null, true, 4);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Kalvin Burkitt', 26, 'Male', 11, 1, null, false, 85);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Maye Lathy', 21, 'Female', 9, 1, null, true, 62);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Harry Upchurch', 50, 'Male', null, 2, null, true, 85);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Ewan Bothwell', 54, 'Male', 4, 1, null, true, 48);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Clark Minghetti', 33, 'Male', 12, 1, null, true, 12);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Alameda Jewson', 50, 'Male', 10, 3, null, false, 13);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Jarred Kull', 35, 'Male', null, 3, null, true, 33);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Ruperta Livick', 25, 'Female', null, 1, null, true, 24);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Bogey Marqyes', 23, 'Female', 11, 2, null, false, 51);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Hill Mattes', 22, 'Female', null, 3, null, true, 71);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Marysa Casswell', 41, 'Male', 2, 2, null, true, 28);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Ninnette Staynes', 37, 'Male', null, 2, null, false, 64);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Zarla Winspeare', 31, 'Male', 7, 1, null, true, 33);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Reena Pfaffel', 40, 'Female', 5, 3, null, true, 58);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Brocky Bode', 61, 'Female', null, 3, null, false, 24);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Maighdiln Ilyasov', 30, 'Female', null, 2, null, true, 56);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Honor Marns', 56, 'Female', 2, 3, null, true, 81);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Clifford Jiroutek', 49, 'Male', 11, 1, null, true, 46);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Joela Pelfer', 18, 'Female', 11, 3, null, false, 8);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Mandel Ratnege', 45, 'Female', null, 3, null, false, 89);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Colman McCrossan', 43, 'Male', 2, 3, null, false, 81);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Danny Mollindinia', 43, 'Female', 11, 2, null, false, 31);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Aldis Martinovsky', 52, 'Female', 2, 3, null, true, 62);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Dorene Trewin', 49, 'Female', null, 1, null, true, 46);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Ursulina Budleigh', 30, 'Female', 12, 2, null, false, 32);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Foss O''Lagen', 35, 'Female', 11, 3, null, false, 67);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Desdemona Harvie', 49, 'Male', null, 3, null, false, 44);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Davie Johann', 22, 'Female', 14, 1, null, false, 23);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Weidar Haliburton', 41, 'Female', 10, 2, null, true, 7);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Gwennie Shailer', 41, 'Female', 15, 2, null, true, 54);
insert into cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) values ('Corrine Newvell', 20, 'Male', 15, 3, null, true, 21);