use mydb;

create table Department(department_id int primary key auto_increment, name varchar(60) not null, location varchar(100));

describe Department;

create table Employees(employee_id int primary key auto_increment, name varchar(100) not null, department_id int, foreign key (department_id)
						references Department(department_id));

describe Employees;

Insert into Department (name, location) values("IT","Berlin"),("IT",""),("HR","Frankfurt"),("Production","Hannover");
Insert into Department (name, location) values("IT","New York");

select * from Department;

Insert into Employees(name,department_id) values("David Wilson",2),("Maria Joao",3),("Peter Pan",4),("John Cash",5);
Insert into Employees(name,department_id) values("Michael Brown",2);

Select * from Employees;

Delete from Employees where name = "Michael Brown";

Update Department Set location = "Chicago" where location = "New York";

Update Department Set location = "New York" where department_id = 2;

Select * from Department right join Employees on Department.department_id = Employees.department_id;

delete from Department where department_id = 2;

