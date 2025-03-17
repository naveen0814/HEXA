# HEXA
Task:1. Database Design:
1. Create the database named "TechShop"
```sql
   CREATE DATABASE TechShop

USE TechShop
```
2. Define the schema for the Customers, Products, Orders, OrderDetails and Inventory tables based on the provided schema.
```sql
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
```
3. Create an ERD (Entity Relationship Diagram) for the database.


![Screenshot_20250317_195807](https://github.com/user-attachments/assets/561287ee-9b99-4308-ac40-f558ffe31461)

4. Create appropriate Primary Key and Foreign Key constraints for referential integrity.
```sql
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
```
5. Insert at least 10 sample records into each of the following tables.
a. Customers
b. Products
c. Orders
d. OrderDetails
e. Inventory

![{64AA4EDD-4BB2-4AAD-ACC1-29EF2900EA94}](https://github.com/user-attachments/assets/514ccb72-9100-471b-a283-9951bc33b14a)
![{221C37F6-17AB-43FF-A8E0-CBEFC1EA32D3}](https://github.com/user-attachments/assets/f4e62aa1-f655-4fff-94b2-a67cdf5ead09)
![{F8AC3B9D-ABCA-416F-859B-BB776ACF03EC}](https://github.com/user-attachments/assets/8038b3e0-e402-478b-8530-df728a19c43a)
![{0D1E4AFF-75EF-4DA4-A8C5-883C163DD819}](https://github.com/user-attachments/assets/11c420a8-73c0-4926-9674-f2033e21e15f)
![{C3C2C495-4A59-4549-85C1-1035B16447AF}](https://github.com/user-attachments/assets/5e8c3c0e-87a6-4be3-a7c9-20be6bce3218)








