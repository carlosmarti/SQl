/*
Carlos Marti
sql assignment 4
11/30/14
*/

USE NorthWind

--Question 1
SELECT
	AVG(unitPrice) AS Average_Price,MAX(unitPrice) AS Max_Price, MIN(unitPrice) AS Min_Price
FROM
	Products;

--Question 2
SELECT
	Customers.CustomerID, AVG(Freight) AS Freight_Charge
FROM
	Customers JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
GROUP BY 
	Customers.CustomerID;

--Question 3
SELECT
	Customers.CustomerID, AVG(Freight) AS Freight_Charge
FROM
	Customers JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
GROUP BY 
	Customers.CustomerID
HAVING
	AVG(Freight) > (SELECT AVG(Freight) FROM Orders);

--Question 4
SELECT
	Employees.EmployeeID,FirstName,LastName,OrderDate
FROM
	Employees JOIN Orders
		ON Employees.EmployeeID = Orders.EmployeeID;

--Question 5
SELECT
	ProductID,UnitsOnOrder
FROM
	Products
WHERE
	UnitsOnOrder > 50;

--Question 6
SELECT
	OrderID, UnitPrice AS FullRetailPrice,UnitPrice * Quantity AS FinalPrice

FROM
	OrderDetails;
	