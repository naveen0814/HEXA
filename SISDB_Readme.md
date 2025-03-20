# Task 1. Database Design:  
1. Create the database named "SISDB" 
```sql
CREATE DATABASE SISDB
GO
```
2. Define the schema for the Students, Courses, Enrollments, Teacher, and Payments tables based 
on the provided schema. Write SQL scripts to create the mentioned tables with appropriate data 
types, constraints, and relationships.  
a. Students  
b. Courses 
c. Enrollments  
d. Teacher  
e. Payments 
```sql

CREATE TABLE Students (
    student_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(20)
)
CREATE TABLE Teacher (
    teacher_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
)
CREATE TABLE Courses (
    course_id INT PRIMARY KEY IDENTITY(1,1),
    course_name VARCHAR(100),
    credits INT,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
)
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY IDENTITY(1,1),
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE
)
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY IDENTITY(1,1),
    student_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE
)


```

3. Create an ERD (Entity Relationship Diagram) for the database. 

![{92BF6162-FB04-4051-AA2C-8B3C7B93855D}](https://github.com/user-attachments/assets/71e521a4-5167-4f89-8523-570df2fc283f)


4. Create appropriate Primary Key and Foreign Key constraints for referential integrity. 
```sql

CREATE TABLE Students (
    student_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(20)
)
CREATE TABLE Teacher (
    teacher_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
)
CREATE TABLE Courses (
    course_id INT PRIMARY KEY IDENTITY(1,1),
    course_name VARCHAR(100),
    credits INT,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
)
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY IDENTITY(1,1),
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE
)
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY IDENTITY(1,1),
    student_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE
)


```

5. Insert at least 10 sample records into each of the following tables. 
i. 
ii. 
iii. 
Students  
Courses 
Enrollments  
iv. Teacher  
v. Payments
```sql

INSERT INTO Students (first_name, last_name, date_of_birth, email, phone_number)
VALUES 
('Naveen', 'Kumar', '1995-08-15', 'naveen.kumar@example.com', '9876543210'),
('Venkat', 'Rao', '1996-02-10', 'venkat.rao@example.com', '9876512345'),
('Suresh', 'Patel', '1997-03-22', 'suresh.patel@example.com', '9876523456'),
('Vasanth', 'Menon', '1998-04-18', 'vasanth.menon@example.com', '9876534567'),
('Surya', 'Nair', '1994-12-05', 'surya.nair@example.com', '9876545678'),
('Nitesh', 'Yadav', '1993-09-13', 'nitesh.yadav@example.com', '9876556789'),
('Ajith', 'Khan', '1995-07-29', 'ajith.khan@example.com', '9876567890'),
('Vijay', 'Reddy', '1996-11-21', 'vijay.reddy@example.com', '9876578901'),
('Anjali', 'Sharma', '1997-01-30', 'anjali.sharma@example.com', '9876589012'),
('Priya', 'Iyer', '1998-05-14', 'priya.iyer@example.com', '9876590123')

INSERT INTO Teacher (first_name, last_name, email)
VALUES 
('Ramesh', 'Krishnan', 'ramesh.krishnan@example.com'),
('Meena', 'Das', 'meena.das@example.com'),
('Vikram', 'Singh', 'vikram.singh@example.com')

INSERT INTO Courses (course_name, credits, teacher_id)
VALUES 
('C Programming Basics', 4, 1),
('Mathematics 101', 3, 2),
('Java Fundamentals', 4, 3),
('Advanced Database Management', 4, 1),
('Operating Systems Concepts', 3, 2)

INSERT INTO Enrollments (student_id, course_id, enrollment_date)
VALUES 
(1, 1, '2024-01-10'),
(1, 2, '2024-01-12'),
(2, 3, '2024-01-15'),
(3, 1, '2024-01-18'),
(4, 4, '2024-01-20'),
(5, 5, '2024-01-22'),
(6, 2, '2024-01-25'),
(7, 3, '2024-01-28'),
(8, 1, '2024-01-30'),
(9, 4, '2024-02-01')

INSERT INTO Payments (student_id, amount, payment_date)
VALUES 
(1, 500.00, '2024-02-10'),
(2, 300.00, '2024-02-11'),
(3, 450.00, '2024-02-12'),
(4, 400.00, '2024-02-13'),
(5, 350.00, '2024-02-14'),
(6, 600.00, '2024-02-15'),
(7, 550.00, '2024-02-16'),
(8, 500.00, '2024-02-17'),
(9, 300.00, '2024-02-18'),
(10, 700.00, '2024-02-19')

```
