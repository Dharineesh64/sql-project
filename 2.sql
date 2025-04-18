show databases;
create database college1;
use college1;
create table students (id int,name varchar(100),age int,Grade varchar(10));
desc students;
insert into students ()values
(1,"prakash",22,"A"),
(2,"gowtham",30,"B"),
(3,"jeeva",26,"C"),
(4,"kumar",19,"A"),
(5,"deva",25,"C"),
(6,"sanjay",27,"B");
select * from students;
select * from students where grade="a";
select * from students where age between 20 and 25 ;
select name from students;
select distinct (grade)from students;