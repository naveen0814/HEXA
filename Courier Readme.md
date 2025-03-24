# Task 1:
```sql
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Password VARCHAR(255),
    ContactNumber VARCHAR(20),
    Address TEXT
)

CREATE TABLE Couriers (
    CourierID INT PRIMARY KEY,
    SenderName VARCHAR(255),
    SenderAddress TEXT,
    ReceiverName VARCHAR(255),
    ReceiverAddress TEXT,
    Weight DECIMAL(5, 2),
    Status VARCHAR(50),
    TrackingNumber VARCHAR(20) UNIQUE,
    DeliveryDate DATE
)

CREATE TABLE CourierServices (
    ServiceID INT PRIMARY KEY,
    ServiceName VARCHAR(100),
    Cost DECIMAL(8, 2)
)

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    ContactNumber VARCHAR(20),
    Role VARCHAR(50),
    Salary DECIMAL(10, 2)
)

CREATE TABLE Locations (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(100),
    Address TEXT
)

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    CourierID INT,
    LocationID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    FOREIGN KEY (CourierID) REFERENCES Couriers(CourierID),
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
)

INSERT INTO Users VALUES 
(1, 'Naveen Kumar', 'naveen.kumar@example.com', 'naveen123', '9876543210', '12 MG Road, Bengaluru'),
(2, 'Sanjay Sharma', 'sanjay.sharma@example.com', 'sanjay123', '8765432109', '34 Park Street, Delhi'),
(3, 'Kartick Das', 'kartick.das@example.com', 'kartick123', '7654321098', '56 Prince Anwar Shah Rd, Kolkata'),
(4, 'Priya Singh', 'priya.singh@example.com', 'priya123', '6543210987', '78 Anna Nagar, Chennai'),
(5, 'Rahul Verma', 'rahul.verma@example.com', 'rahul123', '9123456780', '90 Baner Road, Pune'),
(6, 'Anjali Mehta', 'anjali.mehta@example.com', 'anjali123', '9988776655', '45 Jubilee Hills, Hyderabad'),
(7, 'Amit Patel', 'amit.patel@example.com', 'amit123', '8877665544', '67 Satellite Road, Ahmedabad'),
(8, 'Sneha Reddy', 'sneha.reddy@example.com', 'sneha123', '7766554433', '89 Banjara Hills, Hyderabad'),
(9, 'Vikram Iyer', 'vikram.iyer@example.com', 'vikram123', '6655443322', '21 T Nagar, Chennai'),
(10, 'Neha Kapoor', 'neha.kapoor@example.com', 'neha123', '5544332211', '33 Andheri East, Mumbai')


INSERT INTO Couriers VALUES 
(101, 'Naveen Kumar', '12 MG Road, Bengaluru', 'Amit Patel', '67 Satellite Road, Ahmedabad', 5.50, 'In Transit', 'TRK1001', '2025-03-25'),
(102, 'Sanjay Sharma', '34 Park Street, Delhi', 'Sneha Reddy', '89 Banjara Hills, Hyderabad', 2.75, 'Delivered', 'TRK1002', '2025-03-24'),
(103, 'Kartick Das', '56 Prince Anwar Shah Rd, Kolkata', 'Priya Singh', '78 Anna Nagar, Chennai', 4.00, 'In Transit', 'TRK1003', '2025-03-26'),
(104, 'Priya Singh', '78 Anna Nagar, Chennai', 'Rahul Verma', '90 Baner Road, Pune', 3.25, 'Pending', 'TRK1004', '2025-03-27'),
(105, 'Rahul Verma', '90 Baner Road, Pune', 'Vikram Iyer', '21 T Nagar, Chennai', 6.00, 'Delivered', 'TRK1005', '2025-03-24'),
(106, 'Anjali Mehta', '45 Jubilee Hills, Hyderabad', 'Neha Kapoor', '33 Andheri East, Mumbai', 7.25, 'In Transit', 'TRK1006', '2025-03-28'),
(107, 'Amit Patel', '67 Satellite Road, Ahmedabad', 'Anjali Mehta', '45 Jubilee Hills, Hyderabad', 5.75, 'Pending', 'TRK1007', '2025-03-29'),
(108, 'Sneha Reddy', '89 Banjara Hills, Hyderabad', 'Sanjay Sharma', '34 Park Street, Delhi', 2.50, 'Delivered', 'TRK1008', '2025-03-24'),
(109, 'Vikram Iyer', '21 T Nagar, Chennai', 'Kartick Das', '56 Prince Anwar Shah Rd, Kolkata', 3.90, 'In Transit', 'TRK1009', '2025-03-25'),
(110, 'Neha Kapoor', '33 Andheri East, Mumbai', 'Naveen Kumar', '12 MG Road, Bengaluru', 4.50, 'Pending', 'TRK1010', '2025-03-26')


INSERT INTO CourierServices VALUES 
(1, 'Express Delivery', 120.00),
(2, 'Standard Delivery', 60.00),
(3, 'Overnight Delivery', 150.00),
(4, 'Same Day Delivery', 200.00),
(5, 'Next Day Delivery', 100.00),
(6, 'International Shipping', 500.00),
(7, 'Heavy Parcel', 250.00),
(8, 'Light Parcel', 40.00),
(9, 'Fragile Goods', 180.00),
(10, 'Eco Delivery', 70.00)


INSERT INTO Employees VALUES 
(201, 'Ravi Kumar', 'ravi.kumar@example.com', '9988776655', 'Manager', 55000),
(202, 'Suman Das', 'suman.das@example.com', '8877665544', 'Delivery Executive', 25000),
(203, 'Deepak Joshi', 'deepak.joshi@example.com', '7766554433', 'Delivery Executive', 27000),
(204, 'Anita Sharma', 'anita.sharma@example.com', '6655443322', 'Receptionist', 22000),
(205, 'Rajeev Nair', 'rajeev.nair@example.com', '5544332211', 'Manager', 60000),
(206, 'Sunita Menon', 'sunita.menon@example.com', '4433221100', 'HR', 30000),
(207, 'Arjun Mehra', 'arjun.mehra@example.com', '3322110099', 'Delivery Executive', 26000),
(208, 'Pooja Reddy', 'pooja.reddy@example.com', '2211009988', 'Receptionist', 21000),
(209, 'Vinod Chauhan', 'vinod.chauhan@example.com', '1100998877', 'Delivery Executive', 28000),
(210, 'Meena Pillai', 'meena.pillai@example.com', '9998887776', 'Manager', 58000)


INSERT INTO Locations VALUES 
(301, 'Warehouse Bengaluru', '12 MG Road, Bengaluru'),
(302, 'Warehouse Delhi', '34 Park Street, Delhi'),
(303, 'Warehouse Kolkata', '56 Prince Anwar Shah Rd, Kolkata'),
(304, 'Warehouse Chennai', '78 Anna Nagar, Chennai'),
(305, 'Warehouse Pune', '90 Baner Road, Pune'),
(306, 'Warehouse Hyderabad', '45 Jubilee Hills, Hyderabad'),
(307, 'Warehouse Ahmedabad', '67 Satellite Road, Ahmedabad'),
(308, 'Warehouse Mumbai', '33 Andheri East, Mumbai'),
(309, 'Warehouse Jaipur', '23 MI Road, Jaipur'),
(310, 'Warehouse Lucknow', '65 Gomti Nagar, Lucknow')

INSERT INTO Payments VALUES 
(401, 101, 301, 120.00, '2025-03-22'),
(402, 102, 302, 60.00, '2025-03-23'),
(403, 103, 303, 150.00, '2025-03-24'),
(404, 104, 304, 200.00, '2025-03-25'),
(405, 105, 305, 100.00, '2025-03-24'),
(406, 106, 306, 500.00, '2025-03-25'),
(407, 107, 307, 250.00, '2025-03-26'),
(408, 108, 308, 40.00, '2025-03-23'),
(409, 109, 309, 180.00, '2025-03-24'),
(410, 110, 310, 70.00, '2025-03-26')
```
# Task 2: Select,Where 
Solve the following queries in the Schema that you have created above  
1. List all customers:  
```sql
SELECT * FROM Users

```
![{76CA0A10-BFDD-4F1B-AFD9-D51A2F7552A7}](https://github.com/user-attachments/assets/45906022-3072-4a5b-9171-0bd0a8af0293)


2. List all orders for a specific customer:  
```sql
SELECT * 
FROM Couriers 
WHERE SenderName = 'Naveen Kumar'
```
![{9E505837-C897-4E60-881A-8FC9BA3D5177}](https://github.com/user-attachments/assets/e1c0618b-44e9-44c3-85d1-99fb25be4d3f)


3. List all couriers:  
```sql

SELECT * FROM Couriers

```
![{B2EEB475-2FAD-46E6-99F1-BF476E588CEF}](https://github.com/user-attachments/assets/5fc622fa-4aa2-4f39-96ee-031f0e9713b5)

4. List all packages for a specific order:  
```sql
SELECT * 
FROM Couriers 
WHERE CourierID = 101

```
![{E352D3C9-61FA-442D-83F6-6BADE6F8CA33}](https://github.com/user-attachments/assets/e3b97a0d-8d70-4f6c-b766-1a39bff4b210)

5. List all deliveries for a specific courier:  
```sql

SELECT * 
FROM Couriers 
WHERE TrackingNumber = 'TRK1001'

```
![{95335879-F1EF-45C1-B7E0-A64A0871C259}](https://github.com/user-attachments/assets/e2c8ae36-6955-442f-9f11-6fd696e5defc)

6. List all undelivered packages:  
```sql

SELECT * 
FROM Couriers 
WHERE Status != 'Delivered'
```
![{85E02D08-B019-420F-95CC-B36A0922DCF7}](https://github.com/user-attachments/assets/f5198aa7-cb66-4eb5-a7d6-f9a13a526ee9)

7. List all packages that are scheduled for delivery today:  
```sql
SELECT * FROM Couriers 
WHERE DeliveryDate = '2025-03-24'

```
![{2200814F-9DF5-4B23-8857-8AA7216EBF0A}](https://github.com/user-attachments/assets/a4374280-162a-47af-8108-9157488356de)

8. List all packages with a specific status:  
```sql
SELECT * 
FROM Couriers 
WHERE Status = 'In Transit'

```
![{D52F1556-9293-430F-9273-C3E7EE137651}](https://github.com/user-attachments/assets/c73c3990-a947-4df2-a4f9-5bb8d9a56b8e)

9. Calculate the total number of packages for each courier.  
```sql
SELECT SenderName, COUNT(*) AS TotalPackages
FROM Couriers
GROUP BY SenderName

```
![{D4AA6C25-AF04-44AA-911D-FC441C353216}](https://github.com/user-attachments/assets/597ba8b9-0ec9-4071-af29-403d5a43e03d)

10. Find the average delivery time for each courier  
```sql
SELECT SenderName, AVG(Weight) AS AverageWeight
FROM Couriers
GROUP BY SenderName

```
![{A1BEB497-DECB-41DA-BAFA-A8D3AD6E55AF}](https://github.com/user-attachments/assets/d6d47dd3-54d4-4c98-b1ea-f80675fe6fde)

11. List all packages with a specific weight range:  
```sql
SELECT * 
FROM Couriers 
WHERE Weight BETWEEN 3 AND 6

```
![{44650B7F-0C08-4B79-AB59-1985817DC385}](https://github.com/user-attachments/assets/47ac165d-9d26-4374-8021-203d60aba75d)

12. Retrieve employees whose names contain 'John'  
```sql

SELECT * 
FROM Employees 
WHERE Name LIKE '%Kumar%'

```
![{9763FB79-702B-44C5-970A-618CA66E428E}](https://github.com/user-attachments/assets/4afeb624-3698-4d5a-99bf-011d277be3b0)

13. Retrieve all courier records with payments greater than $50.
```sql
SELECT Couriers.*
FROM Couriers
INNER JOIN Payments ON Couriers.CourierID = Payments.CourierID
WHERE Payments.Amount > 50

```
![{D9AFD8DC-5AD7-48F1-9575-B4783582DD62}](https://github.com/user-attachments/assets/739b9c61-2303-49ff-90a6-0860a5a3a882)


