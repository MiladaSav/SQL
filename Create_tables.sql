/* Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.
*/

create table employee(
	id serial primary key,
	employee_name varchar(50) not null
);

/* Проверяем созданную таблицу*/
select * from employee;
/* Наполняем таблицу*/
insert
	into
	employee(employee_name)
values  
('Mikki'),
('Catherine'),
('Daniel'),
('Haley'),
('Hana'),
('Tracey'),
('William'),
('Jennifer'),
('Tinny'),
('Kenneth'),
('Michelle'),
('Benjamin'),
('Mandy'),
('David'),
('James'),
('Robert'),
('Melanie'),
('Alejandro'),
('Heather'),
('Miguel'),
('Samantha'),
('Jesse'),
('Charles'),
('Erika'),
('Katelyn'),
('Mariah'),
('James'),
('Stephanie'),
('Anthony'),
('Paula'),
('Brian'),
('Christina'),
('Jenn'),
('Megan'),
('Linda'),
('Todd'),
('Barbara'),
('Sharon'),
('Toni'),
('Kelsey'),
('Jessica'),
('Sherry'),
('William'),
('Shane'),
('Joseph'),
('Kevin'),
('Dana'),
('Steven'),
('Denise'),
('Richard'),
('Hannah'),
('Stephanie'),
('Kimberly'),
('Aaron'),
('Wanda'),
('Linda'),
('Mason'),
('Stephanie'),
('Taylor'),
('Ann'),
('Jeffrey'),
('Edward'),
('Jeremy'),
('Dawn'),
('Janet'),
('Amanda'),
('Eileen'),
('Amy'),
('James');
/* Добавим недостающее имя*/
insert into employee(employee_name)
values ('Sophiya');

/*Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
*/
create table salary(
	id serial primary key,
	monthly_salary int not null);
select * from salary;
insert into salary(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
/*Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
*/
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);

select * from employee_salary;

delete from  employee_salary;


insert into employee_salary(id,employee_id,salary_id)
values  (1,3,7),		
		(2,1,4),
		(3,5,9),
		(4,40,13),
		(5,23,4),
		(6,11,2),
		(7,52,10),
		(8,15,13),
		(9,26,4),
		(10,16,1),
		(11,33,7),
		(12,86,15),
		(13,2,11),
		(14,72,15),
		(15,4,5),
		(16,42,7),
		(17,43,6),
		(18,96,5),
		(19,7,2),
		(20,83,12),
		(21,81,11),
		(22,45,9),
		(23,46,8),
		(24,80,5),
		(25,90,9),
		(26,69,9),
		(27,97,14),
		(28,78,13),
		(29,105,14),
		(30,36,1),
		(31,25,12),
		(32,17,15),
		(33,19,14),
		(34,44,4),
		(35,66,6),
		(36,9,9),
		(37,59,5),
		(38,8,7),
		(39,31,11),
		(40,29,13);
		
/* Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:
*/
create table roles(
id serial primary key,
role_name int not null unique);

select * from roles;

alter table roles
alter column role_name type varchar(30);

insert into roles(id,role_name)
values (1,'Junior Python developer'),
(2,'Middle Python developer'),
(3,'Senior Python developer'),
(4,'Junior Java developer'),
(5,'Middle Java developer'),
(6,'Senior Java developer'),
(7,'Junior JavaScript developer'),
(8,'Middle JavaScript developer'),
(9,'Senior JavaScript developer'),
(10,'Junior Manual QA engineer'),
(11,'Middle Manual QA engineer'),
(12,'Senior Manual QA engineer'),
(13,'Project Manager'),
(14,'Designer'),
(15,'HR'),
(16,'CEO'),
(17,'Sales manager'),
(18,'Junior Automation QA engineer'),
(19,'Middle Automation QA engineer'),
(20,'Senior Automation QA engineer');

/*Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:
*/
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employee(id),
foreign key (role_id)
	references roles(id)
);

select * from roles_employee ;

insert into roles_employee(id,employee_id,role_id)
values  (1,7,2), 
		(2,20,4),
		(3,3,9),
		(4,5,13),
		(5,23,4),
		(6,11,2),
		(7,10,9),
		(8,24,13),
		(9,21,3),
		(10,34,4),
		(11,6,7),
		(12,56,20),
		(13,54,19),
		(14,53,18),
		(15,52,17),
		(16,51,16),
		(17,30,15),
		(18,31,14),
		(19,32,13),
		(20,33,12),
		(21,35,11),
		(22,36,10),
		(23,66,6),
		(24,55,5),
		(25,44,4),
		(26,22,2),
		(27,13,3),
		(28,19,9),
		(29,69,9),
		(30,70,20),
		(31,59,18),
		(32,65,7),
		(33,48,9),
		(34,16,5),
		(35,62,6),
		(36,50,7),
		(37,40,13),
		(38,14,14),
		(39,15,15),
		(40,60,9);
		