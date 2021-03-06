USE [master]
GO
/****** Object:  Database [Boutique]    Script Date: 11.02.2021 01:42:39 ******/
CREATE DATABASE [Boutique]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Boutique', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Boutique.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Boutique_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Boutique_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Boutique] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Boutique].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Boutique] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Boutique] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Boutique] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Boutique] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Boutique] SET ARITHABORT OFF 
GO
ALTER DATABASE [Boutique] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Boutique] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Boutique] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Boutique] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Boutique] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Boutique] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Boutique] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Boutique] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Boutique] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Boutique] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Boutique] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Boutique] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Boutique] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Boutique] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Boutique] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Boutique] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Boutique] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Boutique] SET RECOVERY FULL 
GO
ALTER DATABASE [Boutique] SET  MULTI_USER 
GO
ALTER DATABASE [Boutique] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Boutique] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Boutique] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Boutique] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Boutique] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Boutique] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Boutique', N'ON'
GO
ALTER DATABASE [Boutique] SET QUERY_STORE = OFF
GO
USE [Boutique]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11.02.2021 01:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductPrice] [float] NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ProductType] [nvarchar](255) NOT NULL,
	[ProductColor] [nvarchar](255) NOT NULL,
	[Stock] [int] NOT NULL,
	[ProductPhoto] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 11.02.2021 01:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserMail] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [ProductPrice], [ProductName], [ProductType], [ProductColor], [Stock], [ProductPhoto]) VALUES (1, 150, N'Indigo', N'Trousers', N'LightBlue', 60, N'./Images/jean1.jpg')
INSERT [dbo].[Products] ([ID], [ProductPrice], [ProductName], [ProductType], [ProductColor], [Stock], [ProductPhoto]) VALUES (2, 5000, N'Romantic', N'Dress', N'LightPink', 3, N'./Images/dress1.jpg')
INSERT [dbo].[Products] ([ID], [ProductPrice], [ProductName], [ProductType], [ProductColor], [Stock], [ProductPhoto]) VALUES (3, 250, N'Chic', N'Blouse', N'Beige', 20, N'./Images/blouse1.jpg')
INSERT [dbo].[Products] ([ID], [ProductPrice], [ProductName], [ProductType], [ProductColor], [Stock], [ProductPhoto]) VALUES (4, 120, N'Mini', N'Skirt', N'Grey', 30, N'./Images/skirt1.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserMail], [UserPassword]) VALUES (1, N'Gizem', N'gizem@hotmail.com', N'4679')
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserMail], [UserPassword]) VALUES (2, N'Gizem', N'gizem@hotmail.com', N'4679')
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserMail], [UserPassword]) VALUES (3, N'Gizem', N'gizem@hotmail.com', N'4679 ')
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserMail], [UserPassword]) VALUES (4, N'Meriç', N'meriç@hotmail.com', N'1346 ')
INSERT [dbo].[UserInfo] ([UserID], [UserName], [UserMail], [UserPassword]) VALUES (5, N'Gizem', N'gizem@hotmail.com', N'4679')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
USE [master]
GO
ALTER DATABASE [Boutique] SET  READ_WRITE 
GO
