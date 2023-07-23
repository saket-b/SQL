CREATE DATABASE ORG2;
USE ORG2; -- swaitching for database

create table Worker(
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME char(25),
LAST_NAME char(25),
SALARY  INT(15),
JOINING_DATE DATETIME,
DEPARTMENT char(25)
);

insert into Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
values (001, 'saket', 'bharti', 100000, '11-07-21 09.00.00', 'HR'),
		(002, 'aman', 'kumar', 200000, '11-07-22 09.00.00', 'Admin'),
       (003, 'kundan', 'kumar', 400000, '11-07-23 09.00.00', 'Account'),
       (004, 'Akash', 'kumar', 500000, '11-07-19 09.00.00', 'Admin'),
       (005, 'Naman', 'kumar', 700000, '11-07-18 09.00.00', 'HR'),
       (006, 'sakshi', 'kumari', 300000, '11-07-17 09.00.00', 'HR'),
       (007, 'Rehan', 'kumar', 200000, '11-07-16 09.00.00', 'Account');
       
select * from Worker;


		

