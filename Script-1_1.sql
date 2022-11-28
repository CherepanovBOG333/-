--часть 1
--Задача 1
select * FROM products;
--Задача 2
select prod_name from products;
--Задача 3
select prod_id, prod_name, prod_price
from products;
--Задача 4
select distinct vend_id from products;
--Задача 5
select prod_name from products limit 5;
--Задача 6
select prod_name from products limit 5 offset 2;
--Задача 7 
select prod_name from products limit all offset 4;
--Задача 8
select prod_name from products order by prod_name asc;
--Задача 9 
select prod_id, prod_name, prod_price products order by prod_name asc, prod_price asc;
--задача 10
select prod_id, prod_name, prod_price from products order by  prod_price desc;
--задача 11
select prod_id, prod_name, prod_price products from products order by prod_price desc, prod_name asc;
--задача 12
--1 способ
select concat(vend_name, vend_country ) from vendors;
--2 способ
select vend_name ||' '|| vend_country  from vendors;
--задача 13
--1 способ
select concat(vend_name,' ', vend_country ) as "наименование(место нахождения)"from vendors;
--2 способ
select vend_name ||' '|| vend_country as "наименование(место нахождения)" from vendors;
--задача 14
select prod_id, quantity, item_price from orderitems;
--задача 15
select prod_id, quantity, item_price, item_price*quantity as "expanded_prise" from orderitems;
--задача 16
--1 способ
select concat(vend_name, vend_country ) as "наименование(место нахождения)", char_length(concat(vend_name, vend_country )) as"количество символов" from vendors;
--2 способ
select concat(vend_name, vend_country ) as "наименование(место нахождения)", character_length (concat(vend_name, vend_country )) as"количество символов" from vendors;
--3 способ
select concat(vend_name, vend_country ) as "наименование(место нахождения)", length (concat(vend_name, vend_country )) as"количество символов" from vendors;
--задача 17
select initcap (note_text) from productnotes;
--задача 18
select lower (prod_id) from products;
--задача 19
--1 способ
select concat(vend_name, vend_country ) as "наименование(место нахождения)", upper (concat(vend_name, vend_country )) as "регистр" from vendors;
--2 способ
select concat(vend_name, vend_country ) as "наименование(место нахождения)", concat(upper (vend_name),upper (vend_country) ) as "регистр" from vendors;
--задача 20
insert into products (prod_id,prod_desc)
values ('   pr_er  ','  wdq   '),
('pr_exi','                ewef                           ');
--1 способ
select prod_desc, ltrim(prod_desc) as "Результат" from products;
--2 способ
select prod_desc, trim(leading prod_desc) as "Результат" from products;
--задача 21
select prod_desc, rtrim(prod_desc) as "Результат" from products;
--часть 2
--задача 22
select prod_desc, trim(leading 'Т' from  prod_desc) as "Результат" from products;
--задача 23
--1 способ 
select prod_desc, ltrim(prod_desc, 'jet') as "Результат" from products;
--2 способ
select prod_desc, trim(leading 'jet' from  prod_desc) as "Результат" from products;
--задача 24
--1 способ
select prod_desc, ltrim(prod_desc, 'jet'|| 't'||' ') as "Результат" from products;
--2 способ
 select prod_desc, trim(leading 'jet'|| 't'||' ' from  prod_desc) as "Результат" from products;
--задача 25
--1 способ
 select prod_desc, rtrim(prod_desc, 'e') as "Результат" from products;
--2 способ
  select prod_desc, trim(trailing 'e' from  prod_desc) as "Результат" from products;
--задача 26
--1 способ
  select prod_desc, rtrim(prod_desc, 'ook') as "Результат" from products;
--2 способ
  select prod_desc, trim(trailing 'ook' from  prod_desc) as "Результат" from products;
--задача 27
  --1 способ
  select prod_desc, rtrim(prod_desc, 'e'||'l'||'k'||'g') as "Результат" from products;
  --2 способ
  select prod_desc, trim(trailing 'e'||'l'||'k'||'g' from  prod_desc) as "Результат" from products;
--задача 28
select prod_desc, overlay (prod_desc placing 'YYY' from 4 for 3) as "Результат" from products;
--задача 29
  --1 способ
select vend_city, position ('A' in vend_city) as "позиция" from vendors;
  --2 способ
select vend_city, strpos (vend_city, 'A') as "позиция" from vendors;
--задача 30
    --1 способ
select vend_address, position ('Str' in vend_address) as "позиция" from vendors order by "позиция" asc;
  --2 способ
select vend_address, strpos (vend_address, 'Str') as "позиция" from vendors order by "позиция" asc;
--задача 31
    --1 способ
select note_text, substring(note_text from 13 for 22) as "Результат" from productnotes;
  --2 способ
select note_text, substr(note_text,13,22) as "Результат" from productnotes;
--задача 32
select note_text,left(note_text, 22) as "Результат" from productnotes;
--задача 33
select note_text,left(note_text, -22) as "Результат" from productnotes;
--задача 34
select note_text,right(note_text, 14) as "Результат" from productnotes;
--задача 35
select note_text,right(note_text, -17) as "Результат" from productnotes;
--задача 36
select vend_name,repeat(vend_name,3) as "Повтор" from vendors;
--задача 37
select vend_name,reverse (vend_name)  as "ревёрс" from vendors;
--задача 38
select split_part(cust_email,'@',1) as "часть 1", split_part(cust_email,'@',2) as "часть 2" from customers;
--задача 39
select split_part(cust_name,'',1)  as "часть 1",split_part(cust_name,'',2) as "часть 2" from customers;
--задача 40
select age(timestamp '2022-10-23',timestamp '1812-08-03');
--задача 41
select age(order_date) as "интервал" from orders;
--задача 42
--1 способ
select current_date;
--2 способ
select current_timestamp;
--задача 43
select current_time;
--3 часть
--задача 44
select current_time;
--задача 45
select order_date , date_part('year', order_date) as "Год" from orders;
--задача 46
select order_date , date_part('month', order_date) as "месяц" from orders;
--задача 47
select order_date , date_part('day', order_date) as "день" from orders;
--задача 48
select date_part('hours',timestamp'2020-06-30 02:36:24'); 
--задача 49
select date_part('minutes',timestamp'2020-06-30 02:36:24'); 
--задача 50
select date_part('second',timestamp'2020-06-30 02:36:24'); 
--задача 51
select  date_part('year', timestamp'2021-12-31 12:48:17') as "Год" ,
date_part('month',timestamp'2021-12-31 12:48:17' ) as "месяц" ,
date_part('day',timestamp'2021-12-31 12:48:17' ) as "день" ,
date_part('hours',timestamp'2021-12-31 12:48:17' ) as "часы" ,
date_part('minutes',timestamp'2021-12-31 12:48:17' ) as "минуты" ,
date_part('second',timestamp'2021-12-31 12:48:17' ) as "секунды";
--задача 52
select order_date, age(order_date) as "Интервал", date_part('year',age(order_date)) as "года" from orders;
--задача 53
select order_date, age(order_date) as "Интервал", date_part('month',age(order_date)) as "месяц" from orders;
--задача 54
select order_date, age(order_date) as "Интервал", date_part('day',age(order_date)) as "день" from orders;
--задача 55
select age(timestamp '1856-04-25 09:56:34') as "интервал", date_part('hours',age(timestamp '1856-04-25 09:56:34')) as "часы",
date_part('min',age(timestamp '1856-04-25 09:56:34')) as "минуты", date_part('sec',age(timestamp '1856-04-25 09:56:34')) as "секунды";
--задача 56
select order_date, date_trunc('year',order_date) as "Результат" from orders;
--задача 57
select order_date, date_trunc('month',order_date) as "Результат" from orders;
--задача 58
select order_date, date_trunc('day',order_date) as "Результат" from orders;
--задача 59
select date_trunc('hours',timestamp '2015-05-26 16:36:42.258') as "Результат";
--задача 60
select date_trunc('min',timestamp '2015-05-26 16:36:42.258') as "Результат";
--задача 61
select date_trunc('sec',timestamp '2015-05-26 16:36:42.258') as "Результат";
--задача 62
--1 способ 
select concat(note_id ,'/',prod_id,'/',note_date) as "Результат" from productnotes;
--2 способ
select concat_ws ('/',note_id ,prod_id,note_date) as "Результат" from productnotes;