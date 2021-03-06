USE [master]
GO
/****** Object:  Database [TodoAPI]    Script Date: 10/16/2018 11:33:27 PM ******/
CREATE DATABASE [TodoAPI]
GO
USE [TodoAPI]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 10/16/2018 11:33:27 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 10/16/2018 11:33:27 PM ******/
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
/****** Object:  Table [dbo].[Todos]    Script Date: 10/16/2018 11:33:27 PM ******/
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
/****** Object:  Table [dbo].[TodoTypes]    Script Date: 10/16/2018 11:33:27 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 10/16/2018 11:33:27 PM ******/
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
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ITE_ID], [ITE_NAME], [ITE_DESCRIPTION], [ITE_PRICE], [ITE_IMAGE]) VALUES (9, N'pic1', N'Descript1', 980000.0000, N'9_Angel-Beats-Wallpaper-High-Quality.jpg')
INSERT [dbo].[Items] ([ITE_ID], [ITE_NAME], [ITE_DESCRIPTION], [ITE_PRICE], [ITE_IMAGE]) VALUES (10, N'pic2', N'Descript2', 810000.0000, N'10_54232826_p0_master1200.jpg')
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ROL_ID], [Name]) VALUES (1, N'admin')
INSERT [dbo].[Roles] ([ROL_ID], [Name]) VALUES (2, N'user')
INSERT [dbo].[Roles] ([ROL_ID], [Name]) VALUES (3, N'guest')
INSERT [dbo].[Roles] ([ROL_ID], [Name]) VALUES (4, N'staff')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Todos] ON 

INSERT [dbo].[Todos] ([Id], [Name], [IsComplete], [TYPE_ID]) VALUES (1, N'todo1', 0, 1)
INSERT [dbo].[Todos] ([Id], [Name], [IsComplete], [TYPE_ID]) VALUES (2, N'todo2', 1, 1)
INSERT [dbo].[Todos] ([Id], [Name], [IsComplete], [TYPE_ID]) VALUES (3, N'todo3', 0, 2)
INSERT [dbo].[Todos] ([Id], [Name], [IsComplete], [TYPE_ID]) VALUES (4, N'todo4', 0, 4)
INSERT [dbo].[Todos] ([Id], [Name], [IsComplete], [TYPE_ID]) VALUES (5, N'todo5', 0, 2)
INSERT [dbo].[Todos] ([Id], [Name], [IsComplete], [TYPE_ID]) VALUES (6, N'todo6', 1, 3)
INSERT [dbo].[Todos] ([Id], [Name], [IsComplete], [TYPE_ID]) VALUES (7, N'todo7', 0, 2)
SET IDENTITY_INSERT [dbo].[Todos] OFF
SET IDENTITY_INSERT [dbo].[TodoTypes] ON 

INSERT [dbo].[TodoTypes] ([TYPE_ID], [Name]) VALUES (1, N'type1')
INSERT [dbo].[TodoTypes] ([TYPE_ID], [Name]) VALUES (2, N'type2')
INSERT [dbo].[TodoTypes] ([TYPE_ID], [Name]) VALUES (3, N'type3')
INSERT [dbo].[TodoTypes] ([TYPE_ID], [Name]) VALUES (4, N'type4')
SET IDENTITY_INSERT [dbo].[TodoTypes] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([USE_ID], [UserName], [PassWord], [FullName], [Email], [Islocked], [IsDeleted], [ROL_ID]) VALUES (4, N'admin', N'uxP61F5KH/4cmvnEZW7ZjcpTBHKtHHGxCYl8/etFgL8=', N'vanteo', N'abc@gmail.com', 0, 0, 1)
INSERT [dbo].[Users] ([USE_ID], [UserName], [PassWord], [FullName], [Email], [Islocked], [IsDeleted], [ROL_ID]) VALUES (5, N'aaa', N'PwWZcH95ks/X8+vsIGu76taUB1IPXE26IR/C4BASyQk=', N'user1', N'xyz@gmail.com', 0, 0, 2)
INSERT [dbo].[Users] ([USE_ID], [UserName], [PassWord], [FullName], [Email], [Islocked], [IsDeleted], [ROL_ID]) VALUES (6, N'abc', N'FFyIPbfu0qhn7+vt6MRbu5otTkWhNcbFqUTnMHPk34E=', N'user2', N'xyz@gmail.com', 0, 0, 2)
INSERT [dbo].[Users] ([USE_ID], [UserName], [PassWord], [FullName], [Email], [Islocked], [IsDeleted], [ROL_ID]) VALUES (7, N'customer', N'wda+SdbEPkyCMwYO0Udos0t2hgPoGY2CBbjuSuW1v4o=', N'user12', N'xyz@gmail.com', 0, 0, 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
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
