use customers;
create table student1(
studentid int auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
primary key(studentid)
);

select * from student1;

insert into student1 values(1,"sanket","jadhav",22),
(2,"Ram","sharma",21),
(3,"sam","joe",25); 

create table department(
studentid int auto_increment,
department_name varchar(25) not null,
foreign key(studentid) references student1(studentid)
);

desc department;

insert into department values(1,'computer science'),
(2,'Electronics'),
(3,'Mechanical');

select * from department;
select * from student1;

#create the view 
create view student1_info as
#inner join
select first_name, last_name, age from student1 inner join department
using(studentid);

#display the table
select * from student1_info; 

#drop the view 
drop view student1_info;
drop table department;
drop table  student1;