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

