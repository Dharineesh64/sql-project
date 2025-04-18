use dk;

create table customers (salesman_id int,customer_id int, cust_name varchar(25),city varchar(25),grade tinyint);

alter table customers modify grade int;
insert into customers values
(5001,3002,'Nick Rimando','New York',100),
(5001,3007,'Brad Davis','New York',200),
(5002,3005,'Graham Zusi','California',200),
(5002,3008,'Julian Green','Landon',300),
(5006,3004,'Fabian Johnson', 'Paris',300),
(5003,3009,'Geoff Cameran','Berlin',100),
(5007,3003,'Jozy Altidor','Moscow',200);
insert into customers (salesman_id,customer_id,cust_name,city)values
(5005,3001,"Brad Guzan","London");

select * from customers;


create table salesman (id int primary key, name varchar(35),city varchar(35),commission float);

insert into salesman values
(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12);

select * from salesman;

create table cust(salesman_id int,customer_id int, cust_name varchar(25),city varchar(25),grade int,foreign key(salesman_id) references salesman(id));

insert into cust values
(5001,3002,'Nick Rimando','New York',100),
(5001,3007,'Brad Davis','New York',200),
(5002,3005,'Graham Zusi','California',200),
(5002,3008,'Julian Green','Landon',300),
(5006,3004,'Fabian Johnson', 'Paris',300),
(5003,3009,'Geoff Cameran','Berlin',100),
(5007,3003,'Jozy Altidor','Moscow',200);

insert into cust (salesman_id,customer_id,cust_name,city)values
(5005,3001,"Brad Guzan","London");

select * from cust;

select salesman.id, salesman.name,cust.customer_id, cust.cust_name,salesman.city from salesman inner join cust on salesman.id=cust.salesman_id;

select s.name,c.cust_name,s.city from salesman as s  inner join cust as c on s.city=c.city;




