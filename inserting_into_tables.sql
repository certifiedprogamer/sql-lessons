-- inserting into a table
use cmp_kesowers;

-- inserting a single row
insert into employees values (1, "Bryan", "Burwell", 999.99, "2025-10-15") on duplicate key update employee_id=employee_id;


-- inserting multiple rows at once:

insert into employees values
(2, "Jackson", "Brink", 1.00, "2025-10-16"),
(3, "Josh", "Miller", 15.00, "2025-10-17"),
(4, "Kerry", "Sowers", 50.00, "2025-10-18")
on duplicate key update employee_id=employee_id;

select * from employees;

-- what happens when you don't give all the data?
-- insert into employees values (5, "Vince", "Kuhl")
-- to make the above work:
insert into employees (employee_id, first_name, last_name)
values (5, "Vince", "Kuhl") on duplicate key update employee_id=employee_id;

-- specify any column order you want:
insert into employees (last_name, first_name, employee_id)
values ("Russell", "Arlo", 6) on duplicate key update employee_id=employee_id;