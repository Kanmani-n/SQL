create database company;
use company;
-- 1. Write an SQL statement to create a table named Departments with the following columns:
-- dept_id (Primary Key, INT)
-- department_name (VARCHAR(50))

create table Departments (dept_id int primary key ,department_name varchar(50));

-- 2. Alter the Employees table to add a new column email of type VARCHAR(100).

create table Employe (emp_id int primary key, first_name varchar(50), last_name varchar(50), salary decimal(10,2),
    dept_id int);
    
alter table Employe add email varchar(100);
select * from employe;
 
-- 3.Insert three employee records into the Employees table with emp_id, first_name, last_name, salary, and department_id.

insert into Employe(emp_id, first_name, last_name, salary, dept_id, email)
values(101, 'Arun', 'Mehta', 55000, 1,'mehtaabc@gmail.com'),
(102, 'Ravi', 'Sharma', 62000, 2,'raviabc@gmail.com'),
(103, 'Rahul', 'Verma', 48000, 1,'rahulabc@gmail.com');

-- 4.Write an SQL statement to update the salary of all employees in department 101 by 15%.

update Employe set salary = salary * 1.15 where dept_id = 1;

-- 5.Delete all employees whose salary is less than 40,000.

delete from Employe where salary < 40000;

-- 6. Write a query to display the total salary of all employees using the SUM() function.

select sum(salary) as total_salary from Employe;

-- 7.Write a query to display the highest and lowest salary in the Employees table using MAX() and MIN().

select max(salary) as highest_salary, min(salary) as lowest_salary from Employe;

-- 8.Write a query to display employee names in uppercase using the UPPER() function.

select upper(first_name) as first_name_upper, upper(last_name) as last_name_upper from Employe;

-- 9. Write a query using an INNER JOIN to display employees along with their department names.

select e.emp_id, e.first_name, e.last_name, e.salary, d.department_name from Employe e inner join Departments d on e.department_id = d.dept_id;

-- 10. Write a query using a LEFT JOIN to display all employees, even if they do not belong to any department.

select e.emp_id, e.first_name, e.last_name, e.salary, d.department_name from Employe e left join Departments d on e.department_id = d.dept_id;

-- 11. Write a query to find the total number of employees in the Employees table using an aggregate function.

select  count(*) as total_employees from Employe;

-- 12. Write a query to display the average salary of employees in each department using AVG().

select department_id, avg(salary) as average_salary from Employe group by department_id;

-- 13. Write a query to display employee names where the last 3 characters of their first name are shown using the SUBSTRING() (or RIGHT()) function.

 select first_name, right(first_name, 3) as last_three_chars from Employe;

-- 14. Write a query to display the current date and time using a date/time function.

SELECT GETDATE() AS current_datetime;

SELECT NOW() AS current_datetime;

-- 15. Write a query to display the length of each employee’s first name using the LENGTH() function.

select first_name, length(first_name) as name_length from Employe;









