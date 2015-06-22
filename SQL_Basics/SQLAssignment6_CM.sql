/*
Carlos Marti
SQl Assignment 6 
12/5/14
*/
Use Master
GO

IF DB_ID('MyTestDB') IS NOT NULL
DROP DATABASE MyTestDB
GO

Create Database MyTestDB
GO

Use MyTestDB
GO

--Question 1
Create Table Zip_Code
(Zip_Code Varchar(10) Not Null,
 City Varchar(20),
 StateCode Varchar(2));

--Question 2
ALTER TABLE Zip_Code
ADD CONSTRAINT pk_ZipCde PRIMARY KEY(Zip_Code)

--Question 3
IF OBJECT_ID('Customer') IS NULL
CREATE TABLE Customer
(CustomerID int Primary Key,
 CustomerName Varchar(30),
 Address Varchar(30),
 ZipCode Varchar(10),
 CreditLimit Money,
 Balance Money,)


--Question 4
IF OBJECT_ID('Orders') IS NULL
CREATE TABLE Orders
(OrderID int Primary Key,
 OrderDate Date,
 CustomerID int,
 Foreign Key(CustomerID) REFERENCES Customer(CustomerID))


 --Question 5
 IF OBJECT_ID('Product') IS NULL
 CREATE TABLE Product
 (ProductID int Primary Key,
  Description Varchar(30),
  UnitsOnHand int,
  UnitsOnOrder int,
  UnitsOfMeasure int,
  ReorderPoint int,
  UnitsCost Money,
  UnitsPrice Money)
 

--Question 6
IF OBJECT_ID('OrderedProduct') IS NULL
CREATE TABLE OrderedProduct
(OrderID int Foreign Key References Orders(OrderID),
 ProductID int Foreign Key References Product(ProductID),
 Primary Key(OrderID,ProductID),
 NumberOrdered int,
 QuotedPrice Money)

 --Question 7
 CREATE UNIQUE INDEX CustName
 ON Customer (CustomerName)

 --Question 8
 CREATE INDEX order_id
 ON OrderedProduct (OrderID)

 CREATE INDEX product_id
 ON OrderedProduct (ProductID)
 