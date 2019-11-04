USE [master]
GO
/****** Object:  Database [WebApiDb]    Script Date: 11/4/2019 4:45:33 AM ******/
CREATE DATABASE [WebApiDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebApiDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WebApiDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebApiDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WebApiDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WebApiDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebApiDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebApiDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebApiDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebApiDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebApiDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebApiDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebApiDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebApiDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebApiDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebApiDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebApiDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebApiDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebApiDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebApiDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebApiDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebApiDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebApiDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebApiDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebApiDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebApiDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebApiDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebApiDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebApiDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebApiDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebApiDb] SET  MULTI_USER 
GO
ALTER DATABASE [WebApiDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebApiDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebApiDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebApiDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebApiDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebApiDb] SET QUERY_STORE = OFF
GO
USE [WebApiDb]
GO
/****** Object:  Table [dbo].[EmployeeDetails]    Script Date: 11/4/2019 4:45:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDetails](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[EmailId] [varchar](50) NULL,
	[Gender] [nchar](10) NULL,
	[Address] [varchar](100) NULL,
	[PinCode] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeDetails] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [WebApiDb] SET  READ_WRITE 
GO
