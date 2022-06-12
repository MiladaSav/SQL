
/* 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.*/

select employee_name, salary.monthly_salary from employee_salary
join employee on employee_salary.employee_id = employee.id 
join salary on salary.id = employee_salary.salary_id ;

select * from roles_employee ;

/*2. Вывести всех работников у которых ЗП меньше 2000.*/

select employee_name, monthly_salary from employee_salary
join employee on employee_salary.employee_id = employee.id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000;

/*3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/


select employee_id, monthly_salary from employee_salary 
join salary on salary.id = employee_salary.salary_id
where employee_id > 70 ;

select employee_id, monthly_salary from employee_salary
full join employee on employee_salary.employee_id = employee.id 
join salary on salary.id = employee_salary.salary_id
where employee.id is null;

/*4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/
select employee_id, monthly_salary from employee_salary
full join employee on employee_salary.employee_id = employee.id 
join salary on salary.id = employee_salary.salary_id
where employee.id is null and  monthly_salary < 2000;

/*5. Найти всех работников кому не начислена ЗП.*/
select employee_name, monthly_salary  from employee
full join employee_salary es on es.employee_id = employee.id
full join salary s on s.id = es.salary_id
where monthly_salary is null;

/*6. Вывести всех работников с названиями их должности.*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id;

/*7. Вывести имена и должность только Java разработчиков.*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
where role_name like '%Java devel%';

/*8. Вывести имена и должность только Python разработчиков.*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
where role_name like '%Python devel%';

/*9. Вывести имена и должность всех QA инженеров.*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
where role_name like '%QA eng%';

/*10. Вывести имена и должность ручных QA инженеров.*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
where role_name like '%Manual QA eng%';

/*11. Вывести имена и должность автоматизаторов QA*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
where role_name like '%Automation QA eng%';

/* 12. Вывести имена и зарплаты Junior специалистов*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Junior%';

/*13. Вывести имена и зарплаты Middle специалистов*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Middle%';

select employee_name , monthly_salary , role_name from employee e  /* Проверка по должностям и зп*/
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id
full join employee_salary es on es.employee_id = re.employee_id 
full join salary s on s.id = es.salary_id
where role_name is not null and monthly_salary is not null;

/*14. Вывести имена и зарплаты Senior специалистов*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Senior%';

/*15. Вывести зарплаты Java разработчиков*/
select  monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Java devel%';

 /* 16. Вывести зарплаты Python разработчиков*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Python devel%';

/*17. Вывести имена и зарплаты Junior Python разработчиков*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Junior Python devel%';

/*18. Вывести имена и зарплаты Middle JS разработчиков*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Middle JavaScript%';

/*19. Вывести имена и зарплаты Senior Java разработчиков*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Senior Java devel%';

/*20. Вывести зарплаты Junior QA инженеров*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Junior% QA engineer%';

/*21. Вывести среднюю зарплату всех Junior специалистов*/
select AVG(monthly_salary) as Среднее from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Junior%';

/*22. Вывести сумму зарплат JS разработчиков*/
select sum(monthly_salary) as SUM from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%JavaScript%';

/*23. Вывести минимальную ЗП QA инженеров*/
select min(monthly_salary) as MIN_QA from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%QA%';

/*24. Вывести максимальную ЗП QA инженеров*/
select max(monthly_salary) as MAX_QA from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%QA%';

/*25. Вывести количество QA инженеров*/
select count(employee_name) as COUNT_QA from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where role_name like '%QA%';

/*26. Вывести количество Middle специалистов.*/
select count(employee_name) as COUNT_Middle from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where role_name like '%Middle%';

/*27. Вывести количество разработчиков*/
select count(employee_name) as COUNT_Dev from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where role_name like '%devel%';

/*28. Вывести фонд (сумму) зарплаты разработчиков.*/
select sum(monthly_salary) as fond_Dev from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where role_name like '%devel%';

/*29. Вывести имена, должности и ЗП всех специалистов по возрастанию*/
select employee_name , role_name , monthly_salary from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
order by monthly_salary asc;	

/*30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300*/
select employee_name , role_name , monthly_salary from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

/* 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300*/
select employee_name , role_name , monthly_salary from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where monthly_salary < 2300
order by monthly_salary asc;

/*32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000*/
select employee_name , role_name , monthly_salary from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where monthly_salary in (1100,1500,2200)
order by monthly_salary asc;
