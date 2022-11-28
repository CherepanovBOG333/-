create schema "mbs21_ivanov"
create table "mbs21_ivanov"."Speciality"
(
"Num" int PRIMARY KEY NOT NULL,
"Name" VARCHAR(60) not null
);
CREATE TABLE "mbs21_ivanov"."Course"
(
"Num" SERIAL PRIMARY KEY NOT NULL,
"Name" varchar(60),
"YearEntry" INT NOT NULL,
"YearFinal" INT,
"Speciality" INT REFERENCES "mbs21_ivanov"."Speciality"("Num") NOT NULL
);
CREATE TABLE "mbs21_ivanov"."Group"
(
"Num" SERIAL PRIMARY key NOT NULL,
"Name" VARCHAR(60) NOT NULL,
"Course" INT REFERENCES "mbs21_ivanov"."Course"("Num") NOT NULL
);
CREATE TABLE "mbs21_ivanov"."Discipline"
(
"Num" SERIAL PRIMARY key NOT NULL,
"Name" VARCHAR(60) NOT NULL
);
CREATE TABLE "mbs21_ivanov"."Account"
(
"Num" SERIAL PRIMARY KEY NOT NULL,
"Name" VARCHAR(30) NOT NULL
);
CREATE TABLE "mbs21_ivanov"."Mark"
(
"Num" SERIAL PRIMARY key NOT NULL,
"Name" VARCHAR(30) NOT NULL,
"Value" INT NOT NULL
);
CREATE TABLE "mbs21_ivanov"."Status"
(
"Num" SERIAL PRIMARY key NOT NULL,
"Name" VARCHAR(60) NOT NULL
);
CREATE TABLE "mbs21_ivanov"."Position"
(
"Num" SERIAL PRIMARY KEY NOT NULL,
"Name" VARCHAR(60) NOT NULL
);
CREATE TABLE "mbs21_ivanov"."People"
(
"Num" SERIAL PRIMARY key not null,
"LastName" VARCHAR(30) NOT NULL,
"FirstName" VARCHAR(30) NOT NULL,
"MiddleName" VARCHAR(30),
"Male" CHAR(1) NOT NULL,
"BirthDate" TIMESTAMP,
"Addr" VARCHAR(100)
);
CREATE TABLE "mbs21_ivanov"."Student"
(
"Num" SERIAL PRIMARY key not null,
"People" INT REFERENCES "mbs21_ivanov"."People"("Num") NOT NULL,
"Group" INT REFERENCES "mbs21_ivanov"."Group"("Num") NOT NULL,
"StdNum" VARCHAR(30) NOT NULL,
"Status" INT REFERENCES "mbs21_ivanov"."Status"("Num") NOT NULL
);
CREATE TABLE "mbs21_ivanov"."Teacher"
(
"Num" SERIAL PRIMARY key NOT NULL,
"People" INT REFERENCES "mbs21_ivanov"."People"("Num") NOT NULL,
"Position" INT REFERENCES "mbs21_ivanov"."Position"("Num") NOT NULL
);
CREATE TABLE "mbs21_ivanov"."SemesterResults"
(
"Num" SERIAL PRIMARY key NOT NULL,
"Student" INT REFERENCES "mbs21_ivanov"."Student"("Num") NOT NULL,
"Semester" INT NOT NULL,
"Account" INT REFERENCES "mbs21_ivanov"."Account"("Num") NOT NULL,
"Discipline" INT REFERENCES "mbs21_ivanov"."Discipline"("Num") NOT NULL,
"Teacher" INT REFERENCES "mbs21_ivanov"."Teacher"("Num") NOT NULL,
"Mark" INT REFERENCES "mbs21_ivanov"."Mark"("Num") NOT NULL,
"Date" TIMESTAMP NOT NULL
);

insert into mbs21_ivanov."Speciality" ("Num" ,"Name")
values (1,'Информационные системы'),
(2,'Философия');

insert into mbs21_ivanov."Course" ("Name","YearEntry","YearFinal","Speciality")
values ('ИС-16',2016,2020,1),
('ИС-18',2018,2022,1),
('Ф-17',2017,2022,2);

insert into mbs21_ivanov."Group" ("Name","Course")
values ('ИС1-16',1),
('ИС1-18',2),
('Ф1-17',3);

insert into mbs21_ivanov."Status" ("Name")
values ('Учится'),
('Закончил учёбу'),
('Отчислен');

insert into mbs21_ivanov."People" ("LastName","FirstName","MiddleName","Male","BirthDate","Addr")
values ('Иванов','Иван','Иваныч','м','10.10.1984','Ул. Речная д.3'),
('Федоровна','Ольга','Алексеевна','ж','01.03.1993','Ул. Центральная д.7'),
('Кузнецова','Света','Андреевна','ж','06.02.1996','Ул. Заморская д.3'),
('Жимшут','Иодан','Гыктылмбек','м','03.03.1993','Ул. 3-го сентября д.3'),
('Иванов','Сергей','Палыч','м','10.02.1999','Ул. Речная д.1'),
('Игорев','Игорь','Дмитрич','м','10.03.2000','Ул. Мостовая д.3'),
('Жигулёв','Андрей','Юрич','м','10.01.2003','Ул. Мостовая д.2'),
('Милохова','Мария','Викторовна','ж','14.02.2004','Ул. Медвежья д.1'),
('Мировая','Надежда','Даниловна','ж','01.02.2005','Ул. Медвежья д.4'),
('Жигулёв','Александр','Юрич','м','01.01.2001','Ул. Восточня д.3'),
('Понкратов','Павел','Сергеевич','м','04.04.2004','Ул. Речная д.4'),
('Шевченкова','Виктория','Игоревна','ж','05.10.2000','Ул. Центральная д.9'),
('Любимчик','Ксения','Игоревна','ж','29.03.2000','Ул. Мостовая д.5'),
('Шевчук','Игорь','Иваныч','м','25.12.1999','Ул. Московская д.1'),
('Смирнова','Алина','Васиьевна','ж','15.02.2000','Ул. Московская д.45');

insert into mbs21_ivanov."Student" ("People","Group","StdNum","Status")
values (6,1,'ИС1166',2),
(7,1,'ИС1167',2),
(8,1,'ИС1168',3),
(9,2,'ИС1189',1),
(10,2,'ИС11810',1),
(11,2,'ИС11811',1),
(12,3,'Ф11712',3),
(13,3,'Ф11713',1),
(14,3,'Ф11714',1),
(15,3,'Ф11715',1);

insert into mbs21_ivanov."Position" ("Name")
values ('Доцент'),
('Зам кафедры');

insert into mbs21_ivanov."Teacher" ("People","Position")
values (1,1),
(2,2),
(3,1),
(4,1),
(5,2);

insert into mbs21_ivanov."Account" ("Name")
values ('ac1'),
('ac2'),
('ac3'),
('ac4'),
('ac5'),
('ac6'),
('ac7'),
('ac8'),
('ac9'),
('ac10');

insert into mbs21_ivanov."Mark" ("Name","Value")
values ('нет',0),
('не уч.',2),
('удов.',3),
('хор.',4),
('отл',5)
;

insert into mbs21_ivanov."Discipline" ("Name")
values ('Русский язык'),
('Философия'),
('Математика'),
('Програмирование');

insert into mbs21_ivanov."SemesterResults" ("Student","Semester","Account","Discipline","Teacher","Mark","Date")
values (4,8,4,3,1,3,'13.06.2022'),
(4,8,4,4,2,5,'17.06.2022'),
(5,8,5,3,1,4,'13.06.2022'),
(5,8,5,4,2,4,'17.06.2022'),
(6,8,6,3,1,5,'13.06.2022'),
(6,8,6,4,2,2,'17.06.2022'),
(7,10,7,1,3,3,'13.06.2022'),
(7,10,7,2,5,3,'17.06.2022'),
(8,10,8,1,3,5,'13.06.2022'),
(8,10,8,2,5,5,'17.06.2022'),
(9,10,9,1,3,3,'13.06.2022'),
(9,10,9,2,5,4,'17.06.2022'),
(10,10,10,1,3,4,'13.06.2022'),
(10,10,10,2,5,4,'17.06.2022');
