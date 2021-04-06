CREATE DATABASE cash;

CREATE TABLE cashier(
    id bigserial primary key not null,
    fullname varchar(50) not null,
    age integer,
    sex varchar(6),
    phone varchar(20),
    previousework varchar(50),
    yearofexp integer,
    workslnshift integer,
    workweekstandart boolean,
    idshop integer,
    idcashreg integer
);

CREATE TABLE shop(
    id serial primary key not null,
    shopname varchar(50) not null,
    city varchar(50) not null,
    address varchar(50) not null
);

CREATE TABLE cashregister(
    id serial primary key not null,
    num integer not null,
    serialnum varchar(50)
);

ALTER TABLE cashier ADD FOREIGN KEY (idcashreg) REFERENCES cashregister (id);
ALTER TABLE cashier ADD FOREIGN KEY (idshop) REFERENCES shop (id);

INSERT INTO shop (shopname, city, address) VALUES ('Ashan', 'city1', 'address1');
INSERT INTO shop (shopname, city, address) VALUES ('Ashan', 'city2', 'address2');
INSERT INTO shop (shopname, city, address) VALUES ('Silpo', 'city3', 'address3');
INSERT INTO shop (shopname, city, address) VALUES ('Silpo', 'city4', 'address4');
INSERT INTO shop (shopname, city, address) VALUES ('ATB', 'city5', 'address5');
INSERT INTO shop (shopname, city, address) VALUES ('ATB', 'city6', 'address6');
INSERT INTO shop (shopname, city, address) VALUES ('Apelmon', 'city1', 'address7');
INSERT INTO shop (shopname, city, address) VALUES ('Apelmon', 'city2', 'address8');
INSERT INTO shop (shopname, city, address) VALUES ('Trash', 'city3', 'address9');
INSERT INTO shop (shopname, city, address) VALUES ('Trash', 'city4', 'address10');
INSERT INTO shop (shopname, city, address) VALUES ('Varus', 'city5', 'address11');
INSERT INTO shop (shopname, city, address) VALUES ('Varus', 'city6', 'address12');

INSERT INTO cashregister (num, serialnum) VALUES (1, 'serialnumber1');
INSERT INTO cashregister (num, serialnum) VALUES (2, 'serialnumber2');
INSERT INTO cashregister (num, serialnum) VALUES (3, 'serialnumber3');
INSERT INTO cashregister (num, serialnum) VALUES (4, 'serialnumber4');
INSERT INTO cashregister (num, serialnum) VALUES (5, 'serialnumber5');

insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Obed Schimank', 53, 'Female', '(209) 5614818', null, 1, 3, false, 9, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Audi Nannoni', 18, 'Female', '(282) 1339073', null, 5, 1, false, 1, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Yale Thomazin', 46, 'Female', '(653) 8193504', null, 1, 1, true, 8, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Ethelred Newiss', 27, 'Female', '(581) 9252693', null, 5, 1, false, 9, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Carline Theurer', 23, 'Male', '(742) 8038172', null, 4, 1, true, 5, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Leontyne Lillee', 56, 'Female', '(899) 1847730', null, 5, 2, false, 6, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Sylas McMickan', 19, 'Male', '(746) 1323234', 'Alphazap', null, 2, true, 3, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Everett Few', 38, 'Male', '(884) 7895424', null, 2, 1, true, 6, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Baldwin Kennaway', 47, 'Female', '(214) 1213201', null, 2, 3, false, 11, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Nertie Cawker', 35, 'Male', '(321) 5348438', null, 1, 3, true, 5, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Bee Tewkesbury', 29, 'Female', '(836) 2217336', null, 5, 3, true, 4, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Kate Barbe', 41, 'Male', '(235) 7553927', null, null, 2, false, 3, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Avictor Nott', 58, 'Male', '(714) 9981537', null, 2, 2, false, 6, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Joan Willoway', 38, 'Female', '(292) 6146759', 'Wrapsafe', 4, 1, false, 8, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Wenona Vaune', 23, 'Female', '(753) 7000159', null, 4, 2, true, 1, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Grady Frankish', 36, 'Male', '(602) 7789416', null, 5, 1, false, 5, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Latia McCamish', 59, 'Female', '(751) 7780057', null, 2, 2, true, 6, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Celia Hanselmann', 25, 'Male', '(523) 3043913', null, 3, 1, true, 8, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Seka McDermott-Row', 55, 'Female', '(206) 4607068', 'Lotlux', 1, 2, true, 1, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Claus Woodlands', 45, 'Male', '(181) 3619074', null, null, 1, true, 9, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Corrianne Coomes', 59, 'Male', '(649) 9647910', null, 1, 1, true, 7, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Leonid Prys', 49, 'Female', '(916) 7902282', null, 2, 1, true, 1, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Hannah Mayell', 47, 'Male', '(897) 8516775', null, 1, 2, false, 10, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Drusilla Woodings', 55, 'Male', '(900) 1009464', null, null, 1, true, 7, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Regine Perree', 22, 'Female', '(819) 8019082', null, 2, 2, true, 3, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Merl Bursnell', 36, 'Male', '(155) 7944101', null, 4, 3, true, 6, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Norma Saywell', 44, 'Male', '(678) 9993895', null, 3, 2, false, 6, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Shirlee Yendall', 33, 'Male', '(550) 4367512', 'Zamit', 5, 2, true, 1, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Fredric Drepp', 42, 'Male', '(165) 1404139', null, 2, 3, false, 10, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Torey Daborn', 51, 'Male', '(230) 4921145', null, 5, 2, true, 9, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Esther Stepney', 57, 'Female', '(603) 9234328', null, 3, 3, false, 4, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Jami Feldbau', 56, 'Male', '(691) 4872647', null, null, 1, true, 11, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Morlee Le Marquis', 27, 'Female', '(320) 9018810', null, null, 1, true, 11, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Phillie Batey', 38, 'Male', '(789) 4993245', null, 5, 1, true, 2, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Caprice Coping', 27, 'Male', '(496) 3110169', null, 5, 3, false, 6, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Avigdor Torrecilla', 29, 'Male', '(329) 6470919', null, 5, 3, false, 8, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Lorne Naseby', 19, 'Male', '(209) 8853401', null, 4, 3, false, 7, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Lavinia Redon', 53, 'Female', '(647) 6833984', null, 4, 3, false, 12, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Burch Carmody', 45, 'Female', '(975) 8523922', null, 1, 3, true, 7, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Lothario Praton', 42, 'Female', '(104) 5579117', null, null, 2, false, 4, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Eulalie MacLaren', 35, 'Male', '(964) 2474361', 'Otcom', 3, 3, true, 12, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Enrico Boake', 23, 'Female', '(249) 9348229', null, 5, 2, false, 12, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Kinna Waldera', 60, 'Male', '(131) 9596194', null, null, 1, false, 3, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Judas Fenkel', 25, 'Male', '(181) 6241930', null, 4, 3, true, 6, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Ken Patillo', 53, 'Female', '(766) 2174025', null, 1, 3, false, 1, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Scarface Rillett', 48, 'Male', '(936) 8002297', null, 4, 1, true, 3, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Christian Blazeby', 30, 'Male', '(454) 5805965', null, 1, 2, false, 1, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Ferdinand Spini', 39, 'Male', '(266) 2089815', 'Mat Lam Tam', null, 3, true, 6, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Jabez Fidell', 19, 'Male', '(408) 6063755', null, 2, 2, true, 9, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Shana Buglar', 23, 'Female', '(192) 2387243', null, null, 3, false, 9, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Tiphanie Skyppe', 47, 'Female', '(672) 1344562', 'Andalax', 4, 2, true, 9, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Hobey Blinder', 49, 'Female', '(635) 8372241', null, null, 2, true, 7, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Yetty McRae', 32, 'Female', '(196) 3340756', null, 4, 2, false, 9, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Frasquito Larcher', 52, 'Female', '(149) 3519751', null, 2, 2, true, 2, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Jorry Crosson', 33, 'Female', '(244) 4018610', null, 3, 1, false, 2, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Sande Jeffcoat', 24, 'Male', '(295) 4128163', null, 2, 3, true, 10, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Colene Dummett', 40, 'Male', '(376) 6579698', null, 2, 3, true, 2, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Tiff Kyffin', 58, 'Female', '(874) 4790364', null, 5, 1, false, 9, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Gill Keling', 31, 'Female', '(995) 6897034', null, 3, 1, true, 1, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Corenda Jovic', 53, 'Male', '(914) 2864206', null, 4, 2, false, 12, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Bonny Sotheby', 49, 'Female', '(892) 3567568', null, 4, 2, false, 10, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Codie Piner', 54, 'Female', '(899) 6114336', null, 2, 2, false, 7, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Estella Durrance', 41, 'Female', '(598) 1343479', 'Stringtough', 5, 3, false, 12, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Karlan Forsdicke', 26, 'Female', '(764) 7611489', 'Subin', 4, 1, false, 2, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Sherwood Goddert.sf', 32, 'Male', '(177) 1838744', null, null, 3, false, 9, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Cass Sodeau', 37, 'Male', '(849) 9165830', null, 2, 1, true, 5, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Oliviero Gately', 39, 'Female', '(139) 5723411', null, 4, 1, true, 4, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Emalee Fender', 19, 'Female', '(152) 1359689', null, null, 2, true, 2, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Jacynth Henrichs', 36, 'Male', '(955) 7483983', null, 4, 2, true, 6, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Teodoro Clerke', 39, 'Female', '(345) 4817602', null, 3, 2, false, 12, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Juana Bedle', 56, 'Male', '(634) 7327961', null, 1, 2, true, 4, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Erma Josephi', 48, 'Male', '(400) 8477485', null, null, 1, false, 1, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Worthington Kinchington', 45, 'Female', '(661) 6253294', null, null, 2, true, 7, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Bonny Edson', 60, 'Male', '(271) 6961622', null, 2, 2, true, 9, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Gladys Bansal', 28, 'Female', '(798) 7371839', null, 2, 3, true, 8, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Maud Binding', 57, 'Female', '(687) 6077611', null, 5, 3, false, 1, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Karina Kleinsinger', 35, 'Male', '(337) 4949423', null, 2, 1, true, 11, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Marika Lissandre', 27, 'Female', '(453) 3529612', null, null, 1, true, 3, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Bart Derisly', 21, 'Male', '(899) 6437481', null, null, 3, true, 8, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Vassily Oldnall', 22, 'Female', '(871) 9823381', null, 2, 3, true, 3, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Georgine Porson', 43, 'Female', '(985) 2442427', 'Fix San', 3, 2, false, 3, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Reilly Suart', 45, 'Female', '(761) 2553936', null, 5, 1, false, 7, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Edouard Phare', 45, 'Female', '(300) 5670890', null, 4, 3, true, 6, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Malinda McNickle', 39, 'Male', '(590) 5454293', null, 2, 3, false, 5, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Kaycee Cruz', 48, 'Male', '(738) 7986466', null, 2, 1, true, 4, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Anthe Scowcroft', 42, 'Male', '(193) 1272353', null, 5, 2, false, 3, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Nelia Ferrero', 35, 'Female', '(678) 1900576', null, 2, 1, false, 6, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Devonne Law', 31, 'Male', '(625) 9337857', null, 1, 2, false, 10, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Dela Farryan', 52, 'Female', '(976) 5872069', 'Treeflex', 2, 2, false, 4, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Brocky Stormes', 22, 'Male', '(805) 1848353', null, 2, 3, true, 9, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Aguistin Darke', 34, 'Female', '(483) 1114194', null, null, 1, true, 12, 5);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Barry Weagener', 35, 'Male', '(545) 2997580', null, null, 1, true, 7, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Samson Salzen', 28, 'Female', '(142) 1906400', null, 1, 2, true, 7, 4);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Concordia Dwelley', 43, 'Female', '(288) 8464431', null, 5, 1, true, 12, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Mace Reinbeck', 39, 'Female', '(562) 4097591', null, 4, 2, true, 6, 3);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Christel Trimme', 40, 'Female', '(178) 1051911', 'Konklab', 1, 3, false, 4, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Alena Rahl', 55, 'Male', '(787) 4977183', null, 1, 3, false, 6, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Melisse MacCarroll', 32, 'Male', '(342) 6534891', null, 4, 2, true, 8, 1);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Bev Spinley', 38, 'Male', '(960) 3968715', null, null, 1, false, 5, 2);
insert into cashier (fullname, age, sex, phone, previousework, yearofexp, workslnshift, workweekstandart, idshop, idcashreg) values ('Patsy Prando', 30, 'Male', '(474) 3707086', 'Quo Lux', 3, 3, true, 1, 4);