CREATE DATABASE McDev;

GO
USE McDev;
CREATE TABLE Employee
(
	EmployeeID int NOT NULL,
	FirstName varchar(20) NOT NULL,
	LastName varchar(30) NOT NULL,
	JobID varchar(50),
	PRIMARY KEY(EmployeeID),
);
GO
CREATE TABLE EmployeeProjects
(
	EmployeeID int NOT NULL,
	ProjectID int NOT NULL,
	PRIMARY KEY(ProjectID)
);
GO
CREATE TABLE Branch
(
	BranchID int NOT NULL,
	StudioBranch varchar (50) NOT NULL,
	Address varchar (200) NOT NULL,
	ZipCode varchar (10),
	Phone varchar (15),
	PRIMARY KEY(BranchID)
);
GO

CREATE TABLE Zipcode
(
	ZipCode int NOT NULL,
	City int NOT NULL,
	State varchar (2) NOT NULL,
	PRIMARY KEY(ZipCode)
);
GO

CREATE TABLE Project
(
	ProjectID int NOT NULL,
	ProjectName varchar (15) NOT NULL,
	BranchID int,
	PRIMARY KEY(ProjectID)
);
GO
CREATE TABLE Positions
(
	JobID int NOT NULL,
	Title varchar (20) NOT NULL,
	JobDescription varchar (20),
	PRIMARY KEY(JobID)
);
GO

