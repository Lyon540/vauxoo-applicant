-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
Id_empleado	Int,
first_name  Varchar(50),
last_name	varchar(80)
);

Insert into employee values(1,'Luis','Guerrero');
Insert into employee values(2,'Tania','Gutierrez');
Insert into employee values(3,'Rocio','Solis');
Insert into employee values(4,'Guadalupe','Puente');

Create table employee_department(
Id_dept		Int Primary key,
name_dept	Varchar(50),
Descripcion Varchar(50)
);

Insert into employee_department values(10001,'Finanzas','Controla la sitacion financiera de la empresa');
Insert into employee_department values(10002,'Ventas','Se lleva control de los productos vendidos ');
Insert into employee_department values(10003,'Produccion', 'Se producen los articulos a vender');
Insert into employee_department values(10004,'Soporte','Da ayuda a equipos de computo en general');
Insert into employee_department values(10005,'Sistemas','Atiende reportes y soluciona problemas');
Insert into employee_department values(10006,'Desarrollo','Realiza modificaciones al programa');

Create table Emp_dept(
Id_empleado	Int,
Id_dept		int,
name_dept	Varchar(50)
);

insert into Emp_dept values (2,10002,'Ventas');
insert into Emp_dept values (1,10006,'Desarrollo');
insert into Emp_dept values (3,10004,'Soporte');
insert into Emp_dept values (4,10003,'Produccion');

Select Emp_dept.Id_empleado, Emp_dept.name_dept, employee.first_name, employee.last_name  from Emp_dept
Inner join employee
On Emp_dept.Id_empleado=employee.Id_empleado;

CREATE TABLE employee_department (
);

CREATE TABLE employee_hobby (
);

-- ...
