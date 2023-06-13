INSERT INTO edu_year (begin_date, end_date, year) VALUES ('2021-09-15', '2022-06-30', '2021-2022');
INSERT INTO edu_year (begin_date, end_date, year) VALUES ('2022-09-15', '2023-06-30', '2022-2023');

SELECT * FROM edu_year;

INSERT INTO semester (begin_date, end_date, name, edu_year_id) VALUES ('2021-09-15', '2022-02-01', 'I semester', 1);
INSERT INTO semester (begin_date, end_date, name, edu_year_id) VALUES ('2022-02-02', '2022-07-01', 'II semester', 1);
INSERT INTO semester (begin_date, end_date, name, edu_year_id) VALUES ('2022-09-15', '2023-02-01', 'I semester', 2);
INSERT INTO semester (begin_date, end_date, name, edu_year_id) VALUES ('2022-02-02', '2022-07-01', 'II semester', 2);

SELECT * FROM semester;

INSERT INTO lesson_type (name) VALUES ('Mühazirə');
INSERT INTO lesson_type (name) VALUES ('Seminar');
INSERT INTO lesson_type (name) VALUES ('Laboratoriya');

SELECT * FROM lesson_type;

INSERT INTO faculty (name) values ('İnformasiya və telekommunikasiya texnologiyalar fakültəsi');
INSERT INTO faculty (name) values ('Xüsusi texnika və texnologiyaları fakültəsi');
INSERT INTO faculty (name) values ('İqtisadiyyat və idarəetmə fakültəsi');
INSERT INTO faculty (name) values ('Metallurgiya və materialşunaslıq fakültəsi');

select * from faculty;

insert into room_type (name) values ('Böyük');
insert into room_type (name) values ('Orta');
insert into room_type (name) values ('Kiçik');

select * from room_type;

insert into room (name, room_type_id) values ('No:1', 1);
insert into room (name, room_type_id) values ('No:2', 2);
insert into room (name, room_type_id) values ('No:3', 3);
insert into room (name, room_type_id) values ('No:4', 1);
insert into room (name, room_type_id) values ('No:5', 2);
insert into room (name, room_type_id) values ('No:6', 3);

select * from room;

insert into subject (code, credit, name) values ('a001', 4, 'Ali məktəb pedaqogikası');
insert into subject (code, credit, name) values ('a002', 2, 'Azərbaycan multikultralizmi');
insert into subject (code, credit, name) values ('a003', 2, 'Psixologiya');
insert into subject (code, credit, name) values ('i001', 8, 'Paralel və paylanmış hesablamalar');
insert into subject (code, credit, name) values ('i002', 8, 'Süni intellekt üsulları');
insert into subject (code, credit, name) values ('k001', 6, 'Verilənlərin intellektual analizi');
insert into subject (code, credit, name) values ('k002', 4, 'Kompüter elmlərinin müasir problemləri');

select * from subject;


insert into teacher (birth_date, name, surname, pin) values ('1975-05-6', 'Yaşar', 'Qasımov', 'AC2235R');
INSERT INTO teacher (birth_date, name, surname, pin) VALUES ('1972-10-14', 'Rəşad', 'Əliyev', 'BC5486K');
INSERT INTO teacher (birth_date, name, surname, pin) VALUES ('1968-03-27', 'Eldar', 'Məmmədov', 'FD7823M');
INSERT INTO teacher (birth_date, name, surname, pin) VALUES ('1981-12-01', 'Günel', 'Hüseynova', 'GH1234L');
INSERT INTO teacher (birth_date, name, surname, pin) VALUES ('1975-07-21', 'Fərhad', 'İbrahimov', 'IJ8765H');
INSERT INTO teacher (birth_date, name, surname, pin) VALUES ('1970-02-12', 'Ləman', 'Zeynalova', 'LM5674P');
INSERT INTO teacher (birth_date, name, surname, pin) VALUES ('1980-06-23', 'Nərgiz', 'Rəsulova', 'NR9087Q');
INSERT INTO teacher (birth_date, name, surname, pin) VALUES ('1977-08-31', 'Tural', 'Səfərov', 'TS1423F');
INSERT INTO teacher (birth_date, name, surname, pin) VALUES ('1973-04-18', 'Ülvi', 'Yusifov', 'UY5642B');
INSERT INTO teacher (birth_date, name, surname, pin) VALUES ('1978-11-29', 'Vüsal', 'Xəlilov', 'VX3214C');
INSERT INTO teacher (birth_date, name, surname, pin) VALUES ('1976-09-15', 'Zahid', 'Gurbanov', 'ZG7890D');

select * from teacher;

insert into student (birth_date, surname, name, pin, faculty_id) values ('1999-02-02', 'Qasım', 'Qasımov', '3SD6Y7X', 1);
insert into student (birth_date, surname, name, pin, faculty_id) values ('2001-02-08', 'Aydan', 'Gurbanova', 'VB458YK', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-04-15', 'Rəşad', 'Əliyev', 'AB123XC', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-07-18', 'Eldar', 'Məmmədov', 'CD456YV', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-10-21', 'Günel', 'Hüseynova', 'EF789ZB', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-01-09', 'Fərhad', 'İbrahimov', 'GH0123A', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-12-31', 'Ləman', 'Zeynalova', 'IJ4567D', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-06-07', 'Nərgiz', 'Rəsulova', 'KL8901E', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-03-14', 'Tural', 'Səfərov', 'MN2345F', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-09-26', 'Ülvi', 'Yusifov', 'OP6789G', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-05-02', 'Vüsal', 'Xəlilov', 'QR0123H', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-11-10', 'Zahid', 'Gurbanov', 'ST4567J', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-05-16', 'Məhəmməd', 'Əliyev', '1ZG5X6C', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-08-22', 'Sevinc', 'Hüseynova', '2AH6J7K', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-11-30', 'Fikrət', 'Məmmədov', '3BI7K8L', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-01-14', 'Kamran', 'İbrahimov', '4CJ8L9M', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-04-06', 'Nigar', 'Zeynalova', '5DK9M1N', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-07-24', 'İlkin', 'Rəsulov', '6EL1N2O', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-10-11', 'Rövşən', 'Səfərov', '7FM2O3P', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-02-03', 'Samir', 'Yusifov', '8GN3P4Q', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-06-19', 'Leyla', 'Xəlilova', '9HO4Q5R', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-09-08', 'Tərlan', 'Gurbanov', '0IP5R6S', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-03-15', 'Asif', 'Mammadli', '1JP6S7T', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-07-21', 'Sabina', 'Rustamova', '2KQ7T8U', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-10-31', 'Elvin', 'Ismayilov', '3LR8U9V', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-12-13', 'Arzu', 'Hasanli', '4MS9V1W', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-02-05', 'Vagif', 'Aghayev', '5NT1W2X', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-05-20', 'Elmira', 'Taghiyeva', '6OU2X3Y', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-08-26', 'Habil', 'Jafarov', '7PV3Y4Z', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-11-10', 'Rena', 'Mirzayeva', '8QW4Z5A', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-01-16', 'Ramin', 'Kerimov', '9RX5A6B', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-04-08', 'Sevda', 'Aliyeva', '0SY6B7C', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-06-30', 'Kamal', 'Musayev', '1TZ7C8D', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-09-14', 'Sevinc', 'Mammadova', '2UA8D9E', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-12-29', 'Elçin', 'Rahimov', '3VB9E1F', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-03-17', 'Zeynab', 'Hasanova', '4WC1F2G', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-07-05', 'Tural', 'Aghazade', '5XD2G3H', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-11-22', 'Nigar', 'Taghizade', '6YE3H4I', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-02-08', 'Emin', 'Javadov', '7ZF4I5J', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-05-01', 'Lala', 'Mirzazade', '8AG5J6K', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-08-16', 'Ilham', 'Kerimli', '9BH6K7L', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-01-03', 'Sara', 'Aliyeva', '0CI7L8M', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-10-25', 'Rauf', 'Novruzov', '1DJ8M9N', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-03-09', 'Fidan', 'Huseynova', '2EK9N1O', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-06-19', 'Gadir', 'Ismayilzade', '3FL1O2P', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-11-30', 'Aysel', 'Rahimli', '4GM2P3Q', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-07-23', 'Orkhan', 'Asadov', '5HN3Q4R', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-12-04', 'Firangiz', 'Sultanova', '6IO4R5S', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-03-18', 'Murad', 'Jafarli', '7JP5S6T', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-08-07', 'Mehriban', 'Mirzaliyeva', '8KQ6T7U', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-05-21', 'Teymur', 'Abbasov', '9LR7U8V', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-09-27', 'Leyla', 'Guliyeva', '0MS8V9W', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-04-10', 'Vugar', 'Mammadli', '1NT9W1X', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-01-17', 'Sabina', 'Ibrahimova', '2OU1X2Y', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-06-20', 'Emin', 'Rasulzade', '3PV2Y3Z', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-11-11', 'Gunel', 'Akbarova', '4QW3Z4A', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-07-14', 'Rashad', 'Aliyev', '5RX4A5B', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-12-05', 'Konul', 'Mammadzade', '6SY5B6C', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-04-20', 'Farid', 'Huseynli', '7TZ6C7D', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-08-30', 'Gunay', 'Asadova', '8UA7D8E', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-02-01', 'Elvin', 'Rahimli', '9VB8E9F', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-03-15', 'Samira', 'Kerimova', '0WC9F1G', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-11-23', 'Fazil', 'Ibrahimli', '1XD1G2H', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-06-07', 'Aygun', 'Seyidova', '2YE2H3I', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-05-28', 'Elshan', 'Mammadov', '3ZF3I4J', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-09-18', 'Narmin', 'Aliyeva', '4AG4J5K', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-12-12', 'Kanan', 'Novruzov', '5BH5K6L', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-07-24', 'Madina', 'Ismayilova', '6CI6L7M', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-06-15', 'Vusal', 'Huseynov', '7DJ7M8N', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-04-06', 'Sevinc', 'Rustamli', '8EK8N9O', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-01-27', 'Anar', 'Agayev', '9FL9O1P', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-10-13', 'Zumrud', 'Mammadli', '0GM1P2Q', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-07-29', 'Rauf', 'Rahimzade', '1HN2Q3R', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-11-18', 'Leyla', 'Guliyeva', '2IO3R4S', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-02-08', 'Elmar', 'Taghiyev', '3JP4S5T', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-05-20', 'Samaya', 'Hasanova', '4KQ5T6U', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-08-31', 'Elnur', 'Jafarov', '5LR6U7V', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-05-12', 'Aytaj', 'Mirzayeva', '6MS7V8W', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-03-14', 'Teymur', 'Aghazade', '7NT8W9X', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-12-06', 'Gunay', 'Taghizade', '8OU9X1Y', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-09-20', 'Fuat', 'Ismayilov', '9PV1Y2Z', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-06-07', 'Dilara', 'Akbarova', '0QW2Z3A', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-04-29', 'Gulnar', 'Kerimova', '1RX3A4B', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-01-15', 'Rashad', 'Mammadov', '2SY4B5C', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-10-11', 'Elchin', 'Aliyev', '3TZ5C6D', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-07-26', 'Firuza', 'Rustamli', '4UA6D7E', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-05-13', 'Eldar', 'Aliyev', '5VB7E8F', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-02-21', 'Gulshan', 'Huseynli', '6WC8F9G', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-11-07', 'Farhad', 'Mammadli', '7XD9G1H', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-08-19', 'Ayten', 'Ismayilzade', '8YE1H2I', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-06-02', 'Nizami', 'Rahimov', '9ZF2I3J', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-03-28', 'Leyli', 'Novruzova', '0AG3J4K', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-12-16', 'Kamil', 'Hasanov', '1BH4K5L', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-09-05', 'Sevda', 'Aliyeva', '2CI5L6M', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-07-22', 'Ehtiram', 'Guliyev', '3DJ6M7N', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-04-09', 'Gulzar', 'Mammadova', '4EK7N8O', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-12-31', 'Zaur', 'Sultanov', '5FL8O9P', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-01-10', 'Arzu', 'Guliyeva', '6GM9P1Q', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-08-24', 'Ruslan', 'Tagiyev', '7HN1Q2R', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-09-14', 'Sevinj', 'Ismayilova', '8IO2R3S', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-01-02', 'Emin', 'Rahimli', '9JP3S4T', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-10-06', 'Lala', 'Mammadli', '0KQ4T5U', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-10-26', 'Murad', 'Aliyev', '1LR5U6V', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-05-12', 'Zulfiya', 'Hasanova', '2MS6V7W', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-02-28', 'Elchin', 'Jafarov', '3NT7W8X', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-11-18', 'Aydan', 'Mammadova', '4OU8X9Y', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-11-10', 'Ramin', 'Huseynov', '5PV9Y1Z', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-06-23', 'Afet', 'Ismayilzade', '6QW1Z2A', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-03-30', 'Orkhan', 'Mammadov', '7RX2A3B', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-12-14', 'Aynur', 'Rahimova', '8SY3B4C', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-12-03', 'Adil', 'Aliyev', '9TZ4C5D', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-07-14', 'Sevinc', 'Hasanova', '0UA5D6E', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-04-20', 'Vusal', 'Jafarov', '1VB6E7F', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-01-10', 'Nigar', 'Ismayilova', '2WC7F8G', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-01-02', 'Anar', 'Mammadli', '3XD8G9H', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-01-12', 'Ulviyya', 'Aliyeva', '4YE9H1I', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-05-05', 'Ruslan', 'Rahimli', '5ZF1I2J', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-02-24', 'Fidan', 'Taghizade', '6AG2J3K', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-02-14', 'Sabir', 'Huseynli', '7BH3K4L', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-02-29', 'Nazakat', 'Mammadova', '8CI4L5M', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-06-15', 'Elvin', 'Aliyev', '9DJ5M6N', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-03-31', 'Aygun', 'Rustamova', '0EK6N7O', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-03-19', 'Rovshan', 'Tagiyev', '1FL7O8P', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-03-10', 'Gulnar', 'Ismayilova', '2GM8P9Q', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-07-04', 'Teymur', 'Mammadov', '3HN9Q1R', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-04-22', 'Aysel', 'Aliyeva', '4IO1R2S', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-04-30', 'Fuad', 'Rahimli', '5JP2S3T', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-04-14', 'Nigar', 'Hasanova', '6KQ3T4U', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-07-31', 'Ilgar', 'Jafarov', '7LR4U5V', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-05-12', 'Leyla', 'Ismayilova', '8MS5V6W', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-05-24', 'Emin', 'Mammadli', '9NT6W7X', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-05-08', 'Sevda', 'Aliyeva', '0OU7X8Y', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-08-20', 'Elchin', 'Huseynov', '1PV8Y9Z', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-06-01', 'Gulnar', 'Rahimova', '2QW9Z1A', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-06-07', 'Tural', 'Aliyev', '3RX1A2B', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-06-23', 'Ulviyya', 'Hasanova', '4SY2B3C', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-09-10', 'Emin', 'Jafarov', '5TZ3C4D', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-06-29', 'Afet', 'Ismayilova', '6UA4D5E', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-07-13', 'Anar', 'Mammadli', '7VB5E6F', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-07-02', 'Sevinc', 'Aliyeva', '8WC6F7G', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-10-01', 'Orkhan', 'Rahimli', '9XD7G8H', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-07-16', 'Aysel', 'Taghizade', '0YE8H9I', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-08-03', 'Sabir', 'Huseynli', '1ZF9I1J', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-07-30', 'Nazakat', 'Mammadova', '2AG1J2K', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-10-20', 'Vusal', 'Aliyev', '3BH2K3L', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-08-02', 'Leyla', 'Rustamova', '4CI3L4M', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-09-01', 'Rovshan', 'Tagiyev', '5DJ4M5N', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-08-14', 'Ulviyya', 'Ismayilova', '6EK5N6O', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-11-05', 'Teymur', 'Mammadov', '7FL6O7P', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-09-20', 'Gulnar', 'Aliyeva', '8GM7P8Q', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-10-04', 'Emin', 'Rahimli', '9HN8Q9R', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-09-15', 'Nigar', 'Hasanova', '0IO9R1S', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-12-01', 'Ilgar', 'Jafarov', '1JP1S2T', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-10-12', 'Leyla', 'Ismayilova', '2KQ2T3U', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-10-25', 'Anar', 'Mammadli', '3LR3U4V', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-09-27', 'Sevda', 'Aliyeva', '4MS4V5W', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-12-10', 'Elchin', 'Huseynov', '5NT5W6X', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-11-04', 'Gulnar', 'Rahimova', '6OU6X7Y', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-11-17', 'Tural', 'Aliyev', '7PV7Y8Z', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-10-10', 'Ulviyya', 'Hasanova', '8QW8Z9A', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('1999-12-30', 'Emin', 'Jafarov', '9RX9A1B', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-11-29', 'Afet', 'Ismayilova', '0SY1B2C', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-12-12', 'Anar', 'Mammadli', '1TZ2C3D', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-11-03', 'Sevinc', 'Aliyeva', '2UA3D4E', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-01-04', 'Orkhan', 'Rahimli', '3VB4E5F', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2003-12-15', 'Aysel', 'Taghizade', '4WC5F6G', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-01-02', 'Sabir', 'Huseynli', '5XD6G7H', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-11-20', 'Nazakat', 'Mammadova', '6YE7H8I', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-01-15', 'Vusal', 'Aliyev', '7ZF8I9J', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-01-06', 'Leyla', 'Rustamova', '8AG9J1K', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-02-01', 'Rovshan', 'Tagiyev', '9BH1K2L', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-12-10', 'Ulviyya', 'Ismayilova', '0CI2L3M', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-02-02', 'Teymur', 'Mammadov', '1DJ3M4N', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-02-07', 'Gulnar', 'Aliyeva', '2EK4N5O', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-02-22', 'Emin', 'Rahimli', '3FL5O6P', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-12-20', 'Nigar', 'Hasanova', '4GM6P7Q', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-02-25', 'Ilgar', 'Jafarov', '5HN7Q8R', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-03-04', 'Leyla', 'Ismayilova', '6IO8R9S', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-03-14', 'Anar', 'Mammadli', '7JP9S1T', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-01-15', 'Sevda', 'Aliyeva', '8KQ1T2U', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-03-10', 'Elchin', 'Huseynov', '9LR2U3V', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-04-01', 'Gulnar', 'Rahimova', '0MS3V4W', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-04-04', 'Tural', 'Aliyev', '1NT4W5X', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-02-01', 'Ulviyya', 'Hasanova', '2OU5X6Y', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-03-20', 'Emin', 'Jafarov', '3PV6Y7Z', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-04-10', 'Afet', 'Ismayilova', '4QW7Z8A', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-04-18', 'Anar', 'Mammadli', '5RX8A9B', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-02-18', 'Sevinc', 'Aliyeva', '6SY9B1C', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-04-02', 'Orkhan', 'Rahimli', '7TZ1C2D', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-05-01', 'Aysel', 'Taghizade', '8UA2D3E', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-05-06', 'Sabir', 'Huseynli', '9VB3E4F', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-03-10', 'Nazakat', 'Mammadova', '0WC4F5G', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-04-20', 'Vusal', 'Aliyev', '1XD5G6H', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-05-12', 'Leyla', 'Rustamova', '2YE6H7I', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-05-20', 'Rovshan', 'Tagiyev', '3ZF7I8J', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-03-25', 'Ulviyya', 'Ismayilova', '4AG8J9K', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-05-05', 'Teymur', 'Mammadov', '5BH9K1L', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-06-01', 'Gulnar', 'Aliyeva', '6CI1L2M', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-06-05', 'Emin', 'Rahimli', '7DJ2M3N', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-04-10', 'Nigar', 'Hasanova', '8EK3N4O', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-05-20', 'Ilgar', 'Jafarov', '9FL4O5P', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-06-20', 'Leyla', 'Ismayilova', '0GM5P6Q', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-06-22', 'Anar', 'Mammadli', '1HN6Q7R', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-05-01', 'Sevda', 'Aliyeva', '2IO7R8S', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-06-01', 'Elchin', 'Huseynov', '3JP8S9T', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-07-05', 'Gulnar', 'Rahimova', '4KQ9T1U', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-07-10', 'Tural', 'Aliyev', '5LR1U2V', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-05-15', 'Ulviyya', 'Hasanova', '6MS2V3W', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-06-15', 'Emin', 'Jafarov', '7NT3W4X', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-07-20', 'Afet', 'Ismayilova', '8OU4X5Y', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-07-25', 'Anar', 'Mammadli', '9PV5Y6Z', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-06-01', 'Sevinc', 'Aliyeva', '0QW6Z7A', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-07-05', 'Orkhan', 'Rahimli', '1RX7A8B', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-08-01', 'Aysel', 'Taghizade', '2SY8B9C', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-08-05', 'Sabir', 'Huseynli', '3TZ9C1D', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-06-15', 'Nazakat', 'Mammadova', '4UA1D2E', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-07-20', 'Vusal', 'Aliyev', '5VB2E3F', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-08-10', 'Leyla', 'Rustamova', '6WC3F4G', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-08-15', 'Rovshan', 'Tagiyev', '7XD4G5H', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-07-01', 'Ulviyya', 'Ismayilova', '8YE5H6I', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-08-05', 'Teymur', 'Mammadov', '9ZF6I7J', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-09-01', 'Gulnar', 'Aliyeva', '0AG7J8K', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-09-05', 'Emin', 'Rahimli', '1BH8K9L', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-07-15', 'Nigar', 'Hasanova', '2CI9L1M', 1);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2000-08-20', 'Ilgar', 'Jafarov', '3DJ1M2N', 2);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2004-09-10', 'Leyla', 'Ismayilova', '4EK2N3O', 3);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2002-09-15', 'Anar', 'Mammadli', '5FL3O4P', 4);
INSERT INTO student (birth_date, surname, name, pin, faculty_id) VALUES ('2001-08-01', 'Sevda', 'Aliyeva', '6GM4P5Q', 1);



select count(*)
from student;

select * from student;
























DELIMITER //

CREATE PROCEDURE generate_lesson(
    p_base_lesson_id bigint,
    p_week_type_id int,
    p_week_day int,
    p_room_id int,
    p_begin_time time,
    p_end_time time
)
BEGIN
    DECLARE i_current_date DATE;
    DECLARE i_begin_date DATE;
    DECLARE i_end_date DATE;
    DECLARE i_begin_week_day int;
    DECLARE i_extra_day int;

select s.begin_date, s.end_date
into i_begin_date, i_end_date
from base_lesson bl
         join subject_group sg on bl.subject_group_id = sg.id
         join semester s on sg.semester_id = s.id
where bl.id = p_base_lesson_id;

SET i_begin_week_day = WEEKDAY(i_begin_date);
    SET i_extra_day = (i_begin_week_day + p_week_day - 1) % 6;
    SET i_current_date = DATE_ADD(i_begin_date, INTERVAL i_extra_day DAY);


    WHILE i_current_date <= i_end_date DO

SELECT i_current_date;
INSERT INTO lesson (date, end_time, start_time, base_lesson_id, room_id)
VALUES (i_current_date, p_end_time, p_begin_time, p_base_lesson_id, p_room_id);

IF p_week_type_id = 3
            THEN
                SET i_current_date = DATE_ADD(i_current_date, INTERVAL 7 DAY);
ELSE
                SET i_current_date = DATE_ADD(i_current_date, INTERVAL 14 DAY);
END IF;

END WHILE;
END //

DELIMITER ;
