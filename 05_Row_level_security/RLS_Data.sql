USE RLS;

DROP TABLE IF EXISTS dbo.rls_sales
DROP TABLE IF EXISTS dbo.rls_users
DROP TABLE IF EXISTS dbo.RLS_Manager

CREATE TABLE [dbo].[RLS_Sales](
	ID INT IDENTITY(1,1) NOT NULL,
	OrderID INT NULL,
	SalesRep VARCHAR(20) NOT NULL,
	Product VARCHAR(100) NULL,
	Qty INT NULL,
	Price INT NOT NULL
	)



INSERT INTO dbo.RLS_Sales (OrderID,SalesRep,Product,Qty, price)
		  SELECT  1023, 'sntk\tomaz', 'lamp', 1,12
UNION ALL SELECT  1024, 'sntk\john', 'Key', 2,24
UNION ALL SELECT  1025, 'sntk\john', 'knife', 4,42
UNION ALL SELECT  1026, 'sntk\tomaz', 'pear', 3,2
UNION ALL SELECT  1026, 'sntk\tomaz', 'Key', 1,12
UNION ALL SELECT  1027, 'sntk\jeff', 'bag', 3,42
UNION ALL SELECT  1027, 'sntk\mike', 'paper', 10,19
UNION ALL SELECT  1027, 'sntk\mike', 'phone', 1,62
UNION ALL SELECT  1027, 'sntk\stone', 'bottle', 10,23

CREATE TABLE dbo.RLS_Users
(
	ID INT IDENTITY(1,1) NOT NULL
	,SamAccountName VARCHAR(20) NOT NULL
	,Email VARCHAR(200) NULL)


INSERT INTO dbo.RLS_Users
		  SELECT 'sntk\tomaz','tomaz@gmail.com'
UNION ALL SELECT 'sntk\john','john@gmail.com'
UNION ALL SELECT 'sntk\jeff','jeff@gmail.com'
UNION ALL SELECT 'sntk\mike','mike@gmail.com'
UNION ALL SELECT 'sntk\stone','stone@gmail.com'
UNION ALL SELECT 'sntk\anna','anna@gmail.com'


CREATE TABLE dbo.RLS_Manager
(
	ID INT IDENTITY(1,1) NOT NULL
	,SamAccountName VARCHAR(20) NOT NULL
	,ManagerSamAccountName VARCHAR(20) NULL)


INSERT INTO dbo.RLS_Manager
		  SELECT 'sntk\tomaz','sntk\tomaz'
UNION ALL SELECT 'sntk\john','sntk\tomaz'
UNION ALL SELECT 'sntk\jeff','sntk\tomaz'
UNION ALL SELECT 'sntk\mike','sntk\stone'
UNION ALL SELECT 'sntk\stone','sntk\tomaz'
UNION ALL SELECT 'sntk\anna','sntk\tomaz'