use hr;
insert into region(id,name)
values 
(1, 'Asian'),
(2, 'Europe');

insert into country (id,name,region_id)
values 
(1, 'Viet Nam', 1),
(2, 'Germany', 2),
(3, 'Campuchia', 1);

insert into location (id,street,postal_code,state,country_id)
values
(1, '123 Cau Giay',1001, 'Ha Noi', 1),
(2, '456 Maximilian', 1002, 'Muinch', 2),
(3, '789 Monivong',1003, 'Phnom penh',3),
(4, '321 Nguyen Hue',1004, 'Ho Chi Minh',1),
(5, '654 Linien', 1005,'Dortmund', 2);

insert into department (id,name, location_id, budget)
values
(1, 'Production', 2, 300000),
(2, 'IT', 2, 400000),
(3, 'Sales', 3, 500000),
(4, 'Finance', 4, 600000),
(5, 'Marketing', 5, 700000),
(6, 'Accounting',1, 800000);

insert into job (id, title, description, min_salary, max_salary) 
values
(1, 'Production Director', 'Leads production strategy and operations.', 90000, 120000),
(2, 'Chief Technology Officer (CTO)', 'Leads tech strategy and innovation', 90000, 120000),
(3, 'Sales Director', 'Leads sales strategy and performance', 90000, 120000),
(4, 'Chief Financial Officer (CFO)', 'Leads financial strategy and planning', 90000, 120000),
(5, 'Marketing Director', 'Leads marketing strategies and campaigns.', 90000, 120000),
(6, 'Chief Accounting Officer (CAO)', 'Leads overall accounting strategy', 90000, 120000),
(7, 'Production Assistant', 'Handles admin tasks and supports production', 5000, 20000),
(8, 'Production Supervisor', 'Manages daily production and workers', 30000, 50000),
(9, 'Production Manager', 'Oversees production efficiency and quality', 50000, 80000),
(10, 'IT Support Specialist', 'Solves user tech issues', 5000, 20000),
(11, 'Systems Administrator', 'Manages IT infrastructure', 30000, 50000),
(12, 'IT Manager', 'Oversees IT operations and teams', 50000, 80000),
(13, 'Sales Representative', 'Sells products and services', 5000, 20000),
(14, 'Sales Executive', 'Develops key client relationships', 30000, 50000),
(15, 'Sales Manager', 'Manages sales teams and goals', 50000, 80000),
(16, 'Finance Assistant', 'Supports financial tasks and reports', 5000, 20000),
(17, 'Financial Analyst', 'Analyzes financial data for decision-making.', 30000, 50000),
(18, 'Finance Manager', 'Oversees financial operations and budgeting.', 50000, 80000),
(19, 'Marketing Assistant', 'Assists in campaigns and event coordination.', 5000, 20000),
(20, 'Marketing Specialist', 'Focuses on specific marketing areas (e.g., digital).', 30000, 50000),
(21, 'Marketing Manager', 'Manages marketing teams and strategies.', 50000, 80000),
(22, 'Accounting Clerk', 'Handles basic accounting tasks (data entry).', 5000, 20000),
(23, 'Staff Accountant', 'Manages day-to-day accounting activities.', 30000, 50000),
(24, 'Accounting Manager', 'Oversees the accounting department and compliance.', 50000, 80000);

insert into employee (id, first_name, last_name, email, phone, hire_date, job_id, salary, commission_percentage, department_id)
values
(1, 'A', 'Nguyen', 'nguyenA@gmail.com', '111111111', '2021-01-01', 1, 95000, 0.05, 1),
(2, 'B', 'Pham', 'phamB@gmail.com', '111122222', '2020-05-15', 2, 97000, 0.05, 2),
(3, 'C', 'Tran', 'tranC@gmail.com', '111133333', '2021-03-10', 3, 99000, 0.05, 3),
(4, 'D', 'Le', 'leD@gmail.com', '111144444', '2019-08-25', 4, 101000, 0.05, 4),
(5, 'E', 'Phan', 'phanE@gmail.com', '111155555', '2022-06-01', 5, 103000, 0.05, 5),
(6, 'F', 'Vo', 'voF@gmail.com', '111166666', '2021-09-10', 6, 105000, 0.05, 6),
(7, 'J', 'Do', 'doG@gmail.com', '111177777', '2019-11-05', 7, 9000, 0.04, 1),
(8, 'H', 'Hoang', 'hoangH@gmail.com', '111188888', '2020-02-20', 8, 35000, 0.05, 1),
(9, 'I', 'Ly', 'lyI@gmail.com', '111199999', '2020-03-18', 9, 60000, 0.06, 1),
(10, 'J', 'Tran', 'tranJ@gmail.com', '111211110', '2021-12-30', 10, 15000, 0.03, 2),
(11, 'K', 'Vo', 'voK@gmail.com', '111222222', '2021-07-22', 11, 40000, 0.02, 2),
(12, 'L', 'Do', 'doL@gmail.com', '111222222', '2019-04-17', 12, 65000, 0.03, 2),
(13, 'M', 'Nguyen', 'nguyenM@gmail.com', '111233333', '2022-01-05', 13, 6000, 0.02, 3),
(14, 'N', 'Pham', 'phamN@gmail.com', '111244444', '2020-10-12', 14, 45000, 0.01, 3),
(15, 'O', 'Tran', 'tranO@gmail.com', '111255555', '2021-11-19', 15, 70000, 0.05, 3),
(16, 'P', 'Le', 'leP@gmail.com', '111266666', '2020-09-30', 16, 8000, 0.06, 4),
(17, 'Q', 'Phan', 'phanQ@gmail.com', '111277777', '2022-08-21', 17, 35000, 0.03, 4),
(18, 'R', 'Vo', 'voR@gmail.com', '111288888', '2021-04-14', 18, 6000, 0.02, 4),
(19, 'S', 'Do', 'doS@gmail.com', '111299999', '2020-12-28', 19, 7000, 0.03, 5),
(20, 'T', 'Hoang', 'hoangT@gmail.com', '111311110', '2019-07-03', 20, 45000, 0.02, 5),
(21, 'U', 'Ly', 'lyU@gmail.com', '111322222', '2021-02-16', 21, 70000, 0.01, 5),
(22, 'V', 'Tran', 'tranV@gmail.com', '111333333', '2022-03-08', 22, 15000, 0.02, 6),
(23, 'W', 'Le', 'leW@gmail.com', '111344444', '2022-06-24', 23, 35000, 0.03, 6),
(24, 'X', 'Phan', 'phanX@gmail.com', '111355555', '2021-10-02', 24, 65000, 0.01, 6),
(25, 'Y', 'Nguyen', 'nguyenY@gmail.com', '11136666', '2021-09-02',22, 15000,0.01,6),
(26, 'Z', 'Pham', 'phamZ@gmail.com', '11137777', '2023-02-11', 19, 7000, 0.01, 5);

insert into job_history (employee_id, start_date, end_date, job_id, department_id) 
values
(1, '2018-01-01', '2018-12-31', 13, 3),
(1, '2019-01-01', '2019-12-31', 8, 1),
(1, '2020-01-01', '2020-12-31', 12, 2),
(2, '2018-01-01', '2018-12-31', 11, 2),
(2, '2019-01-01', '2020-05-14', 12, 2),
(3, '2019-01-01', '2021-03-09', 15, 3),
(4, '2017-08-25', '2018-08-24', 24, 6),
(4, '2018-08-25', '2019-08-24', 18, 4),
(5, '2021-01-01', '2022-05-31', 20, 5),
(6, '2018-01-01', '2019-12-31', 17, 4),
(6, '2020-01-01', '2021-09-09', 24, 6),
(9, '2018-01-01', '2020-03-17', 8, 1),
(12, '2018-01-01', '2018-12-31', 10, 2),
(12, '2019-01-01', '2019-04-16', 11, 2),
(19, '2019-01-01', '2020-12-27', 14, 3),
(20, '2018-01-01', '2019-07-02', 19, 5),
(21, '2019-01-01', '2021-02-15', 20, 5),
(24, '2020-01-01', '2021-10-01', 23, 6),
(1, '2021-01-01', NULL, 1, 1),
(2, '2020-05-15', NULL, 2, 2),
(3, '2021-03-10', NULL, 3, 3),
(4, '2019-08-25', NULL, 4, 4),
(5, '2022-06-01', NULL, 5, 5),
(6, '2021-09-10', NULL, 6, 6),
(7, '2019-11-05', NULL, 7, 1),
(8, '2020-02-20', NULL, 8, 1),
(9, '2020-03-18', NULL, 9, 1),
(10, '2021-12-30', NULL, 10, 2),
(11, '2021-07-22', NULL, 11, 2),
(12, '2019-04-17', NULL, 12, 2),
(13, '2022-01-05', NULL, 13, 3),
(14, '2020-10-12', NULL, 14, 3),
(15, '2021-11-19', NULL, 15, 3),
(16, '2020-09-30', NULL, 16, 4),
(17, '2022-08-21', NULL, 17, 4),
(18, '2021-04-14', NULL, 18, 4),
(19, '2020-12-28', NULL, 19, 5),
(20, '2019-07-03', NULL, 20, 5),
(21, '2021-02-16', NULL, 21, 5),
(22, '2022-03-08', NULL, 22, 6),
(23, '2020-06-24', NULL, 23, 6),
(24, '2021-10-02', NULL, 24, 6),
(25, '2021-09-02', NULL, 22, 6),
(26, '2023-02-11', NULL, 19, 5);

insert into emp_sup (employee_id, supervisor_id)
values
(9, 1),
(12, 2),
(15, 3),
(18, 4),
(21, 5),
(24, 6),
(7, 8),
(8, 9),
(10, 11),
(11, 12),
(13, 14),
(14, 15),
(16, 17),
(17, 18),
(19, 20),
(20, 21),
(22, 23),
(23, 24);

insert into dept_manager(department_id, manager_id)
values
(1,9),
(2,12),
(3,15),
(4,18),
(5,21),
(6,24);
