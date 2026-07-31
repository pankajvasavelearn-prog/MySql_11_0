-- create database Employee;
-- use Employee;
CREATE TABLE Employee (
 EmployeeId INT PRIMARY KEY,
 FullName VARCHAR(45) NOT NULL,
 Department VARCHAR(45) NOT NULL,
 Salary float NOT NULL,
 Gender VARCHAR(45) NOT NULL,
 Age INT NOT NULL
);
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26); 
CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
 ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
 StartDate DATETIME,
 EndDate DATETIME
);
INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5
DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15
DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY));
CREATE TABLE Address
(
 AddressId INT PRIMARY KEY AUTO_INCREMENT,
 EmployeeId INT,
 Country VARCHAR(50),
 State VARCHAR(50),
 City VARCHAR(50)
 );
 
 INSERT INTO Address (EmployeeId, Country, State, City) Values (1001, 'India', 'Odisha', 'BBSR');
 INSERT INTO Address (EmployeeId, Country, State, City) Values (1002, 'India', 'Maharashtra', 'Mumbai');
 INSERT INTO Address (EmployeeId, Country, State, City) Values (1003, 'India', 'Maharashtra', 'Pune');
 INSERT INTO Address (EmployeeId, Country, State, City) Values (1004, 'India', 'Odisha', 'Cuttack');
 INSERT INTO Address (EmployeeId, Country, State, City) Values (1005, 'India', 'Maharashtra', 'Nagpur');
 INSERT INTO Address (EmployeeId, Country, State, City) Values (1006, 'India', 'Odisha', 'Cuttack');
 
select * from Employee;
select * from Projects;
select * from Address;

desc Employee;
desc Projects;
desc Address; 
 
 
/* select FullName.E, city.A , project.P
 from Employee as E,Address as A, Projects as P
 where EmployeeId  */
 
alter table Employee ADD Location varchar(50);
alter table Employee ADD Serial varchar(50) FIRST;       --  
alter table Employee ADD Title varchar(50) after EmployeeId; 
select * from Employee;
 alter table Employee drop Location;
-- aflter table Employee drop Title, Serial;
 
alter table Employee modify FullName varchar(60);
alter table Employee modify FullName varchar(60) unique;
 
 alter table Employee change column Department dept varchar(45);
 
 
 alter table Employee rename to Emp;
 alter table Emp ADD Location varchar(50);
alter table Emp ADD Serial varchar(50) FIRST;       --  
alter table Emp ADD Title varchar(50) after EmployeeId; 

-- alter table Employee drop Title, location;

truncate table Projects;
select * from Projects;

INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),  -- Now()  -- showing Current Date and time
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),			-- Interval  45 days  Added by using date_add 
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),INTERVAL 10 DAY));

 create table simple (
 ID int primary key auto_increment,
 Remarks varchar(50));

 select * from simple;
 insert into simple (Remarks) values ("Hello"),("Good Morning"),("bye");
select * from Emp;
 update Emp set Location = "Thane";
 
 -- -------------------------     31-07-2026       ------------------------------------ -------
 show tables;
 alter table emp add Title varchar(4);
 update emp set Title ="Mr.";
 update emp set Title="Mrs" where gender ="Female";
 update emp set Salary =55000 where FullName = "Mary Smith";
 delete from emp where EmployeeId=1010;
 select * from emp;
 insert into emp values (1010,'Mrs','Hina Sharma', 'HR', 75000, 'Female', 26,'Thane');            -- Added Again
 ALTER TABLE EMP DROP Serial;
 select * from emp order by FullName,EmployeeId desc;     --      W G H O  sequence...   having clause always optional while group by clause is used else having not used in query
 select * from emp order by FullName Limit 3;     -- LIMIT alwasys followed by Order By Clause --- It used for TOP | Bottom
 select * from emp limit 5,3;	--  5 offset and 3 limit
 select * from emp limit 2,5;    -- 2 OffSet and 5 Limit 
 select * from emp where EmployeeId % 2 = 0;   -- Find Even Odd
 select FullName,Salary,(Salary*0.05) as Bonus from emp;   -- Calculation Bonus    (max|min|avg|sum) -- use Aggregate Functions
 -- avg and average difference -- AVG function  | average _ full form of function name    confusing question
 select * from Projects; 
 select * from Projects where EmployeeId  is null;
 select * from Projects where EmployeeId is not null;
 
 -- Group By Clause----
 select * from emp;
 select dept,count(dept) from emp group by dept;
 select dept,count(*) from emp group by dept;   -- * always use for all count.
 select Gender, count(*)  from emp where Gender = "Male";
 select dept, sum(salary) from emp group by dept;
 select dept, avg(age) from emp group by dept;
 
 -- truncate 
 select truncate(123.45688954,4);		-- truncate used for round up values according to condition.
 select truncate(123.45688954,-2);		-- values replace with 0 before decimal point.
 select dept, truncate(avg(age),0) from emp group by dept; 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 