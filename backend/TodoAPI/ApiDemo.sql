USE [master]
GO
/****** Object:  Database [TodoAPI]    Script Date: 9/18/2018 4:16:27 PM ******/
CREATE DATABASE [TodoAPI]
GO
USE [TodoAPI]
GO
/****** Object:  Table [dbo].[Todos]    Script Date: 9/18/2018 4:16:27 PM ******/
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
/****** Object:  Table [dbo].[TodoTypes]    Script Date: 9/18/2018 4:16:27 PM ******/
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
SET IDENTITY_INSERT [dbo].[Todos] ON 

INSERT [dbo].[Todos] ([Id], [Name], [IsComplete], [TYPE_ID]) VALUES (1, N'Item1', 1, 2)
INSERT [dbo].[Todos] ([Id], [Name], [IsComplete], [TYPE_ID]) VALUES (2, N'i2', 0, 1)
SET IDENTITY_INSERT [dbo].[Todos] OFF
SET IDENTITY_INSERT [dbo].[TodoTypes] ON 

INSERT [dbo].[TodoTypes] ([TYPE_ID], [Name]) VALUES (1, N'abc')
INSERT [dbo].[TodoTypes] ([TYPE_ID], [Name]) VALUES (2, N'xyz')
SET IDENTITY_INSERT [dbo].[TodoTypes] OFF
ALTER TABLE [dbo].[Todos]  WITH CHECK ADD  CONSTRAINT [FK_Todos_TodoTypes] FOREIGN KEY([TYPE_ID])
REFERENCES [dbo].[TodoTypes] ([TYPE_ID])
GO
ALTER TABLE [dbo].[Todos] CHECK CONSTRAINT [FK_Todos_TodoTypes]
GO
USE [master]
GO
ALTER DATABASE [TodoAPI] SET  READ_WRITE 
GO
