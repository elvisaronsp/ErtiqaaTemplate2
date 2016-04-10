USE [ShaddadDb]
GO
/****** Object:  DatabaseRole [gd_execprocs]    Script Date: 15/03/2016 12:46:49 ص ******/
CREATE ROLE [gd_execprocs]
GO
/****** Object:  Schema [RoialUser]    Script Date: 15/03/2016 12:46:50 ص ******/
CREATE SCHEMA [RoialUser]
GO
/****** Object:  Schema [shaddad]    Script Date: 15/03/2016 12:46:50 ص ******/
CREATE SCHEMA [shaddad]
GO
/****** Object:  Schema [shaddad1]    Script Date: 15/03/2016 12:46:50 ص ******/
CREATE SCHEMA [shaddad1]
GO
/****** Object:  Table [dbo].[_Footer]    Script Date: 15/03/2016 12:46:50 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Footer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Name] [nvarchar](max) NULL,
	[_Description] [nvarchar](max) NULL,
	[_Image] [nvarchar](max) NULL,
	[_Link] [nvarchar](max) NULL,
	[_Alt] [nvarchar](max) NULL,
	[_Title] [nvarchar](max) NULL,
	[_Display] [nvarchar](50) NULL,
 CONSTRAINT [PK__Footer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Images]    Script Date: 15/03/2016 12:46:51 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Title] [nvarchar](max) NULL,
	[_Alt] [nvarchar](max) NULL,
	[_Width] [int] NULL,
	[_Hight] [int] NULL,
	[_Link] [nvarchar](max) NOT NULL,
	[_Description] [nvarchar](max) NULL,
	[_Order] [int] NULL,
	[_Display] [nvarchar](50) NULL,
	[_Section_Id] [int] NULL,
 CONSTRAINT [PK__Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Menu]    Script Date: 15/03/2016 12:46:51 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_String
_String
_String
_String] [nvarchar](50) NULL,
	[_Link] [nvarchar](max) NULL,
	[_Li] [nvarchar](max) NULL,
	[_Title] [nvarchar](max) NULL,
	[_Img] [nvarchar](max) NULL,
	[_ToolTip] [nvarchar](max) NULL,
	[_Main_Id] [int] NULL,
	[_Has_sub] [nvarchar](50) NULL,
	[_Display] [nvarchar](50) NULL,
	[_Alt] [nvarchar](max) NULL,
	[_Pro_Ico] [nvarchar](max) NULL,
 CONSTRAINT [PK__Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Section_Content]    Script Date: 15/03/2016 12:46:51 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Section_Content](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Section_Id] [int] NOT NULL,
	[_Heading] [nvarchar](max) NULL,
	[_Sub_Heading] [nvarchar](max) NULL,
	[_H1_txt1] [nvarchar](max) NULL,
	[_H1_txt2] [nvarchar](max) NULL,
	[_H2_txt1] [nvarchar](max) NULL,
	[_H2_txt2] [nvarchar](max) NULL,
	[_H3_txt1] [nvarchar](max) NULL,
	[_H3_txt2] [nvarchar](max) NULL,
	[_H4_txt1] [nvarchar](max) NULL,
	[_H4_txt2] [nvarchar](max) NULL,
	[_p_txt1] [nvarchar](max) NULL,
	[_p_txt2] [nvarchar](max) NULL,
	[_p_txt3] [nvarchar](max) NULL,
	[_p_txt4] [nvarchar](max) NULL,
	[_R_To_L] [nvarchar](max) NULL,
	[_L_To_R] [nvarchar](max) NULL,
	[_So_Page_Name] [nvarchar](max) NULL,
	[_So_Page_Link] [nvarchar](max) NULL,
	[_So_Video_Link] [nvarchar](max) NULL,
	[_So_Access_Token] [nvarchar](max) NULL,
	[_So_Photo_Album] [nvarchar](max) NULL,
	[_So_Search_Trim_1] [nvarchar](max) NULL,
	[_So_Search_Trim_2] [nvarchar](max) NULL,
	[_Txt_1] [nvarchar](max) NULL,
	[_Txt_2] [nvarchar](max) NULL,
	[_Txt_3] [nvarchar](max) NULL,
	[_Txt_4] [nvarchar](max) NULL,
	[_Txt_5] [nvarchar](max) NULL,
	[_Txt_6] [nvarchar](max) NULL,
	[_Txt_7] [nvarchar](max) NULL,
	[_Txt_8] [nvarchar](max) NULL,
	[_Url_1] [nvarchar](max) NULL,
	[_Url_2] [nvarchar](max) NULL,
	[_Url_3] [nvarchar](max) NULL,
	[_Url_4] [nvarchar](max) NULL,
	[_Url_5] [nvarchar](max) NULL,
	[_Url_6] [nvarchar](max) NULL,
	[_Url_7] [nvarchar](max) NULL,
	[_Url_8] [nvarchar](max) NULL,
	[_Img_1] [int] NULL,
	[_Img_2] [int] NULL,
	[_Img_3] [int] NULL,
	[_Img_4] [int] NULL,
	[_Img_5] [int] NULL,
	[_Img_6] [int] NULL,
	[_Img_7] [int] NULL,
	[_Img_8] [int] NULL,
	[_Description] [nvarchar](max) NULL,
	[_Order] [int] NULL,
 CONSTRAINT [PK__Section_Content] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Section_Table]    Script Date: 15/03/2016 12:46:51 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Section_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Section_Name] [nvarchar](50) NULL,
	[_Section_Image] [nvarchar](max) NULL,
	[_Heading] [nvarchar](max) NULL,
	[_Sub_Heading] [nvarchar](max) NULL,
	[_Main_Txt_1] [nvarchar](max) NULL,
	[_Main_Txt_2] [nvarchar](max) NULL,
	[_Main_Txt_3] [nvarchar](max) NULL,
	[_Main_Txt_4] [nvarchar](max) NULL,
	[_Main_Txt_5] [nvarchar](max) NULL,
	[_Main_Img_1] [nvarchar](max) NULL,
	[_Main_Img_2] [nvarchar](max) NULL,
	[_Main_Img_3] [nvarchar](max) NULL,
	[_Main_Img_4] [nvarchar](max) NULL,
	[_Display] [nvarchar](50) NULL,
	[_Order] [int] NULL,
 CONSTRAINT [PK__Section_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Themes]    Script Date: 15/03/2016 12:46:51 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Themes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[_Color1] [nvarchar](max) NULL,
	[_Color2] [nvarchar](max) NULL,
	[_Color3] [nvarchar](max) NULL,
	[_Color4] [nvarchar](max) NULL,
	[_Color5] [nvarchar](max) NULL,
	[_Color6] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images] FOREIGN KEY([_Img_1])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images1] FOREIGN KEY([_Img_2])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images1]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images2] FOREIGN KEY([_Img_3])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images2]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images3] FOREIGN KEY([_Img_4])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images3]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images4] FOREIGN KEY([_Img_5])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images4]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images5] FOREIGN KEY([_Img_6])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images5]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images6] FOREIGN KEY([_Img_7])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images6]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Images7] FOREIGN KEY([_Img_8])
REFERENCES [dbo].[_Images] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Images7]
GO
ALTER TABLE [dbo].[_Section_Content]  WITH CHECK ADD  CONSTRAINT [FK__Section_Content__Section_Table1] FOREIGN KEY([_Section_Id])
REFERENCES [dbo].[_Section_Table] ([Id])
GO
ALTER TABLE [dbo].[_Section_Content] CHECK CONSTRAINT [FK__Section_Content__Section_Table1]
GO
ALTER TABLE [dbo].[_Section_Table]  WITH CHECK ADD  CONSTRAINT [FK__Section_Table__Section_Table] FOREIGN KEY([Id])
REFERENCES [dbo].[_Section_Table] ([Id])
GO
ALTER TABLE [dbo].[_Section_Table] CHECK CONSTRAINT [FK__Section_Table__Section_Table]
GO
