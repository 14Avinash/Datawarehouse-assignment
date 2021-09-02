CREATE DATABASE Shop;
GO
USE [Shop]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (1, N'Computer')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (2, N'Accessory')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (3, N'Drive')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (4, N'Printer')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [numeric](18, 0) NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([Id], [Name], [Price], [CategoryId]) VALUES (1, N'Laptop', 2000, 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CategoryId]) VALUES (2, N'Mouse', 50, 2)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CategoryId]) VALUES (3, N'Keyboard', 300, 2)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CategoryId]) VALUES (4, N'Flash drive', 100, 3)
INSERT [dbo].[Product] ([Id], [Name], [Price], [CategoryId]) VALUES (5, N'Hard drive', 400, 3)
SET IDENTITY_INSERT [dbo].[Product] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [nvarchar](50) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderTotal] [numeric](18, 0) NOT NULL,
	[EmployeeId] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([Id], [OrderNumber], [OrderDate], [OrderTotal], [EmployeeId]) VALUES (1, N'Z/13/2014', '2014-01-14', 55, 3)
INSERT [dbo].[Orders] ([Id], [OrderNumber], [OrderDate], [OrderTotal], [EmployeeId]) VALUES (2, N'Z/25/2015', '2015-02-21', 668, 5)
INSERT [dbo].[Orders] ([Id], [OrderNumber], [OrderDate], [OrderTotal], [EmployeeId]) VALUES (3, N'Z/30/2015', '2015-06-29', 2890, 1)
INSERT [dbo].[Orders] ([Id], [OrderNumber], [OrderDate], [OrderTotal], [EmployeeId]) VALUES (5, N'Z/45/2015', '2015-07-24', 800, 3)
INSERT [dbo].[Orders] ([Id], [OrderNumber], [OrderDate], [OrderTotal], [EmployeeId]) VALUES (6, N'Z/50/2015', '2015-08-02', 2700, 4)
SET IDENTITY_INSERT [dbo].[Orders] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitCost] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [UnitCost]) VALUES (2, 1, 2, 1, 55)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [UnitCost]) VALUES (3, 2, 2, 1, 55)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [UnitCost]) VALUES (4, 2, 4, 2, 99)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [UnitCost]) VALUES (5, 2, 5, 1, 415)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [UnitCost]) VALUES (6, 3, 1, 2, 1900)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [UnitCost]) VALUES (7, 3, 2, 2, 45)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity], [UnitCost]) VALUES (8, 5, 2, 20, 40)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormerEmployee](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nchar](1) NULL,
	[BirthDate] [date] NULL,
	[Salary] [decimal](6, 2) NULL,
	[DepartmentId] [int] NULL,
	[HireDate] [date] NULL,
	[RelieveDate] [date] NULL,
 CONSTRAINT [PK_FormerEmployee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[FormerEmployee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate]) VALUES (6, N'John', NULL, N'Miller', N'W', '1993-10-20', 2000.00, 4, '2013-03-27', '2014-10-06')
INSERT [dbo].[FormerEmployee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate]) VALUES (11, N'Ann', NULL, N'Pritchett', N'M', '1980-05-21', 2400.00, 6, '2014-01-05', '2015-02-01')

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nchar](1) NULL,
	[BirthDate] [date] NULL,
	[Salary] [decimal](6, 2) NULL,
	[DepartmentId] [int] NULL,
	[HireDate] [date] NULL,
	[RelieveDate] [date] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate], [Active]) VALUES (1, N'Mary', NULL, N'Smith', N'W', '1985-12-18', 2000.00, 1, '2011-05-06', NULL, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate], [Active]) VALUES (2, N'Paul', N'George', N'Johnson', N'M', '1990-01-13', 1500.00, 3, '2011-10-29', NULL, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate], [Active]) VALUES (3, N'Patricia', NULL, N'Wilson', N'W', '1995-05-28', 1000.00, 4, '2012-01-24', '2013-11-25', 0)
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate], [Active]) VALUES (4, N'Linda', N'Lisa', N'Brown', N'W', '1983-07-11', 2700.00, 2, '2012-06-15', NULL, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate], [Active]) VALUES (5, N'Johnatan', NULL, N'Davis', N'M', '1978-01-24', 1200.00, 1, '2013-01-15', NULL, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate], [Active]) VALUES (6, N'John', NULL, N'Miller', NULL, '1993-10-20', 2000.00, 4, '2013-03-27', '2014-10-06', 0)
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate], [Active]) VALUES (7, N'Elizabeth', N'Dorothy', N'Taylor', N'W', '1992-09-09', 2110.00, 1, '2013-05-01', NULL, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate], [Active]) VALUES (8, N'James', NULL, N'Wilson', N'M', '1978-03-19', 1000.00, 3, '2013-10-09', '2014-03-01', 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate], [Active]) VALUES (9, N'Robert', NULL, N'Anderson', N'M', '1989-12-13', 2900.00, 2, '2013-12-20', '2014-05-05', 0)
INSERT [dbo].[Employee] ([Id], [FirstName], [SecondName], [LastName], [Gender], [BirthDate], [Salary], [DepartmentId], [HireDate], [RelieveDate], [Active]) VALUES (10, N'John', N'Mark', N'Smith', N'W', '1990-05-24', 2500.00, 1, '2014-01-24', NULL, 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ManagerId] [int] NULL,
	[CityId] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([Id], [Name], [ManagerId], [CityId]) VALUES (1, N'IT', 5, 2)
INSERT [dbo].[Department] ([Id], [Name], [ManagerId], [CityId]) VALUES (2, N'Accounting', 4, NULL)
INSERT [dbo].[Department] ([Id], [Name], [ManagerId], [CityId]) VALUES (3, N'HR', 8, 2)
INSERT [dbo].[Department] ([Id], [Name], [ManagerId], [CityId]) VALUES (4, N'Marketing', 3, 1)
INSERT [dbo].[Department] ([Id], [Name], [ManagerId], [CityId]) VALUES (5, N'Controlling', 11, 3)
INSERT [dbo].[Department] ([Id], [Name], [ManagerId], [CityId]) VALUES (6, N'Data Warehouse', 5, 4)
SET IDENTITY_INSERT [dbo].[Department] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NULL,
	[Number] [nvarchar](50) NULL,
	[PostCode] [nvarchar](50) NULL,
	[CityId] [int] NULL,
	[StartDate] [date] NULL,
	[EmployeeCount] [int] NULL,
	[AnnualIncome] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Company] ON
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (1, N'Casio', N'Akacjowa', N'10', N'54-621', 5, '1993-03-18', 1000, 145000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (2, N'Kawasaki', N'Brzozowa', N'12/5', N'69-586', 3, '2001-05-25', 570, 596000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (3, N'Prada', N'Holenderska', N'18B', N'59-100', 4, '1982-03-17', 1350, 120000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (4, N'Nokia', N'Trójk¹tna', N'16/9', N'68-487', 5, '2005-08-19', 800, 65000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (5, N'Tesco', N'Lipowa', N'56', N'36-895', 2, '2008-12-12', 450, 89000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (6, N'Shell', N'NiedŸwiedzia', N'12', N'47-895', 3, '1999-10-30', 1100, 19000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (7, N'Pepsi', N'H³aski', N'84', N'56-156', NULL, '2011-05-13', 790, 300000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (8, N'Lenovo Group', N'Grecka', N'129', N'69-895', 4, '2008-01-19', 900, 78000, 0)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (9, N'Kyocera', NULL, N'15/85', N'54-785', 2, '1999-01-24', 1500, 12000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (10, N'Motorola', N'Lotnicza', N'12B/5', N'78-695', 5, NULL, 2000, 36000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (11, N'Xerox', N'Topolowa', N'13', N'56-469', 1, '2004-09-09', 1700, 69000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (12, N'Phillips', N'S³owiañska', N'54', N'65-916', NULL, '2000-09-28', 850, 80000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (13, N'Red Hat', N'Brzozowa', N'1', N'54-608', 1, '1998-08-31', 290, 29000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (14, N'Skanska', N'Lotnicza', N'17A/8', N'63-896', 4, '2010-02-14', 670, 47000, 0)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (15, N'Vodafone', N'Rodziewiczówny', N'26', N'759-62', 3, NULL, 800, 19000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (16, N'Yamaha', N'Kolista', N'53', N'75-647', 3, '1980-07-14', 1350, 299000, 1)
INSERT [dbo].[Company] ([Id], [Name], [Street], [Number], [PostCode], [CityId], [StartDate], [EmployeeCount], [AnnualIncome], [Active]) VALUES (17, N'Twitter', N'Sosnowa', N'18/6', N'68-954', 5, '2013-01-15', 1900, 48000, 1)
SET IDENTITY_INSERT [dbo].[Company] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([Id], [Name]) VALUES (1, N'New York')
INSERT [dbo].[City] ([Id], [Name]) VALUES (2, N'Warsaw')
INSERT [dbo].[City] ([Id], [Name]) VALUES (3, N'London')
INSERT [dbo].[City] ([Id], [Name]) VALUES (4, N'Paris')
INSERT [dbo].[City] ([Id], [Name]) VALUES (5, N'Venice')
SET IDENTITY_INSERT [dbo].[City] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchivedProduct](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [numeric](18, 0) NOT NULL,
	[CategoryId] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ArchivedProduct] ([Id], [Name], [Price], [CategoryId]) VALUES (3, N'Keyboard', 300, 2)
INSERT [dbo].[ArchivedProduct] ([Id], [Name], [Price], [CategoryId]) VALUES (6, N'Monitor', 900, 2)

ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_Active]  DEFAULT ((1)) FOR [Active]
GO

ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Active]  DEFAULT ((1)) FOR [Active]
GO

CREATE DATABASE Library;
GO
USE [Library]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Reader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardNumber] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[SecondName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [char](1) NULL,
	[Street] [nvarchar](50) NULL,
	[Number] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[BirthDate] [datetime] NULL,
	[SignInDate] [datetime] NULL,
	[SignOutDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Reader] ON
INSERT [dbo].[Reader] ([Id], [CardNumber], [FirstName], [SecondName], [LastName], [Gender], [Street], [Number], [City], [BirthDate], [SignInDate], [SignOutDate]) VALUES (1, N'CBW/256', N'Mario', NULL, N'Draghi', N'M', N'Akacjowa', N'12', N'Wroc³aw', '1978-01-24', '2013-02-25', NULL)
INSERT [dbo].[Reader] ([Id], [CardNumber], [FirstName], [SecondName], [LastName], [Gender], [Street], [Number], [City], [BirthDate], [SignInDate], [SignOutDate]) VALUES (2, N'CBW/290', N'Sergey', N'Timothy', N'Brin', N'M', N'Lipowa', N'34/2', N'Poznañ', '1992-04-12', '2010-06-12', '2015-06-23')
INSERT [dbo].[Reader] ([Id], [CardNumber], [FirstName], [SecondName], [LastName], [Gender], [Street], [Number], [City], [BirthDate], [SignInDate], [SignOutDate]) VALUES (3, N'CBW/376', N'Dilma', NULL, N'Rousseff', N'W', N'Czekoladowa', N'1', N'Wroc³aw', '2000-05-01', '2014-09-19', NULL)
INSERT [dbo].[Reader] ([Id], [CardNumber], [FirstName], [SecondName], [LastName], [Gender], [Street], [Number], [City], [BirthDate], [SignInDate], [SignOutDate]) VALUES (4, N'CBW/129', N'Rupert', NULL, N'Murdoch', N'M', N'Karmelkowa', N'11B', N'Wroc³aw', '1990-12-24', '2010-08-11', '2014-02-01')
INSERT [dbo].[Reader] ([Id], [CardNumber], [FirstName], [SecondName], [LastName], [Gender], [Street], [Number], [City], [BirthDate], [SignInDate], [SignOutDate]) VALUES (5, N'CBW/400', N'Christine', N'Anne', N'Lagarde', N'W', N'Brzozowa', N'176/23', N'Legnica', '1995-08-31', '2015-01-24', NULL)
INSERT [dbo].[Reader] ([Id], [CardNumber], [FirstName], [SecondName], [LastName], [Gender], [Street], [Number], [City], [BirthDate], [SignInDate], [SignOutDate]) VALUES (6, N'CBW/189', N'Ginni ', NULL, N'Rometty', N'W', N'Kasztanowa', N'90', N'Kraków', '1999-09-02', '2013-02-19', NULL)
INSERT [dbo].[Reader] ([Id], [CardNumber], [FirstName], [SecondName], [LastName], [Gender], [Street], [Number], [City], [BirthDate], [SignInDate], [SignOutDate]) VALUES (7, N'CBW/230', N'Mary', NULL, N'Barrahi', N'W', N'Listopadowa', N'14', N'Wroc³aw', '1997-04-19', '2013-05-09', NULL)
SET IDENTITY_INSERT [dbo].[Reader] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parameter](
	[BookLimit] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Parameter] ([BookLimit]) VALUES (4)

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookCopyId] [int] NULL,
	[ReaderId] [int] NULL,
	[EmployeeId] [int] NULL,
	[LoanDate] [datetime] NULL,
	[ExpectedReturnDate] [datetime] NULL,
	[ActualReturnDate] [datetime] NULL,
 CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Loan] ON
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (1, 1, 7, 1, CAST(0x00009FAC00000000 AS DateTime), CAST(0x00009FEA00000000 AS DateTime), CAST(0x00009FF800000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (2, 3, 2, 2, CAST(0x0000A0C600000000 AS DateTime), CAST(0x0000A0E400000000 AS DateTime), CAST(0x0000A0E200000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (3, 3, 3, 2, CAST(0x00009DA900000000 AS DateTime), CAST(0x00009DC800000000 AS DateTime), CAST(0x00009E0D00000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (4, 16, 5, 5, CAST(0x0000A2D300000000 AS DateTime), CAST(0x0000A2EF00000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (5, 14, 3, 1, CAST(0x0000A20000000000 AS DateTime), CAST(0x0000A25C00000000 AS DateTime), CAST(0x0000A32A00000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (6, 9, 1, 4, CAST(0x0000A49B00000000 AS DateTime), CAST(0x0000A4BA00000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (7, 18, 5, 1, CAST(0x0000A13000000000 AS DateTime), CAST(0x0000A14F00000000 AS DateTime), CAST(0x0000A14F00000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (8, 7, 2, 1, CAST(0x0000A1AE00000000 AS DateTime), CAST(0x0000A1CC00000000 AS DateTime), CAST(0x0000A1CC00000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (9, 18, 6, 4, CAST(0x0000A05700000000 AS DateTime), CAST(0x0000A07600000000 AS DateTime), CAST(0x0000A07600000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (10, 1, 3, 5, CAST(0x0000A1EC00000000 AS DateTime), CAST(0x0000A20A00000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (11, 12, 6, 2, CAST(0x0000A11800000000 AS DateTime), CAST(0x0000A13600000000 AS DateTime), CAST(0x0000A14C00000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (12, 9, 3, 1, CAST(0x0000A38A00000000 AS DateTime), CAST(0x0000A3A900000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (13, 4, 7, 4, CAST(0x0000A42A00000000 AS DateTime), CAST(0x0000A44900000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (14, 2, 3, 5, CAST(0x0000A3C800000000 AS DateTime), CAST(0x0000A3E700000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (15, 1, 7, 4, CAST(0x0000A46D00000000 AS DateTime), CAST(0x0000A48B00000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (16, 10, 3, 5, CAST(0x0000A28700000000 AS DateTime), CAST(0x0000A2A600000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (17, 7, 6, 2, CAST(0x0000A0DB00000000 AS DateTime), CAST(0x0000A0F900000000 AS DateTime), CAST(0x0000A0F900000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (18, 11, 2, 5, CAST(0x0000A1DE00000000 AS DateTime), CAST(0x0000A0F900000000 AS DateTime), CAST(0x0000A12200000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (19, 14, 7, 4, CAST(0x00009D0400000000 AS DateTime), CAST(0x00009D2300000000 AS DateTime), CAST(0x00009D2300000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (20, 3, 2, 4, CAST(0x0000A45300000000 AS DateTime), CAST(0x0000A49000000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (21, 16, 2, 2, CAST(0x0000A47F00000000 AS DateTime), CAST(0x0000A49A00000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (22, 9, 1, 2, CAST(0x0000A3FA00000000 AS DateTime), CAST(0x0000A41900000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (23, 14, 5, 4, CAST(0x00009FE700000000 AS DateTime), CAST(0x0000A00600000000 AS DateTime), CAST(0x0000A00600000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (24, 10, 7, 1, CAST(0x0000A2DA00000000 AS DateTime), CAST(0x0000A2F600000000 AS DateTime), CAST(0x0000A3B800000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (25, 3, 5, 5, CAST(0x0000A32200000000 AS DateTime), CAST(0x0000A34100000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (26, 6, 1, 4, CAST(0x0000A17300000000 AS DateTime), CAST(0x0000A18F00000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (27, 6, 2, 1, CAST(0x0000A0CA00000000 AS DateTime), CAST(0x0000A0E800000000 AS DateTime), CAST(0x0000A0CF00000000 AS DateTime))
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (28, 14, 1, 5, CAST(0x0000A39400000000 AS DateTime), CAST(0x0000A3B300000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (29, 1, 7, 4, CAST(0x0000A47900000000 AS DateTime), CAST(0x0000A49700000000 AS DateTime), NULL)
INSERT [dbo].[Loan] ([Id], [BookCopyId], [ReaderId], [EmployeeId], [LoanDate], [ExpectedReturnDate], [ActualReturnDate]) VALUES (30, 8, 3, 3, CAST(0x0000A0BE00000000 AS DateTime), CAST(0x0000A0DC00000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Loan] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Genre] ON
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (1, N'Horror')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (2, N'History')
INSERT [dbo].[Genre] ([Id], [Name]) VALUES (3, N'Fantasy')
SET IDENTITY_INSERT [dbo].[Genre] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[ManagerId] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [ManagerId]) VALUES (1, N'John', N'Wilson', 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [ManagerId]) VALUES (2, N'Mary', N'Gordon', 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [ManagerId]) VALUES (3, N'Jack', N'Black', 3)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [ManagerId]) VALUES (4, N'Ginny', N'Thompson', 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [ManagerId]) VALUES (5, N'Suzy', N'Bass', 3)
SET IDENTITY_INSERT [dbo].[Employee] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookRating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NULL,
	[ReaderId] [int] NULL,
	[Rating] [numeric](18, 0) NULL,
	[RatingDate] [datetime] NULL,
 CONSTRAINT [PK_BookRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookRating] ON
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (1, 1, 3, 3, CAST(0x0000A1EC00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (2, 1, 7, 4, CAST(0x00009FAC00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (3, 1, 7, 3, CAST(0x0000A46D00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (5, 2, 3, 2, CAST(0x0000A3C800000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (6, 3, 2, 4, CAST(0x0000A0C600000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (7, 3, 2, 5, CAST(0x0000A45300000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (9, 4, 6, 2, CAST(0x0000A13000000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (10, 4, 6, 1, CAST(0x0000A05700000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (11, 4, 7, 4, CAST(0x0000A42A00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (12, 5, 2, 5, CAST(0x0000A0CA00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (13, 5, 3, 3, CAST(0x00009DA900000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (14, 7, 1, 4, CAST(0x0000A17300000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (15, 7, 1, 2, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (16, 7, 3, 1, CAST(0x0000A20000000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (18, 7, 7, 4, CAST(0x00009D0400000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (19, 8, 2, 3, CAST(0x0000A1AE00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (20, 8, 6, 5, CAST(0x0000A0DB00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (21, 9, 3, 4, CAST(0x0000A0BE00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (22, 10, 1, 1, CAST(0x0000A3FA00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (23, 10, 1, 3, CAST(0x0000A49B00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (24, 10, 3, 2, CAST(0x0000A38A00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (25, 11, 2, 1, CAST(0x0000A47F00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (28, 11, 7, 5, CAST(0x0000A2DA00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (29, 13, 2, 4, CAST(0x0000A1DE00000000 AS DateTime))
INSERT [dbo].[BookRating] ([Id], [BookId], [ReaderId], [Rating], [RatingDate]) VALUES (30, 14, 6, 3, CAST(0x0000A11800000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[BookRating] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[GenreId] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (1, N'Steven King', N'Pet Sematary', 1)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (2, N'Terry Pratchett', N'Wyrd Sisters', 3)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (3, N'Ira Levin', N'Rosemary''s Baby', 1)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (4, N'Thomas Harris', N'Red Dragon', 1)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (5, N'Robin Hobb', N'Golden Fool', 3)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (7, N'Barbara Tuchman', N'The Guns of August', 2)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (8, N'Norman Davies', N'Europe', 2)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (9, N'Steven King', N'The Mist', 1)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (10, N'Dean Koontz', N'Watchers', 1)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (11, N'Ilona Andrews', N'Magic Bites', 3)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (13, N'Terry Pratchett', N'The Truth', 3)
INSERT [dbo].[Book] ([Id], [Author], [Title], [GenreId]) VALUES (14, N'Antony Beevor', N'The Fall of Berlin 1945', 2)
SET IDENTITY_INSERT [dbo].[Book] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookCopy](
	[Id] [int] NOT NULL,
	[BookId] [int] NULL,
	[Number] [nvarchar](50) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchasePrice] [decimal](8, 2) NULL,
	[Availaible] [bit] NULL,
 CONSTRAINT [PK_BookCopy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (1, 1, N'B/13/2000', CAST(0x00008FAB00000000 AS DateTime), 32.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (2, 2, N'B/9/2005', CAST(0x000096C000000000 AS DateTime), 25.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (3, 3, N'B/56/2011', CAST(0x00009FB200000000 AS DateTime), 28.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (4, 4, N'B/132/2012', CAST(0x0000A09500000000 AS DateTime), 27.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (5, 5, N'B/56/2012', CAST(0x0000A03600000000 AS DateTime), 20.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (6, 7, N'B/78/2011', CAST(0x00009EB100000000 AS DateTime), 40.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (7, 8, N'B/18/2014', CAST(0x0000A3E100000000 AS DateTime), 39.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (8, 9, N'B/76/2013', CAST(0x0000A20900000000 AS DateTime), 28.00, 0)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (9, 10, N'B/18/2012', CAST(0x0000A0D300000000 AS DateTime), 30.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (10, 11, N'B/279/2014', CAST(0x0000A3BE00000000 AS DateTime), 36.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (11, 13, N'B/156/2015', CAST(0x0000A51100000000 AS DateTime), 43.00, 0)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (12, 14, N'B/99/2015', CAST(0x0000A4E800000000 AS DateTime), 20.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (13, 4, N'B/47/2010', CAST(0x00009D5C00000000 AS DateTime), 27.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (14, 7, N'B/16/2009', CAST(0x00009C4800000000 AS DateTime), 31.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (15, 8, N'B/189/2012', CAST(0x0000A12500000000 AS DateTime), 34.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (16, 11, N'B/12/2010', CAST(0x00009DF100000000 AS DateTime), 41.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (17, 13, N'B/78/2015', CAST(0x0000A4E600000000 AS DateTime), 20.00, 1)
INSERT [dbo].[BookCopy] ([Id], [BookId], [Number], [PurchaseDate], [PurchasePrice], [Availaible]) VALUES (18, 4, N'B/35/2011', CAST(0x00009E8B00000000 AS DateTime), 25.00, 1)

ALTER TABLE [dbo].[BookCopy] ADD  CONSTRAINT [DF_BookCopy_Availaible]  DEFAULT ((1)) FOR [Availaible]
GO

ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Genre] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Genre]
GO

ALTER TABLE [dbo].[BookCopy]  WITH CHECK ADD  CONSTRAINT [FK_BookCopy_Book] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([Id])
GO
ALTER TABLE [dbo].[BookCopy] CHECK CONSTRAINT [FK_BookCopy_Book]
GO

