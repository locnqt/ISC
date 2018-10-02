USE [master]
GO
/****** Object:  Database [TodoAPI]    Script Date: 10/2/2018 3:28:39 PM ******/
CREATE DATABASE [TodoAPI] ON  PRIMARY 
( NAME = N'TodoAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TodoAPI.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TodoAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TodoAPI_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TodoAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TodoAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TodoAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TodoAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TodoAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TodoAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [TodoAPI] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TodoAPI] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TodoAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TodoAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TodoAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TodoAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TodoAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TodoAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TodoAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TodoAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TodoAPI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TodoAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TodoAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TodoAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TodoAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TodoAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TodoAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TodoAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TodoAPI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TodoAPI] SET  MULTI_USER 
GO
ALTER DATABASE [TodoAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TodoAPI] SET DB_CHAINING OFF 
GO
USE [TodoAPI]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 10/2/2018 3:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ITE_ID] [int] IDENTITY(1,1) NOT NULL,
	[ITE_NAME] [nvarchar](250) NULL,
	[ITE_DESCRIPTION] [nvarchar](250) NULL,
	[ITE_PRICE] [money] NULL,
	[ITE_IMAGE] [nvarchar](250) NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ITE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/2/2018 3:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ROL_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ROL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Todos]    Script Date: 10/2/2018 3:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Todos](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsComplete] [bit] NULL,
	[TYPE_ID] [bigint] NULL,
 CONSTRAINT [PK__Todos__3214EC0784848282] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TodoTypes]    Script Date: 10/2/2018 3:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TodoTypes](
	[TYPE_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TodoTypes] PRIMARY KEY CLUSTERED 
(
	[TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/2/2018 3:28:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[USE_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Islocked] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[ROL_ID] [bigint] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[USE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Todos]  WITH CHECK ADD  CONSTRAINT [FK_Todos_TodoTypes] FOREIGN KEY([TYPE_ID])
REFERENCES [dbo].[TodoTypes] ([TYPE_ID])
GO
ALTER TABLE [dbo].[Todos] CHECK CONSTRAINT [FK_Todos_TodoTypes]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([ROL_ID])
REFERENCES [dbo].[Roles] ([ROL_ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [TodoAPI] SET  READ_WRITE 
GO
