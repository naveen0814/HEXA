
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address)
VALUES 
(1, 'Naveen', 'Reddy', 'naveen.reddy@example.com', 9876543210, 'Flat No. 201, Krishna Residency, Banjara Hills, Hyderabad, Telangana'),
(2, 'Kumar', 'Patel', 'kumar.patel@example.com', 9876543211, '12, Shree Apartments, CG Road, Navrangpura, Ahmedabad, Gujarat'),
(3, 'Gabriel', 'Fernandes', 'gabriel.fernandes@example.com', 9876543212, '403, Sea View Residency, Miramar Beach Road, Panaji, Goa'),
(4, 'Sumanth', 'Verma', 'sumanth.verma@example.com', 9876543213, '17, Brigade Road, Ashok Nagar, Bangalore, Karnataka'),
(5, 'Vignesh', 'Iyer', 'vignesh.iyer@example.com', 9876543214, '56, MG Road, T. Nagar, Chennai, Tamil Nadu'),
(6, 'Dharma', 'Sharma', 'dharma.sharma@example.com', 9876543215, '221B, MI Road, C-Scheme, Jaipur, Rajasthan'),
(7, 'Barna', 'Das', 'barna.das@example.com', 9876543216, '88, Park Street, Ballygunge, Kolkata, West Bengal'),
(8, 'Gopal', 'Singh', 'gopal.singh@example.com', 9876543217, '90, Hazratganj Road, Aliganj, Lucknow, Uttar Pradesh'),
(9, 'Surya', 'Mishra', 'surya.mishra@example.com', 9876543218, '34, Boring Road, Sri Krishna Puri, Patna, Bihar'),
(10, 'Hamdhan', 'Ali', 'hamdhan.ali@example.com', 9876543219, 'House No. 76, MG Road, Ernakulam, Kochi, Kerala')


INSERT INTO Products (ProductID, ProductName, Description, Price)
VALUES 
(1, 'iPhone 14', 'Apple Smartphone 128GB', 79999.00),
(2, 'Samsung Galaxy S22', 'Samsung Smartphone 256GB', 69999.00),
(3, 'Dell XPS 13', 'Dell Laptop 13-inch 512GB SSD', 119999.00),
(4, 'Sony WH-1000XM4', 'Sony Noise Cancelling Headphones', 24999.00),
(5, 'Apple Watch Series 8', 'Apple Smartwatch 45mm', 45999.00),
(6, 'Lenovo IdeaPad', 'Lenovo Laptop 8GB RAM 1TB HDD', 49999.00),
(7, 'Canon EOS 1500D', 'DSLR Camera with 18-55mm Lens', 40999.00),
(8, 'Realme Narzo 50', 'Realme Smartphone 64GB', 15999.00),
(9, 'Samsung 43 Inch Smart TV', 'Samsung Full HD Smart LED TV', 35999.00),
(10, 'JBL Flip 5', 'Portable Bluetooth Speaker', 8499.00)

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES 
(1, 1, '2024-12-01', 154997.00),
(2, 2, '2024-12-03', 8499.00),
(3, 3, '2024-12-04', 69999.00),
(4, 4, '2024-12-05', 119999.00),
(5, 5, '2024-12-07', 40999.00),
(6, 6, '2024-12-10', 35999.00),
(7, 7, '2024-12-12', 79999.00),
(8, 8, '2024-12-14', 24999.00),
(9, 9, '2024-12-15', 45999.00),
(10, 10, '2024-12-18', 15999.00)

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity)
VALUES 
(1, 1, 1, 1),  
(2, 1, 4, 1),  
(3, 2, 10, 1), 
(4, 3, 2, 1),  
(5, 4, 3, 1), 
(6, 5, 7, 1), 
(7, 6, 9, 1),  
(8, 7, 1, 1),  
(9, 8, 4, 1),  
(10, 9, 5, 1)

INSERT INTO Inventory (InventoryID, ProductID, QuantityInStock, LastStockUpdate)
VALUES 
(1, 1, 50, '2025-01-01'),
(2, 2, 40, '2025-01-01'),
(3, 3, 20, '2025-01-01'),
(4, 4, 30, '2025-01-01'),
(5, 5, 25, '2025-01-01'),
(6, 6, 35, '2025-01-01'),
(7, 7, 15, '2025-01-01'),
(8, 8, 60, '2025-01-01'),
(9, 9, 18, '2025-01-01'),
(10, 10, 45, '2025-01-01')



