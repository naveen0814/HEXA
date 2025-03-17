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
