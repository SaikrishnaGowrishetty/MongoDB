Create Database SaiAkshay
GO

USE [SaiAkshay]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 8/11/2020 12:31:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[Dname] [varchar](15) NOT NULL,
	[Dnumber] [int] NOT NULL,
	[Mgr_ssn] [char](9) NOT NULL,
	[Mgr_start_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Dnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPENDENT]    Script Date: 8/11/2020 12:31:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPENDENT](
	[Essn] [char](9) NOT NULL,
	[Dependent_name] [varchar](15) NOT NULL,
	[Sex] [char](1) NULL,
	[Bdate] [date] NULL,
	[Relationship] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Essn] ASC,
	[Dependent_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPT_LOCATIONS]    Script Date: 8/11/2020 12:31:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPT_LOCATIONS](
	[Dnumber] [int] NOT NULL,
	[Dlocation] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Dnumber] ASC,
	[Dlocation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 8/11/2020 12:31:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[Fname] [varchar](15) NOT NULL,
	[Minit] [char](1) NULL,
	[Lname] [varchar](15) NOT NULL,
	[Ssn] [char](9) NOT NULL,
	[Bdate] [date] NULL,
	[Address] [varchar](30) NULL,
	[Sex] [char](1) NULL,
	[Salary] [decimal](10, 2) NULL,
	[Super_ssn] [char](9) NULL,
	[Dno] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROJECT]    Script Date: 8/11/2020 12:31:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROJECT](
	[Pname] [varchar](15) NOT NULL,
	[Pnumber] [int] NOT NULL,
	[Plocation] [varchar](15) NULL,
	[Dnum] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WORKS_ON]    Script Date: 8/11/2020 12:31:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WORKS_ON](
	[Essn] [char](9) NOT NULL,
	[Pno] [int] NOT NULL,
	[Hours] [decimal](3, 1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Essn] ASC,
	[Pno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Headquarters', 1, N'888665555', CAST(N'1971-06-19' AS Date))
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Networking', 3, N'110110110', CAST(N'2009-05-15' AS Date))
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Administration', 4, N'987654321', CAST(N'1985-01-01' AS Date))
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Research', 5, N'333445555', CAST(N'1978-05-22' AS Date))
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Software', 6, N'111111100', CAST(N'1999-05-15' AS Date))
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Hardware', 7, N'444444400', CAST(N'1998-05-15' AS Date))
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'Sales', 8, N'555555500', CAST(N'1997-01-01' AS Date))
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'HR', 9, N'112244668', CAST(N'1989-02-01' AS Date))
INSERT [dbo].[DEPARTMENT] ([Dname], [Dnumber], [Mgr_ssn], [Mgr_start_date]) VALUES (N'QA', 11, N'913323708', CAST(N'2010-02-02' AS Date))
GO
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (1, N'Houston')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (4, N'Stafford')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (5, N'Bellaire')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (5, N'Houston')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (5, N'Sugarland')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (6, N'Atlanta')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (6, N'Sacramento')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (7, N'Milwaukee')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (8, N'Chicago')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (8, N'Dallas')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (8, N'Miami')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (8, N'Philadephia')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (8, N'Seattle')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (9, N'Arlington')
INSERT [dbo].[DEPT_LOCATIONS] ([Dnumber], [Dlocation]) VALUES (11, N'Austin')
GO
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Alex', N'C', N'Yu', N'001614905', CAST(N'1980-10-17' AS Date), N'626 Mary St,Dallas,TX', N'M', CAST(50000.00 AS Decimal(10, 2)), N'444444400', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Lisa', N'G', N'House', N'101248268', CAST(N'1975-06-29' AS Date), N'12 Maple St,Austin,TX', N'F', CAST(85000.00 AS Decimal(10, 2)), NULL, 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Sunil', N'D', N'Gupta', N'110110110', CAST(N'2001-02-01' AS Date), N'4312 Bowen Rd,Arlington,TX', N'M', CAST(80000.00 AS Decimal(10, 2)), N'111111100', 3)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jared', N'D', N'James', N'111111100', CAST(N'1966-10-10' AS Date), N'123 Peachtr,Atlanta,GA', N'M', CAST(85000.00 AS Decimal(10, 2)), NULL, 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jon', N'C', N'Jones', N'111111101', CAST(N'1967-11-14' AS Date), N'111 Allgood,Atlanta,GA', N'M', CAST(45000.00 AS Decimal(10, 2)), N'111111100', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Justin', NULL, N'Mark', N'111111102', CAST(N'1966-01-12' AS Date), N'2342 May,Atlanta,GA', N'M', CAST(40000.00 AS Decimal(10, 2)), N'111111100', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Brad', N'C', N'Knight', N'111111103', CAST(N'1968-02-13' AS Date), N'176 Main St.,Atlanta,GA', N'M', CAST(44000.00 AS Decimal(10, 2)), N'111111100', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Cameron', N'D', N'Thirteen', N'111422203', CAST(N'2001-05-04' AS Date), N'22 Univ Blvd,Arlington,TX', N'F', CAST(80000.00 AS Decimal(10, 2)), N'987987987', 4)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Juan', N'G', N'Linda', N'112244668', CAST(N'1965-06-23' AS Date), N'1210 Apple St,Austin,TX', N'F', CAST(55000.00 AS Decimal(10, 2)), NULL, 9)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Johny', N'C', N'Smith', N'122344668', CAST(N'1972-01-26' AS Date), N'1221 Diploma Dr.,Arlington,TX', N'M', CAST(65000.00 AS Decimal(10, 2)), N'999999999', 9)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'John', N'B', N'Smith', N'123456789', CAST(N'1955-01-09' AS Date), N'731 Fondren,Houston,TX', N'M', CAST(30000.00 AS Decimal(10, 2)), N'333445555', 5)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Debra', N'T', N'Hall', N'202843824', CAST(N'1983-03-11' AS Date), N'45 NY St,Rochester,NY', N'F', CAST(30000.00 AS Decimal(10, 2)), N'555555501', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Richard', N'T', N'Koelbel', N'214370999', CAST(N'1976-04-03' AS Date), N'50 Elk St,Chicago,IL', N'M', CAST(85000.00 AS Decimal(10, 2)), N'999999999', 4)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Evan', N'E', N'Wallis', N'222222200', CAST(N'1958-01-16' AS Date), N'134 Pelham,Milwaukee,WI', N'M', CAST(92000.00 AS Decimal(10, 2)), NULL, 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Josh', N'U', N'Zell', N'222222201', CAST(N'1954-05-22' AS Date), N'266 McGrady,Milwaukee,WI', N'M', CAST(56000.00 AS Decimal(10, 2)), N'222222200', 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Andy', N'C', N'Vile', N'222222202', CAST(N'1944-06-21' AS Date), N'1967 Jordan,Milwaukee,WI', N'M', CAST(53000.00 AS Decimal(10, 2)), N'222222200', 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Tom', N'G', N'Brand', N'222222203', CAST(N'1966-12-16' AS Date), N'112 Third St,Milwaukee,WI', N'M', CAST(62500.00 AS Decimal(10, 2)), N'222222200', 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jenny', N'F', N'Vos', N'222222204', CAST(N'1967-11-11' AS Date), N'263 Mayberry,Milwaukee,WI', N'F', CAST(61000.00 AS Decimal(10, 2)), N'222222201', 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Chris', N'A', N'Carter', N'222222205', CAST(N'1960-03-21' AS Date), N'565 Jordan,Milwaukee,WI', N'F', CAST(43000.00 AS Decimal(10, 2)), N'222222201', 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'John', N'T', N'Ed', N'222333444', CAST(N'1981-02-18' AS Date), N'4505 West St,Rochester,NY', N'M', CAST(30000.00 AS Decimal(10, 2)), N'555555501', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jennifer', N'A', N'Joy', N'223344667', CAST(N'1976-05-19' AS Date), N'1204 Main St,Miami,FL', N'F', CAST(45000.00 AS Decimal(10, 2)), N'666666613', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'willie', N'D', N'Mary', N'234234234', CAST(N'1961-12-20' AS Date), N'101 South St,Arlington,TX', N'F', CAST(12000.00 AS Decimal(10, 2)), N'112244668', 9)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Christina', N'S', N'Hisel', N'241625699', CAST(N'1986-07-05' AS Date), N'37 Church Row,Rochester,NY', N'F', CAST(45000.00 AS Decimal(10, 2)), N'123456789', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Erin', N'A', N'Maxfield', N'242535609', CAST(N'1971-12-22' AS Date), N'123 Copper St,Arlington,TX', N'F', CAST(72000.00 AS Decimal(10, 2)), N'555555500', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Wilson', N'A', N'Holmes', N'242916639', CAST(N'1971-06-02' AS Date), N'21 South Co,Arlington,TX', N'M', CAST(72500.00 AS Decimal(10, 2)), N'555555500', 4)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jake', N'D', N'Sheen', N'245239264', CAST(N'1954-12-25' AS Date), N'20 North Co,Arlington,TX', N'M', CAST(52000.00 AS Decimal(10, 2)), N'112244668', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Megan', N'G', N'Jones', N'254937381', CAST(N'1961-03-02' AS Date), N'528 Stone CT,Chicago,IL', N'F', CAST(62000.00 AS Decimal(10, 2)), N'666666600', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jisha', N'A', N'Carpenter', N'292740167', CAST(N'1985-05-29' AS Date), N'194 Beachdr,Miami,FL', N'F', CAST(15000.00 AS Decimal(10, 2)), N'666666613', 1)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Kim', N'C', N'Grace', N'333333300', CAST(N'1970-10-23' AS Date), N'667 Mills Ave,Sacramento,CA', N'F', CAST(79000.00 AS Decimal(10, 2)), NULL, 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jeff', N'H', N'Chase', N'333333301', CAST(N'1970-01-07' AS Date), N'15 Bradbury,Sacramento,CA', N'M', CAST(44000.00 AS Decimal(10, 2)), N'333333300', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Franklin', N'T', N'Wong', N'333445555', CAST(N'1945-12-08' AS Date), N'638 Voss,Houston,TX', N'M', CAST(40000.00 AS Decimal(10, 2)), N'888665555', 5)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jose', N'H', N'Barbara', N'343434344', CAST(N'1955-02-28' AS Date), N'905 East St,Kleen,TX', N'F', CAST(35000.00 AS Decimal(10, 2)), N'444444400', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Leonard', N'H', N'Moody', N'349273344', CAST(N'1973-02-09' AS Date), N'908 Greek Row,Austin,TX', N'M', CAST(45000.00 AS Decimal(10, 2)), N'444444400', 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Percy', N'M', N'Liang', N'398172999', CAST(N'1991-06-12' AS Date), N'14 Maple St,Austin,TX', N'M', CAST(55000.00 AS Decimal(10, 2)), NULL, 9)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Cindy', N'K', N'Burklow', N'432765098', CAST(N'1984-02-23' AS Date), N'2015 Neil Ave,Miami,FL', N'F', CAST(45000.00 AS Decimal(10, 2)), N'444444402', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Gregory', N'G', N'Laurie', N'444212096', CAST(N'1969-09-15' AS Date), N'78 Tree Cir,Houston,TX', N'M', CAST(90000.00 AS Decimal(10, 2)), N'444444400', 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Kim', N'G', N'Ted', N'444222666', CAST(N'1968-04-15' AS Date), N'3648 Tree Cir,Austin,TX', N'M', CAST(50000.00 AS Decimal(10, 2)), N'999999999', 9)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Alex', N'D', N'Freed', N'444444400', CAST(N'1950-10-09' AS Date), N'4333 Pillsbury,Milwaukee,WI', N'M', CAST(89000.00 AS Decimal(10, 2)), NULL, 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Bonnie', N'S', N'Bays', N'444444401', CAST(N'1956-06-19' AS Date), N'111 Hollow,Milwaukee,WI', N'F', CAST(70000.00 AS Decimal(10, 2)), N'444444400', 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Alec', N'C', N'Best', N'444444402', CAST(N'1966-06-18' AS Date), N'233 Solid,Milwaukee,WI', N'M', CAST(60000.00 AS Decimal(10, 2)), N'444444400', 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Sam', N'S', N'Snedden', N'444444403', CAST(N'1977-07-31' AS Date), N'97 Windy St,Milwaukee,WI', N'M', CAST(48000.00 AS Decimal(10, 2)), N'444444400', 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Joyce', N'A', N'English', N'453453453', CAST(N'1962-07-31' AS Date), N'5631 Rice Oak,Houston,TX', N'F', CAST(25000.00 AS Decimal(10, 2)), N'333445555', 5)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'John', N'C', N'James', N'555555500', CAST(N'1975-06-30' AS Date), N'766 Bloomington,Sacramento,CA', N'M', CAST(81000.00 AS Decimal(10, 2)), NULL, 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Nandita', N'K', N'Ball', N'555555501', CAST(N'1969-04-16' AS Date), N'222 Howard,Sacramento,CA', N'M', CAST(62000.00 AS Decimal(10, 2)), N'555555500', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Andrea', N'M', N'Sondrini', N'614370310', CAST(N'1996-12-30' AS Date), N'1450 Worthington St,Houston,TX', N'F', CAST(65000.00 AS Decimal(10, 2)), N'444444401', 5)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Michael', N'A', N'Morgan', N'636669233', CAST(N'1984-05-11' AS Date), N'26 Sunset Blvd,Miami,FL', N'M', CAST(73500.00 AS Decimal(10, 2)), N'666666612', 5)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Bob', N'B', N'Bender', N'666666600', CAST(N'1968-04-17' AS Date), N'8794 Garfield,Chicago,IL', N'M', CAST(96000.00 AS Decimal(10, 2)), NULL, 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jill', N'J', N'Jarvis', N'666666601', CAST(N'1966-01-14' AS Date), N'6234 Lincoln,Chicago,IL', N'F', CAST(36000.00 AS Decimal(10, 2)), N'666666600', 9)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Kate', N'W', N'King', N'666666602', CAST(N'1966-04-16' AS Date), N'1976 Boone Trace,Chicago,IL', N'F', CAST(44000.00 AS Decimal(10, 2)), N'666666600', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Lyle', N'G', N'Leslie', N'666666603', CAST(N'1963-06-09' AS Date), N'417 Hancock Ave,Chicago,IL', N'M', CAST(41000.00 AS Decimal(10, 2)), N'666666601', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Billie', N'J', N'King', N'666666604', CAST(N'1960-01-01' AS Date), N'556 Washington,Chicago,IL', N'F', CAST(38000.00 AS Decimal(10, 2)), N'666666603', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jon', N'A', N'Kramer', N'666666605', CAST(N'1964-08-22' AS Date), N'1988 Windy Creek,Seattle,WA', N'M', CAST(41500.00 AS Decimal(10, 2)), N'666666603', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Ray', N'H', N'King', N'666666606', CAST(N'1949-08-16' AS Date), N'213 Delk Road,Seattle,WA', N'M', CAST(44500.00 AS Decimal(10, 2)), N'666666604', 9)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Gerald', N'D', N'Small', N'666666607', CAST(N'1962-05-15' AS Date), N'122 Ball Street,Dallas,TX', N'M', CAST(29000.00 AS Decimal(10, 2)), N'666666602', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Arnold', N'A', N'Head', N'666666608', CAST(N'1967-05-19' AS Date), N'233 Spring St,Dallas,TX', N'M', CAST(33000.00 AS Decimal(10, 2)), N'666666602', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Helga', N'C', N'Pataki', N'666666609', CAST(N'1969-03-11' AS Date), N'101 Holyoke St,Dallas,TX', N'F', CAST(32000.00 AS Decimal(10, 2)), N'666666602', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Naveen', N'B', N'Drew', N'666666610', CAST(N'1970-05-23' AS Date), N'198 Elm St,Philadelphia,PA', N'M', CAST(34000.00 AS Decimal(10, 2)), N'666666607', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Carl', N'E', N'Reedy', N'666666611', CAST(N'1977-06-21' AS Date), N'213 Ball St,Philadelphia,PA', N'M', CAST(32000.00 AS Decimal(10, 2)), N'666666610', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Sammy', N'G', N'Hall', N'666666612', CAST(N'1970-01-11' AS Date), N'433 Main Street,Miami,FL', N'M', CAST(37000.00 AS Decimal(10, 2)), N'666666611', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Red', N'A', N'Bacher', N'666666613', CAST(N'1980-05-21' AS Date), N'196 Elm Street,Miami,FL', N'M', CAST(33500.00 AS Decimal(10, 2)), N'666666612', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Ramesh', N'K', N'Narayan', N'666884444', CAST(N'1952-09-15' AS Date), N'971 Fire Oak,Humble,TX', N'M', CAST(38000.00 AS Decimal(10, 2)), N'333445555', 5)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Penny', N'G', N'Wolowitz', N'673466642', CAST(N'1974-01-21' AS Date), N'42 South Blvd,Miami,FL', N'F', CAST(17000.00 AS Decimal(10, 2)), N'222333444', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Sheldon', N'C', N'Cucuou', N'849934919', CAST(N'1974-03-22' AS Date), N'11 Hollywood Blvd,Dallas,TX', N'M', CAST(35500.00 AS Decimal(10, 2)), N'888665555', 8)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'James', N'E', N'Borg', N'888665555', CAST(N'1927-11-10' AS Date), N'450 Stone,Houston,TX', N'M', CAST(55000.00 AS Decimal(10, 2)), NULL, 1)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'James', N'U', N'Miller', N'906218888', CAST(N'1978-05-27' AS Date), N'13 Fifth St,Seattle,WA', N'M', CAST(75000.00 AS Decimal(10, 2)), N'999999999', 5)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Joseph', N'K', N'Kirkish', N'913323708', CAST(N'1996-03-04' AS Date), N'22 UT Blvd,Austin,TX', N'M', CAST(95000.00 AS Decimal(10, 2)), NULL, 7)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Zach', N'A', N'Geller', N'913353347', CAST(N'1990-08-15' AS Date), N'333 PikeWay,Seattle,WA', N'M', CAST(55000.00 AS Decimal(10, 2)), N'444444403', 6)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Jennifer', N'S', N'Wallace', N'987654321', CAST(N'1931-06-20' AS Date), N'291 Berry,Bellaire,TX', N'F', CAST(43000.00 AS Decimal(10, 2)), N'888665555', 4)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Ahmad', N'V', N'Jabbar', N'987987987', CAST(N'1959-03-29' AS Date), N'980 Dallas,Houston,TX', N'M', CAST(25000.00 AS Decimal(10, 2)), N'987654321', 4)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Alicia', N'J', N'Zelaya', N'999887777', CAST(N'1958-07-19' AS Date), N'3321 Castle,Spring,TX', N'F', CAST(25000.00 AS Decimal(10, 2)), N'987654321', 4)
INSERT [dbo].[EMPLOYEE] ([Fname], [Minit], [Lname], [Ssn], [Bdate], [Address], [Sex], [Salary], [Super_ssn], [Dno]) VALUES (N'Roy', N'C', N'Lewallen', N'999999999', CAST(N'1977-03-02' AS Date), N'14 Wynncrest Street,Dallas,TX', N'M', CAST(75500.00 AS Decimal(10, 2)), N'666666600', 8)
GO
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'ProductX', 1, N'Bellaire', 5)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'ProductY', 2, N'Sugarland', 5)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'ProductZ', 3, N'Houston', 5)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'EntityAnnot', 4, N'Houston', 5)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Computerization', 10, N'Stafford', 4)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'ConfigMgmt', 11, N'Atlanta', 6)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'DataMining', 13, N'Sacramento', 6)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Reorganization', 20, N'Houston', 1)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'SearchEngine', 22, N'Arlington', 6)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'MotherBoard', 29, N'Milwaukee', 7)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Newbenefits', 30, N'Stafford', 4)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'OperatingSystem', 61, N'Sacramento', 6)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'DatabaseSystems', 62, N'Atlanta', 6)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Middleware', 63, N'Atlanta', 6)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Advertizing', 70, N'Arlington', 9)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'InkjetPrinters', 91, N'Milwaukee', 7)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'LaserPrinters', 92, N'Milwaukee', 7)
INSERT [dbo].[PROJECT] ([Pname], [Pnumber], [Plocation], [Dnum]) VALUES (N'Human1', 95, N'Arlington', 9)
GO
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'001614905', 13, CAST(18.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'101248268', 29, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'111111100', 61, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'111111101', 61, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'111111102', 61, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'111111103', 61, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'111422203', 4, CAST(45.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'112244668', 95, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'122344668', 3, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'122344668', 20, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'122344668', 30, CAST(25.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'123456789', 1, CAST(32.5 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'123456789', 2, CAST(7.5 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'202843824', 11, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'214370999', 10, CAST(35.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'222222200', 62, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'222222201', 62, CAST(48.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'222222202', 62, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'222222203', 62, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'222222204', 62, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'222222205', 62, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'222333444', 91, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'223344667', 63, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'234234234', 95, CAST(35.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'241625699', 61, CAST(4.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'242535609', 62, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'242535609', 70, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'242916639', 4, CAST(5.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'242916639', 11, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'245239264', 10, CAST(25.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'245239264', 11, CAST(25.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'254937381', 70, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'292740167', 1, CAST(25.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'333333300', 63, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'333333301', 63, CAST(46.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'333445555', 2, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'333445555', 3, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'333445555', 10, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'333445555', 20, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'343434344', 63, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'349273344', 29, CAST(15.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'398172999', 70, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'432765098', 63, CAST(25.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'444212096', 63, CAST(25.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'444222666', 62, CAST(25.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'444444400', 91, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'444444401', 91, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'444444402', 91, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'444444403', 91, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'453453453', 1, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'453453453', 2, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'555555500', 92, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'555555501', 92, CAST(44.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'614370310', 3, CAST(45.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'636669233', 4, CAST(11.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666601', 91, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666603', 91, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666604', 91, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666605', 92, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666606', 91, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666607', 61, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666608', 62, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666609', 63, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666610', 61, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666611', 61, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666612', 61, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666613', 61, CAST(30.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666613', 62, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666666613', 63, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'666884444', 3, CAST(40.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'673466642', 22, CAST(4.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'849934919', 95, CAST(23.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'888665555', 20, CAST(5.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'906218888', 29, CAST(15.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'913323708', 92, CAST(33.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'913353347', 22, CAST(30.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'987654321', 20, CAST(15.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'987654321', 30, CAST(20.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'987987987', 10, CAST(35.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'987987987', 30, CAST(5.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999887777', 10, CAST(10.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999887777', 30, CAST(30.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 1, CAST(2.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 2, CAST(2.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 3, CAST(4.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 10, CAST(4.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 20, CAST(4.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 30, CAST(4.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 61, CAST(4.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 62, CAST(4.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 63, CAST(4.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 70, CAST(2.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 91, CAST(2.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 92, CAST(1.0 AS Decimal(3, 1)))
INSERT [dbo].[WORKS_ON] ([Essn], [Pno], [Hours]) VALUES (N'999999999', 95, CAST(3.0 AS Decimal(3, 1)))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DEPARTME__83BFD849BF1AF50A]    Script Date: 8/11/2020 12:31:05 PM ******/
ALTER TABLE [dbo].[DEPARTMENT] ADD UNIQUE NONCLUSTERED 
(
	[Dname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PROJECT__173BB01CC1079219]    Script Date: 8/11/2020 12:31:05 PM ******/
ALTER TABLE [dbo].[PROJECT] ADD UNIQUE NONCLUSTERED 
(
	[Pname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DEPARTMENT]  WITH CHECK ADD FOREIGN KEY([Mgr_ssn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
GO
ALTER TABLE [dbo].[DEPENDENT]  WITH CHECK ADD FOREIGN KEY([Essn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
GO
ALTER TABLE [dbo].[DEPT_LOCATIONS]  WITH CHECK ADD FOREIGN KEY([Dnumber])
REFERENCES [dbo].[DEPARTMENT] ([Dnumber])
GO
ALTER TABLE [dbo].[PROJECT]  WITH CHECK ADD FOREIGN KEY([Dnum])
REFERENCES [dbo].[DEPARTMENT] ([Dnumber])
GO
ALTER TABLE [dbo].[WORKS_ON]  WITH CHECK ADD FOREIGN KEY([Essn])
REFERENCES [dbo].[EMPLOYEE] ([Ssn])
GO
ALTER TABLE [dbo].[WORKS_ON]  WITH CHECK ADD FOREIGN KEY([Pno])
REFERENCES [dbo].[PROJECT] ([Pnumber])
GO
