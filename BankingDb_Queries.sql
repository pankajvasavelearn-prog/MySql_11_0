show databases;

create database BankingDB;
use BankingDB;

CREATE DATABASE pizza_sales_analysis;

USE pizza_sales_analysis;

CREATE TABLE `order`( id int, `date` date);

select * from orders;

ALTER TABLE `order` 
ADD COLUMN `time` TIME AFTER `date`;


RENAME TABLE `order` TO orders;

ALTER TABLE orders 
ADD PRIMARY KEY (id);


show databases;

