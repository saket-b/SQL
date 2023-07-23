CREATE DATABASE temp;


USE temp;


CREATE TABLE Customber(
	id INT PRIMARY KEY unique,
    cname VARCHAR(255),
    Address VARCHAR(255),
    Gender VARCHAR(10),
    City VARCHAR(225),
    Pincode Integer
);
SELECT * FROM Customber;
DROP TABLE Customber;

-- insert  
INSERT INTO Customber(id, cname,Address, Gender,City) 
 VALUES (102, "saket", "Ashok Nagar", "Male", "Delh" );
 
 -- pincode  null set ho jayega 
 INSERT INTO Customber(id, cname, Address, Gender, city)
 VALUES (103, "saket", "Ashok Nagar", "Male", "Delhi" );
 
 INSERT INTO Customber(id, cname,Address, Gender,City, Pincode) 
 VALUES (104, "saket", "Ashok Nagar", "Male", "Delh" , 10998);
 
 INSERT INTO Customber
 VALUES (105, "saket", "Ashok Nagar", "Male", "Delh", 10097 );
 
 -- update
 SET SQL_SAFE_UPDATES = 1;
 UPDATE Customber Set cname = "aman", Address = 'Delhi' WHERE id = 101;
 -- update all customber 
 UPDATE Customber SET Pincode = 110096;
 
 
 
 -- Delete customber 
 DELETE FROM Customber where id = 102;



CREATE TABLE Order_Details(
	order_id INT primary key,
    Delevert_date DATE,
    cust_id INT,
    FOREIGN KEY(cust_id) references Customber(id)    
);

DROP TABLE Order_Details;
INSERT INTO Order_Details VALUES 
(300, '12-03-21', 100);

-- 100 -> is existing Customber then insert i order otherwise not
select * from Order_Details; 


 
 