/*Carlos Marti
SQL assignment 3
11/21/14*/

USE NorthWind

--Question 1
SELECT  
	CustomerID = Customers.CustomerID, ContactName, Address, City, Region, PostalCode , Orderid, Orderdate
FROM
	Customers JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
WHERE
	Orderdate BETWEEN '2012-07-01' AND '2012-07-31';
	

--Question 2
SELECT 
	Customers.CustomerID, Customers.ContactName, Customers.Address, Customers.Region, Customers.PostalCode, Orders.OrderID, Orders.OrderDate
FROM 
	Customers JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
WHERE
	OrderDate BETWEEN '2012-07-01' AND '2012-07-31';

--Question 3
SELECT
	Customers.CustomerID, CompanyName, OrderID
FROM
	Customers JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
ORDER BY
	OrderID;

--Question 4
SELECT
	Customers.CustomerID, Customers.CompanyName, Orders.OrderID,Products.ProductID, ProductName, Suppliers.SupplierID, Suppliers.ContactName
FROM Customers JOIN Orders
		ON	Orders.CustomerID = Customers.CustomerID
	JOIN OrderDetails
		ON OrderDetails.OrderID = Orders.OrderID
	JOIN Products
		ON Products.ProductID = OrderDetails.ProductID
	JOIN Suppliers
		ON Suppliers.SupplierID = Products.SupplierID
ORDER BY 
	CustomerID,OrderID;

--Question 5
SELECT Orders.OrderID, CustomerID,OrderDate,Quantity,UnitPrice
FROM Orders AS orders JOIN OrderDetails AS orderDetail
		ON orders.OrderID = orderDetail.OrderID
WHERE 
	UnitPrice < 12;

--Question 6
	SELECT CompanyName,'Inside USA'Country
	FROM Customers
	WHERE Country = 'USA'
UNION
	Select CompanyName,'Ouside USA'Country
	FROM Customers
	WHERE Country <> 'USA'; 

