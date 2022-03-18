------------------------------------START---------------------------------------
CREATE DATABASE ASM_2
GO

USE ASM_2
GO

---------------------------------------DISHES-----------------------------------------

CREATE TABLE Dishes(
Dishes_ID INT PRIMARY KEY Not Null,
Name VARCHAR(80) Not Null,
Price INT Not Null,
Type VARCHAR(20) Not Null,
)

------------------------------CUSTOMERS----------------------------------------------
CREATE TABLE Customers(
Phone_Number_ID DECIMAL(11,0) PRIMARY KEY Not Null,
Name VARCHAR(50) Not Null,
Gender VARCHAR (10) CHECK (Gender in ('Male', 'Female', 'Other')) Not Null,
BirthDate DATE Not Null,
)

--------------------EMPLOYEE--------------------------
CREATE TABLE Employee(
Employee_ID INT PRIMARY KEY IDENTITY(1,1) Not Null,
Full_Name VARCHAR(50) Not Null,
GENDER VARCHAR(10) CHECK (GENDER IN ('Male', 'Female', 'Other')) Not Null,
HomeTown VARCHAR(80) Not Null,
BirthDate DATE Not Null,
Duty NVARCHAR(50) Not Null,
Phone_Number_ID DECIMAL(11,0) Not Null,
Email VARCHAR(50) Not Null
)

-----------------------------TABLE----------------------------------------
CREATE TABLE [Table] (
Table_ID INT PRIMARY KEY IDENTITY(1,1) Not Null,
Type VARCHAR(50) Not Null,
Floor INT Not Null,
Number_Of_Seat INT Not Null,
Number_Of_Table INT Not Null
)

----------------------------------RESERVATION--------------------------------------------
CREATE TABLE Reservation (
Reservation_ID INT PRIMARY KEY Not Null,
Phone_Number_ID DECIMAL(11,0) Not Null FOREIGN KEY REFERENCES Customers (Phone_Number_ID) ON UPDATE CASCADE ON DELETE CASCADE,
Table_ID INT Not Null FOREIGN KEY REFERENCES [Table] (Table_ID) ON UPDATE CASCADE ON DELETE CASCADE,
Employee_ID INT Not Null FOREIGN KEY REFERENCES Employee (Employee_ID) ON UPDATE CASCADE ON DELETE CASCADE,
Booking_Date DATETIME Not Null,
Amount_Of_People INT Not Null,
)

--------------------------------ORDER------------------------------------------
CREATE TABLE [Order] (
Order_ID INT PRIMARY KEY Not Null,
Reservation_ID INT Not Null FOREIGN KEY REFERENCES Reservation (Reservation_ID) ON UPDATE CASCADE ON DELETE CASCADE,
Payment_Date DATE Not Null,
Note VARCHAR(80) Not Null,
)

-----------------------------------------ORDER DETAIL-----------------------------
CREATE TABLE OrderDetails (
Dishes_ID INT Not Null FOREIGN KEY REFERENCES Dishes (Dishes_ID),
Order_ID INT Not Null FOREIGN KEY REFERENCES [Order] (Order_ID),
CONSTRAINT OrderDetail PRIMARY KEY(Dishes_ID, Order_ID),
Quantity INT Not Null,
FeedBack NVARCHAR(100),
Rate INT
)
