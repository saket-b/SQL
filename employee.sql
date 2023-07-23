
create table employee(
	id INT unique,
    fname VARCHAR(25),
    lname VARCHAR(25),
    Age INT,
    Email_ID varchar(25),
    phone_no int,
    City varchar(25)

);

insert into employee values 
(1, "aman", "kumar", 23, "aman@gmail.com", 12345, "Patna"),
(2, "saket", "kumar", 23, "aman@gmail.com", 12345, "siwan"),
(3, "shushil", "kumar", 23, "aman@gmail.com", 12345, "chapra"),
(4, "Ram", "kumar", 23, "aman@gmail.com", 12345, "mumbai"),
(5, "Rahim", "kumar", 23, "aman@gmail.com", 12345, "Delhi");

create table project(
	id INT unique,
    name VARCHAR(25),
    startdate DATE,
    empID int,
    FOREIGN KEY (empID) references employee(id) 

);


select * from employee;