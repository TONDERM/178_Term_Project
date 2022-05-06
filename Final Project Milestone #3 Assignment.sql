/*USE McDev;
SELECT COUNT(DISTINCT JobID) AS WorkerBees
FROM Positions

SELECT COUNT(JobID) AS ArtBees
FROM Employee
WHERE JobID = 'ART';

SELECT MIN(LastName) AS LastLength
FROM Employee

SELECT MAX(FirstName)AS MaxFirst, MAX(LastName) AS MaxLast, MIN(FirstName) AS MinFirst, MIN(LastName) AS MinLast 
FROM Employee

SELECT Positions.Title, COUNT(Employee.JobID) AS 'Total Positions'
FROM Employee JOIN Positions ON Employee.JobID = Positions.JobID
GROUP BY Positions.Title;*/