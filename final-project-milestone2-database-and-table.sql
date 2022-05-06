/*CREATE DATABASE McDev;*/
/*USE McDev;
GO
CREATE TABLE Employee
(
	EmployeeID int NOT NULL,
	FirstName varchar(20) NOT NULL,
	LastName varchar(30) NOT NULL,
	JobID varchar(50),
	PRIMARY KEY(EmployeeID) 
);
GO
CREATE TABLE EmployeeProjects
(
	EmployeeID int NOT NULL,
	ProjectID int NOT NULL,
	PRIMARY KEY(ProjectID, EmployeeID)
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
	ZipCode varchar (10)NOT NULL,
	City varchar NOT NULL,
	State varchar (2) NOT NULL,
	PRIMARY KEY(ZipCode)
);
GO

CREATE TABLE Projects
(
	ProjectID int NOT NULL,
	ProjectName varchar (15) NOT NULL,
	BranchID int,
	PRIMARY KEY(ProjectID)
);
GO
CREATE TABLE Positions
(
	JobID varchar(50)NOT NULL,
	Title varchar (20) NOT NULL,
	JobDescription varchar (20),
	PRIMARY KEY(JobID)
);
GO

ALTER TABLE Zipcode
ALTER COLUMN City varchar(50) NOT NULL

USE McDev
/*INSERT INTO Zipcode VALUES('10002', 'NewYork', 'NY')
INSERT INTO Zipcode VALUES('02113', 'Boston', 'MA')
INSERT INTO Zipcode VALUES('91103', 'Pasadena', 'CA')

INSERT INTO Positions VALUES('PDR', 'Producer', 'Financing')
INSERT INTO Positions VALUES('PRG', 'Programmer', 'Programming')
INSERT INTO Positions VALUES('ANM', 'Animator', 'Animation')
INSERT INTO Positions VALUES('PRJD', 'ProjectDirector', 'Director')
INSERT INTO Positions VALUES('ART', 'Artist', 'Artist')
INSERT INTO Positions VALUES('TST', 'Tester', 'Tester')
INSERT INTO Positions VALUES('MNG', 'Manager', 'Manager')
INSERT INTO Positions VALUES('CPR', 'Corporate', 'Corporate')

INSERT INTO Branch VALUES('21000', 'McDevCorporate', '435 Frank Ave.','10002','212-447-6822')
INSERT INTO Branch VALUES('10771', 'McDevEast', '22 East Joe Blvd.','02113','617-288-3411')
INSERT INTO Branch VALUES('10551', 'McDevWest', '3100 Calvin St.','91103','626-936-1704')

INSERT INTO Employee VALUES('20010', 'Argyle', 'Flumperdo','PDR')
INSERT INTO Employee VALUES('20011', 'Johnny', 'Toonski','ART')
INSERT INTO Employee VALUES('20012', 'Frank', 'Bluberbee','ART')
INSERT INTO Employee VALUES('20013', 'Jamie', 'Velhiem','ART')
INSERT INTO Employee VALUES('20014', 'Dustin', 'Ragabag','ART')
INSERT INTO Employee VALUES('20015', 'Phillip', 'Pillings','PRG')
INSERT INTO Employee VALUES('20016', 'Jessica', 'Rabbitha','PRG')
INSERT INTO Employee VALUES('20017', 'Terry', 'Wendesky','PRG')
INSERT INTO Employee VALUES('20018', 'Zardon', 'Xendorkis','ANM')
INSERT INTO Employee VALUES('20019', 'Tammy', 'Blandy','ANM')
INSERT INTO Employee VALUES('20020', 'Rosco', 'Peatrian','TST')
INSERT INTO Employee VALUES('20021', 'Tony', 'Sorkawsco','TST')
INSERT INTO Employee VALUES('20022', 'Harold', 'Buckleburp','TST')

INSERT INTO Employee VALUES('20023', 'Jennifer', 'Tinersnoop','PDR')
INSERT INTO Employee VALUES('20024', 'Elle', 'Yuyakamac','ART')
INSERT INTO Employee VALUES('20025', 'Darren', 'Obarwen','ART')
INSERT INTO Employee VALUES('20026', 'Harry', 'Hendor','ART')
INSERT INTO Employee VALUES('20027', 'Stanly', 'Smithly','PRG')
INSERT INTO Employee VALUES('20028', 'Lisa', 'Nosimpsend','PRG')
INSERT INTO Employee VALUES('20029', 'Erin', 'Wondurbrawght','ANM')
INSERT INTO Employee VALUES('20030', 'Mindy', 'Waddledee','ANM')
INSERT INTO Employee VALUES('20031', 'Jeffery', 'Starshipped','TST')
INSERT INTO Employee VALUES('20032', 'Karen', 'Yellenten','TST')
INSERT INTO Employee VALUES('20033', 'Jessica', 'Dorboggle','TST')

INSERT INTO Employee VALUES('30010', 'June', 'Dugbuggen','PRJD')
INSERT INTO Employee VALUES('30011', 'Vlad', 'Smith','PRJD')
INSERT INTO Employee VALUES('30012', 'Kyle', 'Quentt','MNG')
INSERT INTO Employee VALUES('30013', 'Cathy', 'Pazuzool','MNG')
INSERT INTO Employee VALUES('40010', 'Sandy', 'Crabell','CRP')

INSERT INTO Projects VALUES('100', 'ProjectFPS', '10551')
INSERT INTO Projects VALUES('200', 'ProjectRPG', '10771')

INSERT INTO EmployeeProjects VALUES('20010', '100')
INSERT INTO EmployeeProjects VALUES('20011', '100')
INSERT INTO EmployeeProjects VALUES('20012', '100')
INSERT INTO EmployeeProjects VALUES('20013', '100')
INSERT INTO EmployeeProjects VALUES('20014', '100')
INSERT INTO EmployeeProjects VALUES('20015', '100')
INSERT INTO EmployeeProjects VALUES('20016', '100')
INSERT INTO EmployeeProjects VALUES('20017', '100')
INSERT INTO EmployeeProjects VALUES('20018', '100')
INSERT INTO EmployeeProjects VALUES('20019', '100')
INSERT INTO EmployeeProjects VALUES('20020', '100')
INSERT INTO EmployeeProjects VALUES('20021', '100')
INSERT INTO EmployeeProjects VALUES('20022', '100')

INSERT INTO EmployeeProjects VALUES('20010', '200')
INSERT INTO EmployeeProjects VALUES('20022', '200')
INSERT INTO EmployeeProjects VALUES('20024', '200')
INSERT INTO EmployeeProjects VALUES('20025', '200')
INSERT INTO EmployeeProjects VALUES('20026', '200')
INSERT INTO EmployeeProjects VALUES('20027', '200')
INSERT INTO EmployeeProjects VALUES('20028', '200')
INSERT INTO EmployeeProjects VALUES('20029', '200')
INSERT INTO EmployeeProjects VALUES('20030', '200')
INSERT INTO EmployeeProjects VALUES('20031', '200')
INSERT INTO EmployeeProjects VALUES('20032', '200')
INSERT INTO EmployeeProjects VALUES('20033', '200')
INSERT INTO EmployeeProjects VALUES('30010', '100')
INSERT INTO EmployeeProjects VALUES('30011', '200')
INSERT INTO EmployeeProjects VALUES('30012', '100')
INSERT INTO EmployeeProjects VALUES('30013', '200')*/