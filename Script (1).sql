create table "mbs21_query"."Speciality"
(
Num serial primary key not null,
NameSpec varchar(60)
);
create table "mbs21_query"."Course"
(
Num serial primary key not null,
YearEntry int not null,
YearFinal int,
Speciality int
);
alter table "mbs21_query"."Course"
add constraint "fk_Course" foreign key ("Speciality") references "mbs21_query"."Speciality" ("Num");
alter table "mbs21_query"."Course"
add column "Name" varchar(60) not null;
alter table "mbs21_query"."Course"
alter column "Speciality" set not null;
alter table "mbs21_query"."Speciality"
alter column "NameSpec" set not null;
create table "mbs21_query"."Group"
(
Num serial primary key not null,
Name varchar(60) not null,
Course int not null references "mbs21_query"."Course" ("Num")
);
create table "mbs21_query"."Discipline"
(
Num serial primary key not null,
Name varchar(60) not null
);
create table "mbs21_query"."Account"
(
Num serial primary key not null,
Name varchar(30) not null
);
create table "mbs21_query"."Mark"
(
Num serial primary key not null,
Name varchar(30) not null,
Value int not null
);
create table "mbs21_query"."Status"
(
Num serial primary key not null,
Name varchar(60) not null
);
create table "mbs21_query"."Position"
(
Num serial primary key not null,
Name varchar(60) not null
);
create table "mbs21_query"."People"
(
Num serial primary key not null,
LastName varchar(30) not null,
FirstName varchar(30) not null,
MiddleName varchar(30),
Male char(1) not null,
BrthDate date,
"Addr" varchar(100)
);
create table "mbs21_query"."Student"
(
Num serial primary key not null,
People int not null references "mbs21_query"."People" ("Num"),
Group int not null references "mbs21_query"."Group" ("Num"),
StudNum varchar(30) not null,
Status int not null references "mbs21_query"."Status" ("Num")
);
create table "mbs21_query"."Teacher"
(
Num serial primary key not null,
People int not null references "mbs21_query"."People" ("Num"),
Position int not null references "mbs21_query"."Position" ("Num")
);
create table "mbs21_query"."SemesterResults"
(
Num serial primary key not null,
Student int not null references "mbs21_query"."Student" ("Num"),
Semester int not null,
Account int not null references "mbs21_query"."Account" ("Num"),
Discipline int not null references "mbs21_query"."Discipline" ("Num"),
Teacher int not null references "mbs21_query"."Teacher" ("Num"),
Mark int not null references "mbs21_query"."Mark" ("Num"),
Date date not null
);