/*CREATE VIEW EmployeeTitle
AS
SELECT Title, FirstName, LastName, EmployeeID
FROM Positions
Join Employee ON Positions.JobID = Employee.JobID;

EXEC sp_helptext 'EmployeeTitle';
SELECT * FROM EmployeeTitle;


SELECT FirstName, EmployeeID FROM Employee
ORDER BY FirstName;

SELECT * FROM EmployeeTitle;

UPDATE EmployeeTitle
SET FirstName = 'Bongo'
WHERE Title = 'Artist';

SELECT * FROM EmployeeTitle

USE McDev;
GO
CREATE VIEW ProjectB
AS
SELECT FirstName, ProjectName, BranchID
FROM Employee
Join EmployeeProjects ON Employee.EmployeeID = EmployeeProjects.EmployeeID
JOIN Projects ON EmployeeProjects.ProjectID = Projects.ProjectID;
GO
SELECT * FROM ProjectB
GO
USE McDev;
GO
CREATE VIEW DevCity
AS
SELECT StudioBranch, Address, City, State
FROM Zipcode
JOIN Branch ON Zipcode.ZipCode = Branch.ZipCode
GO
SELECT * FROM DevCity
GO
USE McDev;
GO
CREATE VIEW LastJob
AS
SELECT TOP 10 LastName, JobId
FROM Employee
ORDER BY LastName DESC;
GO
SELECT * FROM LastJob
GO*/