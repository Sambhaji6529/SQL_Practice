## SQL Joins
/*
1. Inner Join
2. Left Join 
3. Right Join
4. Full Join
5. Natural Join 
6. Cross Join
*/
#use the database
use customers;
select * from student;
drop table student;

#create table 
create table student(
studentid int auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
primary key(studentid)
);

desc student;

#insert the values 
insert into student values(1,'ram','sharma',21),
(2,'sam','jon',22),
(3,'sambhaji','sonwane',22),
(4,'Aniket','shinde',25);

#display the value on the table 
select * from student;

#create table 
create table department(
studentid int auto_increment,
department_name varchar(27) not null,
foreign key(studentid) references student(studentid)
);

desc department;

#insert into values on the table 
insert into department values(1,'computer science'),
(2,'Mechanical'),
(3,'Electronics');

select * from department;

insert into student values(5,'Ramesh','singh',25);

## Inner Join
#select * from student inner join department 
#on student.studentid=department.studentid;
#column wise
select student.first_name,student.last_name,student.age,department.department_name
from student inner join department
on student.studentid=department.studentid;

##left join 
select student.first_name,student.last_name,student.age,department.department_name
from student left join department
on student.studentid=department.studentid;

##Right Join 
select student.first_name,student.last_name,student.age,department.department_name 
from student right join department
on student.studentid=department.studentid;

##Full outer join 
select student.first_name,student.last_name,student.age,department.department_name
from student left join department 
on student.studentid=department.studentid

union

select student.first_name,student.last_name,student.age,department.department_name
from student right join department
on student.studentid=department.studentid;

## cross join 
select student.first_name,student.last_name,student.age,department.department_name
from student cross join department;

## Natural join
select student.first_name,student.last_name,student.age,department.department_name
from student natural join department;
