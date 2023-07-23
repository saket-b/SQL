CREATE DATABASE ORG;

USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    FIRST_NAME CHAR(25),
    LAST_NAME  char(25),
    SALARY INT,
    JOINING_DATE DATE,
    DEPARTMENT CHAR(25)
);





INSERT INTO Worker values
				(1, "saket", "bharti", 500000, '13-03-21', "SE"),
                (2, "abckd ", "bharti", 600000, '15-03-21', "SE"),
                (3, "hello", "bharti", 700000, '16-07-21', "SE"),
                (4, "lfkfjj", "bharti", 1500000, '13-08-21', "HR"),
                (5, "saketfkf", "bharti", 1000000, '13-09-21', "Account"),
                (6, "jdsfhf", "bharti", 900000, '13-10-21', "Account"),
                (7, "ruruur", "bharti", 800000, '13-12-21', "HR");

SELECT * FROM Worker;


CREATE TABLE Bonus (
	worker_ref_id INT,
    bonus_amount INT,
    bonus_date Date

);

INSERT INTO Bonus VALUES
	(1, 100000, '12-03-23'),
    (2, 150000, '15-03-23'),
    (3, 200000, '30-03-23');
employee    
SELECT * FROM Bonus;

CREATE TABLE Title (
	worker_ref_id INT,
    work_title CHAR(25),
    affected_from Date

);

INSERT INTO Title VALUES
	(1, "SE", '14-03-22'),
    (2, "HR", "15-07-21"),
    (3, "Account", '17-07-20');

SELECT * FROM Title;

-- give two column  
SELECT first_name , salary from Worker;

-- without table name run slect
select 4+1;  



--  sort table slaray in increasing order 

-- WHERE
SELECT * FROM Worker WHERE SALARY > 500000; 

-- reduce row  
SELECT *FROM Worker WHERE DEPARTMENT = 'HR';

-- BETWEEN
SELECT * FROM Worker WHERE SALARY BETWEEN 500000 AND 800000; 

-- OR 
SELECT * FROM  Worker WHERE DEPARTMENT  = 'HR' OR DEPARTMENT = 'SE';

-- OR replace with IN
SELECT * FROM Worker WHERE DEPARTMENT IN ('HR', 'Account');

SELECT * FROM Worker WHERE DEPARTMENT NOT IN ('HR', 'Account');

-- LIKE  
-- '%pa% '-> dfjfpafldlgk, pakdkfd, dkfkkpa
-- '_pa_'-> kpal, npam-> only one character both side  
SELECT * FROM Worker WHERE LAST_NAME LIKE '%i%';


-- sort -> ORDER BY
SELECT * FROM Worker order by SALARY;
 -- decresng ordere 
 SELECT * FROM Worker order by SALARY DESC;
 
 -- DIstinct
 
 SELECT DISTINCT DEPARTMENT FROM Worker ;

-- GROUP BY			-- this greeation function ->if agreeation function is not present then behave like distinct 
  SELECT department, count(department)  DEPARTMENT FROM Worker group by DEPARTMENT ;

-- sum   
SELECT department, SUM(SALARY)  DEPARTMENT FROM Worker group by DEPARTMENT ;

-- avg
SELECT department, AVG(SALARY)  DEPARTMENT FROM Worker group by DEPARTMENT ;

-- min
SELECT department, MIN(SALARY)  DEPARTMENT FROM Worker group by DEPARTMENT ; 

-- max
SELECT department, MAX(SALARY)  DEPARTMENT FROM Worker group by DEPARTMENT ; 

-- GROUP BY WITH HAVING 
    SELECT department, count(department)  DEPARTMENT FROM Worker group by DEPARTMENT HAVING count(department) > 1 ;



