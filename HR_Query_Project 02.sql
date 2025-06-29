use hr;
 
-- List the highest and lowest salaries offered for each job title.
select title, 
	min(e.salary) as lowest_salary,
	max(e.salary) as highest_salary
from job j, employee e
where j.id = e.job_id
group by j.title;

-- Find all employees who earn a salary higher than the average salary of their department
with d_avg as 
	(select department_id, avg(salary) as salary_avg
    from employee
    group by department_id)
select e.*, d.name as department_name, d_avg.salary_avg
from employee e, department d, d_avg 
where (e.department_id, e.department_id) = (d.id, d_avg.department_id)
and e.salary > d_avg.salary_avg;

-- Calculate the total budget for each region, summing the budgets of all departments in that region
select  r.name as region_name, sum(d.budget) as total_budget
from region r, country c, location l, department d 
where (r.id, c.id, l.id) = (c.region_id, l.country_id, d.location_id)
group by r.name;

-- Find the department with the highest number of employees and the count of employees in that department.
with d_count as 
	(select d.name as dept_name, d.id as dept_id, d.location_id as dept_loc, 
			d.budget as dept_bud, count(*) as employee_count
    from employee e, department d
    where e.department_id = d.id
    group by d.name, d.id, d.location_id, d.budget)
select d_count.*
from d_count
where employee_count = (select max(employee_count) from d_count);

-- List all employees who are managers of departments, including their name, department name, and location.
select concat(e.first_name,' ', e.last_name) as name, d.name as department_name,
       l.id as location_id, l.street, l.postal_code, l.state, l.country_id
from employee e, dept_manager m, department d, location l
where (e.id, e.department_id, d.location_id) = (m.manager_id, d.id, l.id);
