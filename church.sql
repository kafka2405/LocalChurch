USE [LocalChurch]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 3/25/2019 1:00:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Tel] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[PhotoPath] [nvarchar](50) NULL,
	[City] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
 CONSTRAINT [PK_Info] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IntroInfo]    Script Date: 3/25/2019 1:00:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IntroInfo](
	[Id] [int] NOT NULL,
	[HeaderPhoto] [nvarchar](max) NULL,
	[IntroImage] [nvarchar](max) NULL,
	[IntroTitle] [text] NULL,
	[IntroContent] [text] NULL,
	[AuthorName] [nvarchar](max) NULL,
	[AuthoAvatar] [nvarchar](max) NULL,
 CONSTRAINT [PK_homePage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prayers]    Script Date: 3/25/2019 1:00:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prayers](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PhotoPath] [nvarchar](max) NULL,
	[UpdateTime] [date] NULL,
 CONSTRAINT [PK_Prayers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 3/25/2019 1:00:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] NOT NULL,
	[Name] [text] NULL,
	[Description] [text] NULL,
	[Schedule] [date] NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([Id], [Address], [Tel], [Email], [PhotoPath], [City], [Country]) VALUES (1, N'KM29 ThangLong Freeway', N'0969563145', N'dangdinhquyentq@gmail.com', N'map/map.png', N'Ha Noi', N'Viet Nam')
INSERT [dbo].[IntroInfo] ([Id], [HeaderPhoto], [IntroImage], [IntroTitle], [IntroContent], [AuthorName], [AuthoAvatar]) VALUES (1, N'home/book.PNG', N'home/intro.jpg', N'Welcome to Your Local Community Church', N'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zril delenit augue duis dolore te feugait nulla facilisi.', N'Pastor Russell', N'home/author.jpg')
INSERT [dbo].[IntroInfo] ([Id], [HeaderPhoto], [IntroImage], [IntroTitle], [IntroContent], [AuthorName], [AuthoAvatar]) VALUES (2, NULL, NULL, N'Prayers', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.', NULL, NULL)
INSERT [dbo].[Prayers] ([Id], [Title], [Description], [PhotoPath], [UpdateTime]) VALUES (1, N'About Out Church
', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis

', N'prayer/prayer2.jpg', CAST(N'2019-03-19' AS Date))
INSERT [dbo].[Prayers] ([Id], [Title], [Description], [PhotoPath], [UpdateTime]) VALUES (2, N'Healing Prayer2', N'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', N'prayer/prayer3.jpg', CAST(N'2019-03-20' AS Date))
INSERT [dbo].[Prayers] ([Id], [Title], [Description], [PhotoPath], [UpdateTime]) VALUES (3, N'Healing Prayer3', N'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', N'prayer/prayer4.jpg', CAST(N'2019-03-20' AS Date))
INSERT [dbo].[Prayers] ([Id], [Title], [Description], [PhotoPath], [UpdateTime]) VALUES (4, N'Healing Prayer4', N'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', N'prayer/prayer5.jpg', CAST(N'2019-03-20' AS Date))
INSERT [dbo].[Prayers] ([Id], [Title], [Description], [PhotoPath], [UpdateTime]) VALUES (5, N'Healing Prayer5', N'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', N'prayer/prayer6.jpg', CAST(N'2019-03-20' AS Date))
INSERT [dbo].[Prayers] ([Id], [Title], [Description], [PhotoPath], [UpdateTime]) VALUES (6, N'Healing Prayer6', N'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', N'prayer/prayer7.jpg', CAST(N'2019-03-20' AS Date))
INSERT [dbo].[Prayers] ([Id], [Title], [Description], [PhotoPath], [UpdateTime]) VALUES (7, N'Healing Prayer7', N'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', N'prayer/prayer8.jpg', CAST(N'2019-03-20' AS Date))
INSERT [dbo].[Prayers] ([Id], [Title], [Description], [PhotoPath], [UpdateTime]) VALUES (8, N'Healing Prayer8', N'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', N'prayer/prayer9.jpg', CAST(N'2019-03-20' AS Date))
INSERT [dbo].[Prayers] ([Id], [Title], [Description], [PhotoPath], [UpdateTime]) VALUES (9, N'Healing Prayer9', N'Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', N'prayer/prayer10.jpg', CAST(N'2019-02-20' AS Date))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Schedule]) VALUES (1, N'Sunday Prayer', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt', CAST(N'2016-01-03' AS Date))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Schedule]) VALUES (2, N'Sunday Prayer', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt', CAST(N'2016-01-10' AS Date))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Schedule]) VALUES (3, N'Mid-week Prayer', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt', CAST(N'2016-01-13' AS Date))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Schedule]) VALUES (4, N'Sunday Prayer', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt', CAST(N'2016-01-13' AS Date))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Schedule]) VALUES (5, N'Sunday Prayer', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt', CAST(N'2016-01-13' AS Date))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Schedule]) VALUES (6, N'Sunday Prayer', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt', CAST(N'2016-01-13' AS Date))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Schedule]) VALUES (7, N'Sunday Prayer', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt', CAST(N'2016-01-13' AS Date))
