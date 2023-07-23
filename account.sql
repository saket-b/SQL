-- create table account(
-- 	id int primary key,
--     name VARCHAR(255) UNIQUE,
--     balance INT,
--     constraint acc_balance CHECK(balance > 1000)
--     
-- );



create table account(
	id int primary key,
    name VARCHAR(255) UNIQUE,
    balance INT NOT NULL default 0
  
    
);

DESC account;

DROP TABLE account;
select * from account;

-- add new column 
ALTER TABLE account ADD saving_interest FLOAT; 

--   modify
ALTER TABLE account MODIFY saving_interest DOUBLE;

-- change column or rename of column 
ALTER TABLE account CHANGE COLUMN saving_interest interest_rate FLOAT;

-- Drop column
ALTER TABLE account DROP COLUMN interest_rate; 

-- rename table name
ALTER TABLE account RENAME TO account_details;
 
insert into account(id, name, balance) values
	(3, "puja kumari", 190);

-- Set operation union intersect & Minus 

create table dep1(
	empid int,
    name VARCHAR(25),
    role VARCHAR(25)
);

create table dep2(
	empid int,
    name VARCHAR(25),
    role VARCHAR(25)
);

insert into dep1 values
(1, "A", "engineer"),
(2, "B", "salesman"),
(3, "C", "engineer"),
(4, "D", "manager");

insert into dep2 values
(5, "F", "engineer"),
(6, "G", "salesman"),
(7, "H", "engineer"),
(8, "I", "manager");

insert into dep2 values (4, "D", "manager");

select * FROM dep1;
select * FROM dep2;

-- list of all employee from dep1, dep2
select * FROM dep1
UNION
select * FROM dep2;

-- list out all the employees in all department who work as salesman

select dep1.* from dep1 INNER JOIN dep2 using(empid);

-- list of empoyee working in dep1 but not in dep2;
select dep1.* from dep1 LEFT JOIN dep2 using(empid) WHERE dep2.empid is NULL;
 



 