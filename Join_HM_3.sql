
/* 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.*/

select employee_name, salary.monthly_salary from employee_salary
join employee on employee_salary.employee_id = employee.id 
join salary on salary.id = employee_salary.salary_id ;

select * from roles_employee ;

/*2. ������� ���� ���������� � ������� �� ������ 2000.*/

select employee_name, monthly_salary from employee_salary
join employee on employee_salary.employee_id = employee.id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000;

/*3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)*/


select employee_id, monthly_salary from employee_salary 
join salary on salary.id = employee_salary.salary_id
where employee_id > 70 ;

select employee_id, monthly_salary from employee_salary
full join employee on employee_salary.employee_id = employee.id 
join salary on salary.id = employee_salary.salary_id
where employee.id is null;

/*4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)*/
select employee_id, monthly_salary from employee_salary
full join employee on employee_salary.employee_id = employee.id 
join salary on salary.id = employee_salary.salary_id
where employee.id is null and  monthly_salary < 2000;

/*5. ����� ���� ���������� ���� �� ��������� ��.*/
select employee_name, monthly_salary  from employee
full join employee_salary es on es.employee_id = employee.id
full join salary s on s.id = es.salary_id
where monthly_salary is null;

/*6. ������� ���� ���������� � ���������� �� ���������.*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id;

/*7. ������� ����� � ��������� ������ Java �������������.*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
where role_name like '%Java devel%';

/*8. ������� ����� � ��������� ������ Python �������������.*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
where role_name like '%Python devel%';

/*9. ������� ����� � ��������� ���� QA ���������.*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
where role_name like '%QA eng%';

/*10. ������� ����� � ��������� ������ QA ���������.*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
where role_name like '%Manual QA eng%';

/*11. ������� ����� � ��������� ��������������� QA*/
select employee_name , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
where role_name like '%Automation QA eng%';

/* 12. ������� ����� � �������� Junior ������������*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Junior%';

/*13. ������� ����� � �������� Middle ������������*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Middle%';

select employee_name , monthly_salary , role_name from employee e  /* �������� �� ���������� � ��*/
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id
full join employee_salary es on es.employee_id = re.employee_id 
full join salary s on s.id = es.salary_id
where role_name is not null and monthly_salary is not null;

/*14. ������� ����� � �������� Senior ������������*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Senior%';

/*15. ������� �������� Java �������������*/
select  monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Java devel%';

 /* 16. ������� �������� Python �������������*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Python devel%';

/*17. ������� ����� � �������� Junior Python �������������*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Junior Python devel%';

/*18. ������� ����� � �������� Middle JS �������������*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Middle JavaScript%';

/*19. ������� ����� � �������� Senior Java �������������*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Senior Java devel%';

/*20. ������� �������� Junior QA ���������*/
select employee_name , monthly_salary , role_name from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Junior% QA engineer%';

/*21. ������� ������� �������� ���� Junior ������������*/
select AVG(monthly_salary) as ������� from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%Junior%';

/*22. ������� ����� ������� JS �������������*/
select sum(monthly_salary) as SUM from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%JavaScript%';

/*23. ������� ����������� �� QA ���������*/
select min(monthly_salary) as MIN_QA from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%QA%';

/*24. ������� ������������ �� QA ���������*/
select max(monthly_salary) as MAX_QA from employee e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where role_name like '%QA%';

/*25. ������� ���������� QA ���������*/
select count(employee_name) as COUNT_QA from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where role_name like '%QA%';

/*26. ������� ���������� Middle ������������.*/
select count(employee_name) as COUNT_Middle from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where role_name like '%Middle%';

/*27. ������� ���������� �������������*/
select count(employee_name) as COUNT_Dev from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where role_name like '%devel%';

/*28. ������� ���� (�����) �������� �������������.*/
select sum(monthly_salary) as fond_Dev from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where role_name like '%devel%';

/*29. ������� �����, ��������� � �� ���� ������������ �� �����������*/
select employee_name , role_name , monthly_salary from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
order by monthly_salary asc;	

/*30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300*/
select employee_name , role_name , monthly_salary from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

/* 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300*/
select employee_name , role_name , monthly_salary from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where monthly_salary < 2300
order by monthly_salary asc;

/*32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000*/
select employee_name , role_name , monthly_salary from employee e 
join roles_employee re on re.employee_id = e.id 
join employee_salary es on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
join salary s on s.id = es.salary_id
where monthly_salary in (1100,1500,2200)
order by monthly_salary asc;
