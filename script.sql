USE [master]
GO
/****** Object:  Database [STOCKMANAGEMENTSYSTEM]    Script Date: 11/12/2018 8:10:53 PM ******/
CREATE DATABASE [STOCKMANAGEMENTSYSTEM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'STOCKMANAGEMENTSYSTEM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\STOCKMANAGEMENTSYSTEM.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'STOCKMANAGEMENTSYSTEM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\STOCKMANAGEMENTSYSTEM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [STOCKMANAGEMENTSYSTEM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET ARITHABORT OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET  MULTI_USER 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET DELAYED_DURABILITY = DISABLED 
GO
USE [STOCKMANAGEMENTSYSTEM]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/12/2018 8:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[SL] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 11/12/2018 8:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Companies](
	[SL] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 11/12/2018 8:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[SL] [int] IDENTITY(1,1) NOT NULL,
	[Item] [varchar](50) NULL,
	[Company] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[AvailableQuantity] [int] NULL,
	[ReorderLabel] [int] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[SL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Logins]    Script Date: 11/12/2018 8:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Logins](
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stockouts]    Script Date: 11/12/2018 8:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stockouts](
	[Id] [int] NULL,
	[Item] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Company] [varchar](50) NULL,
	[Quantity] [nchar](10) NULL,
	[Date] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([SL], [Name]) VALUES (1, N'Food')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (2, N'Cosmetics')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (3, N'Electronics')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (4, N'CIRAMICS')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (5, N'Educaitonal Items')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (6, N'Musical Instrument')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (7, N'Mobile')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (8, N'Furniture')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (9, N'Bag')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (10, N'Medical Instrument')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (11, N'Pest')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (12, N'Motorcycle')
INSERT [dbo].[Categories] ([SL], [Name]) VALUES (13, N'Medicine')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([SL], [Name]) VALUES (1, N'Unilever')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (2, N'ACME')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (3, N'Beximco')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (4, N'SQUARE')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (5, N'SUKUKI')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (6, N'INSEPTA')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (7, N'PRAN')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (8, N'RFL')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (9, N'WALTON')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (10, N'TVS')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (11, N'Autobi')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (12, N'HONDA')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (13, N'BMW')
INSERT [dbo].[Companies] ([SL], [Name]) VALUES (14, N'Microsoft')
SET IDENTITY_INSERT [dbo].[Companies] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (1, N'Juice', N'ACME', N'Food', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (2, N'Water', N'ACME', N'Food', 450, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (3, N'TV', N'WALTON', N'Electronics', 100, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (4, N'Iron', N'WALTON', N'Electronics', 100, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (5, N'Freeze', N'WALTON', N'Electronics', 85, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (6, N'Blender', N'WALTON', N'Electronics', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (7, N'Walton M16', N'WALTON', N'Mobile', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (8, N'Walton M2018', N'WALTON', N'Mobile', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (9, N'Biscuts', N'ACME', N'Food', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (10, N'Tea', N'ACME', N'Food', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (11, N'Chair', N'Autobi', N'Furniture', 445, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (12, N'Table', N'Autobi', N'Furniture', 475, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (13, N'Almari', N'Autobi', N'Furniture', 98, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (14, N'Computer Table', N'Autobi', N'Furniture', 98, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (15, N'W1240', N'WALTON', N'Mobile', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (16, N'W1242', N'WALTON', N'Mobile', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (17, N'W2018', N'WALTON', N'Mobile', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (22, N'Antacid', N'SQUARE', N'Medicine', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (23, N'Neotac', N'SQUARE', N'Medicine', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (24, N'Napa', N'SQUARE', N'Medicine', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (25, N'Apache RTR 150', N'TVS', N'Motorcycle', 90, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (26, N'Apache RTR 135', N'TVS', N'Motorcycle', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (27, N'Apache RTR 160', N'TVS', N'Motorcycle', 85, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (28, N'Apache RTR 160 Super', N'TVS', N'Motorcycle', 0, 10)
INSERT [dbo].[Items] ([SL], [Item], [Company], [Category], [AvailableQuantity], [ReorderLabel]) VALUES (29, N'TVS 100', N'TVS', N'Motorcycle', 80, 10)
SET IDENTITY_INSERT [dbo].[Items] OFF
INSERT [dbo].[Logins] ([Name], [Email], [UserName], [Password]) VALUES (N'Md. Mehedi Hasan', N'mehedi@gmail.com', N'mehedi', N'm123456')
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'Iron', N'Electronics', N'WALTON', N'10        ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'TV', N'Electronics', N'WALTON', N'40        ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'Iron', N'Electronics', N'WALTON', N'90        ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'Chair', N'Furniture', N'Autobi', N'50        ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'Table', N'Furniture', N'Autobi', N'20        ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'Almari', N'Furniture', N'Autobi', N'2         ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'Computer Table', N'Furniture', N'Autobi', N'2         ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (2, N'Chair', N'Furniture', N'Autobi', N'5         ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (2, N'Table', N'Furniture', N'Autobi', N'5         ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'TVS 100', N'Motorcycle', N'TVS', N'10        ', CAST(N'2018-11-11' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'Apache RTR 160', N'Motorcycle', N'TVS', N'15        ', CAST(N'2018-11-11' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'Apache RTR 150', N'Motorcycle', N'TVS', N'15        ', CAST(N'2018-11-11' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'Apache RTR 150', N'Motorcycle', N'TVS', N'10        ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'Apache RTR 160', N'Motorcycle', N'TVS', N'15        ', CAST(N'2018-11-12' AS Date))
INSERT [dbo].[Stockouts] ([Id], [Item], [Category], [Company], [Quantity], [Date]) VALUES (1, N'TVS 100', N'Motorcycle', N'TVS', N'20        ', CAST(N'2018-11-12' AS Date))
USE [master]
GO
ALTER DATABASE [STOCKMANAGEMENTSYSTEM] SET  READ_WRITE 
GO
