# HEXA
Task:1. Database Design:
1. Create the database named "TechShop"
   CREATE DATABASE TechShop

USE TechShop
2. Define the schema for the Customers, Products, Orders, OrderDetails and Inventory tables based on the provided schema.


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

3. Create an ERD (Entity Relationship Diagram) for the database.


![Screenshot_20250317_195807](https://github.com/user-attachments/assets/561287ee-9b99-4308-ac40-f558ffe31461)

4. Create appropriate Primary Key and Foreign Key constraints for referential integrity.

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

5. Insert at least 10 sample records into each of the following tables.
a. Customers
b. Products
c. Orders
d. OrderDetails
e. Inventory

