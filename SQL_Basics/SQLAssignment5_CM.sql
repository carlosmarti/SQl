/*
Carlos Marti
SQL Assignment 5
12/2/14
*/

USE NorthWind

--Question 1
SELECT 
	ShippedDate AS Shipped_Late
FROM
	Orders
GROUP BY
	ShippedDate,RequiredDate
HAVING
	ShippedDate > RequiredDate;

--Question 2
SELECT
	ProductID,ProductName,UnitsInStock,CategoryID
FROM
	Products
WHERE
	UnitsInStock > (SELECT AVG(UnitsOnOrder) FROM Products);

--Question 3
SELECT
	ProductID,ProductName,UnitsInStock,CategoryID
FROM
	Products
WHERE
	CategoryID IN (2)
GROUP BY 
	ProductID,ProductName,UnitsInStock,CategoryID
HAVING
	UnitsInStock > (SELECT AVG(UnitsOnOrder) FROM Products);

--Question 4
SELECT
	CustomerID,ContactName,Country
FROM
	Customers
WHERE
	Country IN (SELECT Country FROM Customers WHERE Country IN ('USA','UK','Australia','Canada'));

--Question 5
SELECT
	*
FROM
	Customers
WHERE
	CustomerID NOT IN (SELECT CustomerID FROM  Orders);


--Question 6
SELECT
	EmployeeID,CONCAT(FirstName,LastName) AS Name,ReportsTo
FROM 
	Employees
GROUP BY
	EmployeeID,FirstName,LastName,ReportsTo
HAVING 
	ReportsTo = 2
ORDER BY
	LastName;

--Question 7
SELECT 
	CustomerID,CompanyName,ContactName
FROM
	Customers
WHERE
	LEN(CompanyName) >= 12;
	


