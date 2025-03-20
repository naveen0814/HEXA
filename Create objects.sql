CREATE DATABASE TechShop

USE TechShop
CREATE TABLE Customers
(
CustomerID int PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
Email varchar(200),
Phone bigint,
Address varchar(500)
)
CREATE TABLE Products
(
ProductID int PRIMARY KEY,
ProductName varchar(100),
Description varchar(200),
Price decimal
)
CREATE TABLE Orders
(
OrderID int PRIMARY KEY,
CustomerID int,
OrderDate DATE,
TotalAmount MONEY
Constraint fh_ky FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)
CREATE TABLE OrderDetails
(
OrderDetailID int PRIMARY KEY,
OrderID int,
ProductID int,
Quantity int
constraint fh_ky1 FOREIGN KEY (OrderID) references Orders(OrderID),
constraint fh_ky2 FOREIGN KEY (ProductID) references Products(ProductID)
)
CREATE TABLE Inventory
(
InventoryID int PRIMARY KEY,
ProductID int ,
QuantityInStock int,
LastStockUpdate datetime
constraint fh_ky3 FOREIGN KEY (ProductID) references Products(ProductID)
)




select FirstName,LastName,Email from Customers
SELECT 
    Orders.OrderID,
    Orders.OrderDate,
    Customers.FirstName,
    Customers.LastName
FROM 
    Orders
INNER JOIN 
    Customers
ON 
    Orders.CustomerID = Customers.CustomerID
INSERT into Customers (CustomerID, FirstName, LastName, Email, Phone, Address) 
VALUES
(11,'Karthik','Raj','Karthikraj0808@example.com',8798767987,'No.234 Velan Nagar Valasarvakkam Chennai')

UPDATE Products
SET Price = Price*1.10
select * from Products

DECLARE @OrderID INT = 3
DELETE FROM OrderDetails WHERE OrderID = @OrderID
DELETE FROM Orders WHERE OrderID = @OrderID

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES (11, 2, '2025-03-17', 15999.00)

UPDATE Customers SET Email='naveen2004@example.com', Address = 'Velan Nagar Valasaravakkam' WHERE CustomerID = 1

ALTER table Orders add Status Varchar(50)
update Orders SET Status = 'Shipped' Where OrderID=1


ALTER TABLE Customers ADD OrderCount INT;
UPDATE Customers
SET OrderCount = (
    SELECT COUNT(*) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID
)





UPDATE Orders
SET TotalAmount = (
    SELECT SUM(p.Price * od.Quantity)
    FROM OrderDetails od
    INNER JOIN Products p ON od.ProductID = p.ProductID
    WHERE od.OrderID = Orders.OrderID
)

DECLARE @CustID INT = 2;
DELETE FROM OrderDetails
WHERE OrderID IN (SELECT OrderID FROM Orders WHERE CustomerID = @CustID);
DELETE FROM Orders
WHERE CustomerID = @CustID;



select * from Orders

SELECT Orders.OrderID, Orders.OrderDate, Customers.FirstName, Customers.LastName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT Products.ProductName, SUM(OrderDetails.Quantity * Products.Price) AS TotalRevenue
FROM OrderDetails
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Products.ProductName

SELECT DISTINCT Customers.CustomerID, Customers.FirstName, Customers.LastName, Customers.Email, Customers.Phone
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT TOP 1 Products.ProductName, SUM(OrderDetails.Quantity) AS TotalQuantity
FROM OrderDetails
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Products.ProductName
ORDER BY TotalQuantity DESC

SELECT ProductName, Description
FROM Products

SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName, AVG(Orders.TotalAmount) AS AverageOrderValue
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerID, Customers.FirstName, Customers.LastName

SELECT TOP 1 Orders.OrderID, Customers.FirstName, Customers.LastName, Orders.TotalAmount
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
ORDER BY Orders.TotalAmount DESC


SELECT Products.ProductName, COUNT(OrderDetails.OrderDetailID) AS TimesOrdered
FROM OrderDetails
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Products.ProductName


DECLARE @ProductName VARCHAR(100) = 'iPhone 14'

SELECT DISTINCT Customers.CustomerID, Customers.FirstName, Customers.LastName
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Products.ProductName = @ProductName


DECLARE @StartDate DATE = '2024-12-01';
DECLARE @EndDate DATE = '2024-12-31';

SELECT SUM(TotalAmount) AS TotalRevenue
FROM Orders
WHERE OrderDate BETWEEN @StartDate AND @EndDate

SELECT c.CustomerID, c.FirstName, c.LastName, COUNT(o.OrderID) AS OrderCount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
HAVING COUNT(o.OrderID) = 0

SELECT COUNT(*) AS TotalProducts FROM Products


SELECT SUM(TotalAmount) AS TotalRevenue FROM Orders

SELECT OrderID, AVG(OrderDetails.Quantity) AS AvgQuantityOrdered FROM OrderDetails
join Products on OrderDetails.OrderID = Products.ProductID group by OrderDetails.OrderID




DECLARE @CustomerID INT = 6;

SELECT c.FirstName, c.LastName, COALESCE(SUM(o.TotalAmount), 0) AS TotalRevenue
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.CustomerID = @CustomerID
GROUP BY c.FirstName, c.LastName;


SELECT c.FirstName, c.LastName, COUNT(o.OrderID) AS OrderCount
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY OrderCount DESC;

SELECT TOP 1 p.Description AS Category, SUM(od.Quantity) AS TotalQuantityOrdered
FROM OrderDetails od
INNER JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.Description
ORDER BY TotalQuantityOrdered DESC;

SELECT TOP 1 c.FirstName, c.LastName, SUM(o.TotalAmount) AS TotalSpending
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID
WHERE p.Description LIKE '%Electronics%' OR p.Description LIKE '%Smartphone%' 
   OR p.Description LIKE '%Laptop%' OR p.Description LIKE '%Gadget%'
GROUP BY c.FirstName, c.LastName
ORDER BY TotalSpending DESC


SELECT AVG(TotalAmount) AS AvgOrderValue
FROM Orders

SELECT Customers.CustomerID, CONCAT(FirstName, ' ', LastName) AS CustomerName, COUNT(OrderID) AS OrderCount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, FirstName, LastName













