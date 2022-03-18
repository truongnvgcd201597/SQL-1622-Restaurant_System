| | | | | | |
|-|-|-|-|-|-|
|Test cases|Scenario|SQL Query|Expected Result|Actual Result|Status|
|1|Successfully update row in any table|UPDATE Dishes |return name 'Chao loc ca loc' at Dishes_ID = 120| | |
| | |SET Name = 'Chao canh ca loc'| | | |
| | |WHERE Dishes_ID = 120| | |Pass|
|2|Successfully delete row in any table|DELETE Customers|Returns customers table with no customers with phone number 435476733| | |
| | |WHERE Phone_Number_ID = 435476733| | | |
| | | | | | |
| | | | | | |
| | | | | |Pass|
|3|Successfully insert data in any table|INSERT INTO [Table]|returns the latest row named 'Ocean Table'| | |
| | |VALUES('Ocean Table',4,6,8)| | | |
| | | | | |Pass|
|4|Accurately access employee email|SELECT Full_Name, Duty, Email FROM Employee|Correctly return the person's information| | |
| | |WHERE Email = 'truongnvgcd201597@fpt.edu.vn'| | |Pass|
|5|Calculate the total number of dishes on the menu|SELECT COUNT(Dishes_ID) AS Total_Number_Of_Dishes|Returns the exact total number of dishes| | |
| | |FROM Dishes| | |Pass|
| | | | | | |
|6|Successful calculation of total number of customers|SELECT SUM(Amount_Of_People) AS Total_Amount_Of_People|Returns the exact total number of customers| | |
| | |FROM Reservation| | | |
| | | | | |Pass|
