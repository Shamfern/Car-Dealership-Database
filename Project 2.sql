-- Step 1: Create the database
CREATE DATABASE CarSalesDB;

-- Step 2: Use the database
USE CarSalesDB;

-- Step 3: Create the tables
-- Create table for CAR
CREATE TABLE Car (
    Car_ID INT PRIMARY KEY AUTO_INCREMENT,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Create table for CUSTOMER
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- Create table for SALES PERSON
CREATE TABLE SalesPerson (
    Sales_ID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    CommissionRate DECIMAL(5, 2)
);

-- Create table for SALES ORDER
CREATE TABLE SalesOrder (
    Sales_OrderID INT PRIMARY KEY AUTO_INCREMENT,
    Sales_ID INT,
    Car_ID INT,
    Customer_ID INT,
    Date DATE,
    FOREIGN KEY (Sales_ID) REFERENCES SalesPerson(Sales_ID),
    FOREIGN KEY (Car_ID) REFERENCES Car(Car_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);
