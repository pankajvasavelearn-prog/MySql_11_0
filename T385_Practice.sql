-- 28/07/2026 ---
show databases;					/*showing list of Database*/
create database T385_BankingDB; /*Create Database*/
use T385_BankingDB;				/*select Database*/
show tables;					/*Showing Tables*/
create table Customers			/*Create Table Customers*/
(CustomerId int,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
Phone varchar(15)
);


-- 29-07-2026 ---
/*Execute the Current Statement  -- ctrl+enter*/
drop table Customers;
CREATE TABLE Customers
(
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate date      /* Default date format in MySQL YYYY-MM-DD */
);

select * from Customers;		/* Showing table Data */
desc Customers;					/* Describe table structure */

create table Accounts(
AccountID int,
AccountType varchar(20),
Balance decimal(10,2)			  --    Datatype decimal (total_length|decimal after this value 
);
desc accounts;

create table Transactions(
TransactionID int,
TransactionDate date,
Amount decimal(10,2),
TransactionType varchar(20)
);

CREATE TABLE Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE AccountBranches ( 
		AssignmentDate DATE
);

CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE
);

show tables;
/* 
DDL - CREATE,ALTER,DROP,TRUNCATE  
DML - INSERT,UPDATE,DELETE   
DQL - SELECT,SHOW,HELP  
DCL - GRANT,REVOKE  
TCL - */

-- Contreaints in SQL
/* 
NOT NULL   - CAN NOT BE BLANK
UNIQUE - A UNIQUE VALUE CAN BE USED.
PRIMARY KEY - COMBINATION OF NOT NULL AND UNIQUE VALUES, ONLY ONE TIME USED ON TABLE,
FOREIGN KEY - REFERENTIAL CONSTRAINT 
CHECK - ALWAYS VALIDATE WITH PERTICULAR CONDITION WHILE INSERTING DATA
DEFAULT
 */
 
create table Voter(
Name varchar(10),
Age int check(age>=18));

insert into voter values ('Sachin',15);   -- Error Code:3819 - Check constraint 'voter_chk_1' is violated.
insert into voter values ('Sachin',19);   -- 1row(s)affected

alter table Voter add email varchar(20) default 'dummy@gmail.com';   -- Set default value

SELECT * FROM Voter;
-- -----------------------------   30-07-2026    ------------------------------------  ----
create database Employee;


--   ----------------------------   07/08/2026   ----------------------------------------

create table Voter_list
(VoterId int,
Names varchar(30),
Age int check(Age>=18));

insert into Voter_list values (20067,"Anuja Patil",18);
insert into Voter_list values (20067,"Anuja Patil",20);

SELECT * FROM Voter_list;

create table Voter_list2
(VoterId int,
Names varchar(30),
Age int check(Age>=18),
email_id varchar(30) default "Dummy@gmail.com"
);

SELECT * FROM Voter_list2;

insert into Voter_list2 values (20067,"Anuja Patil",18,"AnujaP@gmail.com");
insert into Voter_list2 values (20067,"Anuja Patil",20, default);




