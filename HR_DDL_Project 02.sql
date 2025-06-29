drop database hr;
create database hr;
use hr;

create table region
	(id int,
    name varchar(45),
    primary key (id)
    );
    
create table country
	(id int,
    name varchar(45),
    region_id int ,
    primary key (id),
    foreign key (region_id) references region(id)
    );

create table location
	(id int,
    street varchar(45),
    postal_code varchar(45),
    state varchar(45),
    country_id int,
    primary key(id),
    foreign key(country_id) references country(id)
    );

create table department
    (id int,
    name varchar(45),
    location_id int,
    budget double,
    primary key(id),
    foreign key (location_id) references location(id)
    );
    
create table job
	(id int,
    title varchar(45),
    description varchar(145),
    min_salary int,
    max_salary int,
    primary key (id)
    );
    
 create table employee
	(id int,
    first_name varchar(45),
    last_name varchar(45),
    email varchar(45),
    phone varchar(45),
    hire_date DATE,
    job_id int,
    salary int,
    commission_percentage double,
    department_id int,
    primary key (id),
    foreign key (job_id) references job(id),
    foreign key (department_id) references department(id)
    );

create table job_history
	(employee_id int,
    start_date date,
    end_date date,
    job_id int,
    department_id int,
    primary key (employee_id, start_date),
    foreign key (department_id) references department(id),
    foreign key (job_id) references job(id),
    foreign key (employee_id) references employee(id)
    );


create table emp_sup (
    employee_id int,
    supervisor_id int not null,
    primary key (employee_id), 
    foreign key (employee_id) references employee(id),
    foreign key (supervisor_id) references employee(id)
);

create table dept_manager (
    department_id int,
    manager_id int not null,
    primary key (department_id),
    foreign key (department_id) references department(id),
    foreign key (manager_id) references employee(id)
);