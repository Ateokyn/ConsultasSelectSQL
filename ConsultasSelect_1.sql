SELECT * FROM Products

SELECT ProductID, ProductName, UnitPrice FROM Products

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice > 15

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE Unitprice >= 15 AND UnitPrice <= 50

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 15 AND 50

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE NOT UnitPrice > 15

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE ProductID > 15 OR UnitPrice < 10

--Unicamente LIKE o NOT LIKE

SELECT EmployeeID, LastName FROM Employees
WHERE LastName LIKE 'D%'

SELECT EmployeeID, LastName FROM Employees
WHERE LastName LIKE '%N'

SELECT EmployeeID, LastName,Title FROM Employees
WHERE Title LIKE '%SALES%'

SELECT EmployeeID, LastName FROM Employees
WHERE LastName NOT LIKE 'D%'

SELECT EmployeeID, LastName, Title FROM Employees
WHERE Title NOT LIKE '%REPRESENTATIVE%'

SELECT OrderID FROM [Order Details]
WHERE OrderID LIKE '_0248'

SELECT OrderID FROM [Order Details]
WHERE OrderID LIKE '10[1-5]48'

--ORDER BY

SELECT ProductID, ProductName, UnitPrice FROM Products
ORDER BY ProductID ASC

SELECT ProductID, ProductName, Unitprice FROM Products
ORDER BY ProductID DESC

--DISTINCT

SELECT DISTINCT OrderId FROM [Order Details]

SELECT TOP 5 OrderID, ProductID, Quantity
FROM [Order Details]

SELECT TOP 2 WITH TIES OrderID, ProductID, Quantity
FROM [Order Details]
ORDER BY OrderID

SELECT TOP 10 PERCENT OrderID, ProductID, Quantity
FROM [Order Details]

--Renombrar columnas de una consulta

SELECT CategoryName AS [Nombre de Categoria]
FROM categories

SELECT OrderID, OrderDate, ShippedDate + 5 AS RetrasoEnvio
FROM Orders

--Parte 2

USE Northwind

--Uso de Clausula From

Select * from categories

Select categoryName, categoryID From Categories

--Uso de Clausula Where

Select OrderID, ProductID, Unitprice
From [Order Details]
Where OrderID = 10251

Select CompanyName From Customers
Where CompanyName = 'Alfreds Futterkiste'

Select OrderID, ProductID, Unitprice
From [Order Details]
Where OrderID = 10251 AND ProductID = 57

Select OrderID, ProductID, UnitPrice
From [Order Details]
Where orderID = 10251 OR ProductID = 57

Select OrderID, ProductID, UnitPrice
From [Order Details]
Where OrderID >= 11000

Select OrderID, productID, UnitPrice
From [Order Details]
Where OrderID >= 11000 AND OrderID <= 11003

Select OrderID, ProductID, UnitPrice
From [Order Details]
Where OrderID BETWEEN 11000 AND 11003

Select CompanyName 
From Customers
Where Companyname LIKE 'A%'

Select CompanyName 
From Customers
Where CompanyName LIKE '%MA'

Select RegionDescription
From Region
Where RegionDescription LIKE '%TERN%'

Select OrderID 
From [Order Details]
Where OrderID LIKE '_0285'

Select Companyname 
From Customers
Where CompanyName LIKE '[a-c]%'

Select * From [Order Details]
Where OrderID IN (10248, 10255, 10270)

Select * From [Order Details]
Where OrderID = 10248 OR OrderID = 10255 OR OrderID = 10270

--Uso de Clausula ORDER BY

Select CategoryName, categoryID
From Categories
Order By CategoryName ASC

Select CategoryName, categoryID
From Categories
Order By CategoryName

Select CategoryName, CategoryID 
From Categories
Order by CategoryName DESC

--Uso de la instruccion DISTINCT

Select SupplierID, CategoryID
From Products

Select DISTINCT SupplierID, CategoryID
From Products

--Renombrar Columnas de una consulta

Select CategoryID AS [Codigo de la categoria],
CategoryName AS [Nombre de la categoria]
From Categories

--Uso de la instruccion TOP N

Select TOP 3 OrderID, (UnitPrice * Quantity) AS [Venta total]
From [Order Details]
Order By [Venta total] DESC

Select TOP 3 WITH TIES OrderID, (UnitPrice * Quantity) AS [Venta Total]
From [Order Details]
Order By [Venta Total] DESC

Select TOP 25 PERCENT OrderID, (UnitPrice * Quantity) AS [Venta Total]
From [Order Details]
Order By [Venta Total] DESC


