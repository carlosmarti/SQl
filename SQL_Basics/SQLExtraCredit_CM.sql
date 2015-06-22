/*
Carlos Marti
Extra Credit
12/1/14
*/

USE NorthWind

--Question 1 
SELECT 
	OrderID,Customers.*
FROM
	Customers JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID;

--Question 2
SELECT
	Orders.OrderID,Freight AS Freight_Cost,Products.UnitPrice, OrderDetails.Quantity
FROM
	Orders JOIN OrderDetails 
		ON Orders.OrderID = OrderDetails.OrderID
	JOIN Products
		ON OrderDetails.ProductID = Products.ProductID;

--Question 3
SELECT
	ProductID,ProductName,CategoryID
FROM
	Products