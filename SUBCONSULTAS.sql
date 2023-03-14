select * from employees;
select * from locations;
select * from departments where department_name = 'Executive';

/* 2 */
select employee_id, last_name, salary from employees 
where salary > all (select avg(salary) from employees)
order by salary;

/* 3 */
select employee_id, last_name from employees
where department_id in (select department_id from employees where last_name like lower('%u%') );

/* 4 */
select a.last_name, b.department_id, a.job_id from employees a
inner join departments b
on a.department_id = b.department_id
inner join locations c
on b.location_id = c.location_id
where c.location_id = 1700;

select last_name, department_id, job_id from employees
where department_id in (select department_id from departments where location_id = 1700);

/* 5 */
select last_name, salary from employees
where manager_id = 100;

/* 6 */
select a.department_id, a.last_name, a.job_id from employees a
inner join departments b
on a.department_id = b.department_id
where b.department_name = 'Executive';

select department_id, last_name, job_id from employees
where department_id in (select department_id from departments where department_name = 'Executive');

/* 7 */
select employee_id, last_name, salary from employees 
where salary > all (select avg(salary) from employees) and
department_id in (select department_id from employees where last_name like lower('%u%') )
order by salary;

