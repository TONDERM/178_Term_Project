/*Final Project Procedures

stored procedure that retrieves and displays data

USE McDev;
GO
CREATE PROC devEmployeet
AS
SELECT * FROM Employee
WHERE JobID = 'TST'
ORDER BY EmployeeID DESC;
GO
EXEC devEmployeet;

stored procedure that takes 1 or more input parameters and retrieves results based on the value

USE McDev;
GO
CREATE PROC devBongo
	@FNameID nvarchar(10) = '%'
AS
BEGIN
	SELECT FirstName,EmployeeID 
	FROM Employee
	WHERE FirstName LIKE @FNameID;
END
GO
EXEC devBongo 'Bongo%';

stored procedure that takes 1 or more input parameters and includes 1 or more output parameters

USE McDev;
GO
CREATE PROC devProjecty
	@JobID nvarchar(10),
	@FirstName nvarchar(30) OUTPUT,
	@LastName nvarchar(30) OUTPUT
AS
SELECT @FirstName = FirstName, @LastName = LastName
FROM Employee 
WHERE JobID = @JobID;
GO
DECLARE @FirstName nvarchar(30);
DECLARE @LastName nvarchar(30);
EXEC devProjecty 10, @FirstName OUTPUT, @LastName OUTPUT;
SELECT @FirstName AS 'First Name', @LastName AS 'Last Name';
^^
This just returns a null value for each column.  I don't know why.

stored procedure that includes a return value
GO
CREATE PROC devEmployeeCount
AS
DECLARE @EmployeeCount int;
SELECT @EmployeeCount = COUNT(*)
FROM Employee 
RETURN @EmployeeCount;

GO

DECLARE @EmployeeCount int;
EXEC @EmployeeCount = devEmployeeCount;
PRINT 'There are ' + CONVERT(varchar, @EmployeeCount) + ' employees working in the McDev family';
GO

Final Project User Defined Functions

scalar function that accepts an argument

USE McDev;
GO
CREATE FUNCTION fnKarenFirst
    (@KarenFirst nvarchar(50) = '%')
    RETURNS nvarchar(50)
BEGIN
    RETURN (SELECT FirstName FROM Employee WHERE FirstName Like @KarenFirst);
END;
GO
SELECT FirstName, LastName, JobID FROM Employee 
WHERE FirstName = dbo.fnKarenFirst('Karen%');
USE McDev;
GO
CREATE FUNCTION fnLastName
	(@LastName nvarchar(50) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Employee WHERE LastName LIKE @LastName);
GO
SELECT * FROM dbo.fnLastName('%W%');
USE McDev;
GO
CREATE FUNCTION fnBongoName
	(@BongoName nvarchar(50) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Employee WHERE FirstName LIKE @BongoName);
GO
SELECT * FROM dbo.fnBongoName('%Bongo%');

Final Project Triggers

trigger that will add deleted data from one of your tables into an archive or transaction table

 USE McDev;
 GO
 SELECT * INTO EmployeeLevel
 FROM EmployeeProjects
 WHERE 1=0;
 ALTER TABLE EmployeeLevel
 ADD Ranking varchar(10);
 GO
CREATE TRIGGER EmployeeLevel_INSERT ON EmployeeProjects
	AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @EmployeeID decimal
	DECLARE @ProjectID decimal
	DECLARE @Ranking nvarchar(10)
    SELECT @EmployeeID =INSERTED.EmployeeID, @ProjectID = INSERTED.ProjectID, @Ranking = INSERTED.Ranking
	FROM INSERTED
    INSERT INTO EmployeeLevel VALUES(@EmployeeID,@ProjectID, @Ranking, 'Inserted' )
END

GO
INSERT INTO EmployeeProjects VALUES(20023,100,'Junior');
GO

SELECT * FROM EmployeeLevel;
GO
this trigger section is confusing.*/