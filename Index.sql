use customers;
show tables;

#create table student
create table student(
id int not null,
first_name varchar(25),
last_name varchar(25),
age int 
);

#To display table description
desc student;

#create index with single coloumn
create index index_age
on student(age);

#create index with multiple coloumn
create index index_age_first_name
on student(age,first_name);

#insert the values 
insert into  student 
value 
(1,'aniket','shinde',20);

#display the table
select * from student;

#drop the single column
alter table student
drop index index_age;

#drop the multiple column
alter table student 
drop index index_age_first_name;

#display the description 
desc student;