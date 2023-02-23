show databases;
use customers;

create table student(
id int  not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);
desc student;

alter table student modify age int  not null;

create table person(
id int not null,
first_name varchar(28) not null,
last_name varchar(29) not null,
age int not null,
unique(id)
);

insert into person values(1,'umesh2','adhari2',20);

select * from person;
#after create  the table then you can add unique constraints
alter table person
add unique(first_name);

#2 way to add constraints for coloumn name 
alter table person 
add constraint uc_person unique(age,first_name);

desc person;

#drop this constratints 
alter table person
drop index uc_person;

-- Primary key
create table person1(
id int not null,
first_name varchar(24) not null,
last_name varchar(23),
age int,
constraint pk_person primary key(id,last_name)
);
#it is show table scehma
desc person1;

#drop primary key
alter table person1
drop primary key;

#how to add primary key after the create table 
alter table person1
add primary key(id);