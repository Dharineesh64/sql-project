create database tvk;
use tvk;
create table orders1(ord_id int,purch_amt float,ord_date date,customer_id int,salesman_id int);
insert into orders1(ord_id,purch_amt,ord_date,customer_id,salesman_id)values
(70001,150.5,"2012-10-05",3005,5002),
(70009,270.65,"2012-09-10",3001,5005),
(70002,65.26,"2012-10-05",3002,5001),
(70004,110.5,"2012-08-17",3009,5003),
(70005,2400.6,"2012-07-27",3007,5001),
(70007,948.5,"2012-09-10",3005,5002),
(70008,5760,"2012-09-10",3002,5001),
(70010,1983.43,"2012-10-10",3004,5006),
(70003,2480.5,"2012-10-10",3009,5003),
(70012,250.45,"2012-06-27",3008,5002),
(70011,75.29,"2012-08-17",3003,5007),
(70013,3045.6,"2012-04-25",3002,5001);
select *from orders1;
select *from orders1 where salesman_id=5001;

create table nobelwin(year int,subject varchar(55),country varchar(55),category varchar(55),winner varchar(55));
insert into nobelwin(year,subject,country,category,winner)values
(1970,"physics","sweden","scientist","hannes alfven"),
(1970,"physics","france","scientist","louis neel"),
(1970,"chemistry","france","scientist","luis federico leloir"),
(1970,"physiology","sweden","scientist","ulf von euler"),
(1970,"physiology","germany","scientist","bernard katz"),
(1970,"literature","russia","scientist","aleksandar solzhnenitsyn"),
(1970,"economics","usa","linguist","paul samuelson"),
(1970,"physiology","germany","scientist","dennis gabor"),
(1971,"physics","hungary","scientist","dennis gabor"),
(1971,"chemistry","germany","scientist","gerhard herzberg"),
(1971,"peace","germany","scientist","willy brandt"),
(1971,"literature","chile","linguist","pablo neruda");
select * from nobelwin;
select * from nobelwin where year=1970;

create table orders2(ord_no int,purch_amt float,ord_date date,customer_id int,salesman_id int);
insert into orders2(ord_no,purch_amt,ord_date,customer_id,salesman_id)values
(70001,150.5,"2012-10-05",3005,5002),
(70009,270.65,"2012-09-10",3001,5005),
(70002,65.26,"2012-10-05",3002,5001),
(70004,110.5,"2012-08-17",3009,5003),
(70005,2400.6,"2012-07-27",3007,5001),
(70007,948.5,"2012-09-10",3005,5002),
(70008,5760,"2012-09-10",3002,5001),
(70010,1983.43,"2012-10-10",3004,5006),
(70003,2480.5,"2012-10-10",3009,5003),
(70012,250.45,"2012-06-27",3008,5002),
(70011,75.29,"2012-08-17",3003,5007),
(70013,3045.6,"2012-04-25",3002,5001);
select * from orders2;
select sum(purch_amt) from orders2;

create table customer(customer_id int,salesman_id int,cust_name varchar(55),city varchar(55),grade int);
insert into customer(customer_id,salesman_id,cust_name,city,grade)values
(5001,3002,"nick rimando","new york",100),
(5001,3007,"brad davis","new york",200),
(5002,3005,"graham zusi","california",200),
(5002,3008,"julian green","london",300),
(5006,3009,"geoff cameron","berlin",100),
(5003,3003,"jozy altidor","moscow",200),
(5007,3001,"brad guzan","london",400),
(5002,3004,"fabian johnson","paris",300);
select * from customer;
select * from customer where grade =200;


