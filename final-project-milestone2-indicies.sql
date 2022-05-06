USE McDev;
GO
CREATE INDEX IX_ZipCode
	ON Branch(ZipCode);
GO
CREATE INDEX IX_JobID
	ON Employee(JobID);
GO
CREATE INDEX IX_BranchID
	ON Projects(BranchID);
GO
CREATE INDEX IX_EmployeeID
	ON EmployeeProjects(EmployeeID);
GO
CREATE INDEX IX_ProjectID
	ON EmployeeProjects(ProjectID);
GO