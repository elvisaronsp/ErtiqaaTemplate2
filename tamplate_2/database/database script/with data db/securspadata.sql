USE [master]
GO
/****** Object:  Database [securspa]    Script Date: 15/03/2016 01:04:12 ص ******/
CREATE DATABASE [securspa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'securspa', FILENAME = N'E:\MSSQL.MSSQLSERVER\DATA\securspa.mdf' , SIZE = 4096KB , MAXSIZE = 204800KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'securspa_log', FILENAME = N'D:\MSSQL.MSSQLSERVER\DATA\securspa_log.ldf' , SIZE = 1024KB , MAXSIZE = 102400KB , FILEGROWTH = 1024KB )
GO
ALTER DATABASE [securspa] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [securspa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [securspa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [securspa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [securspa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [securspa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [securspa] SET ARITHABORT OFF 
GO
ALTER DATABASE [securspa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [securspa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [securspa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [securspa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [securspa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [securspa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [securspa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [securspa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [securspa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [securspa] SET  ENABLE_BROKER 
GO
ALTER DATABASE [securspa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [securspa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [securspa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [securspa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [securspa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [securspa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [securspa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [securspa] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [securspa] SET  MULTI_USER 
GO
ALTER DATABASE [securspa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [securspa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [securspa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [securspa] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [securspa] SET DELAYED_DURABILITY = DISABLED 
GO
USE [securspa]
GO
/****** Object:  User [shaddadsecur]    Script Date: 15/03/2016 01:04:15 ص ******/
CREATE USER [shaddadsecur] FOR LOGIN [shaddadsecur] WITH DEFAULT_SCHEMA=[shaddadsecur]
GO
/****** Object:  User [shaddad1]    Script Date: 15/03/2016 01:04:16 ص ******/
CREATE USER [shaddad1] FOR LOGIN [shaddad1] WITH DEFAULT_SCHEMA=[shaddad1]
GO
/****** Object:  User [shaddad]    Script Date: 15/03/2016 01:04:16 ص ******/
CREATE USER [shaddad] FOR LOGIN [shaddad] WITH DEFAULT_SCHEMA=[shaddad]
GO
/****** Object:  User [RoialUser]    Script Date: 15/03/2016 01:04:16 ص ******/
CREATE USER [RoialUser] FOR LOGIN [RoialUser] WITH DEFAULT_SCHEMA=[RoialUser]
GO
/****** Object:  DatabaseRole [gd_execprocs]    Script Date: 15/03/2016 01:04:17 ص ******/
CREATE ROLE [gd_execprocs]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [shaddadsecur]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [shaddadsecur]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [shaddadsecur]
GO
ALTER ROLE [db_datareader] ADD MEMBER [shaddadsecur]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [shaddadsecur]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [shaddad1]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [shaddad1]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [shaddad1]
GO
ALTER ROLE [db_datareader] ADD MEMBER [shaddad1]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [shaddad1]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [shaddad]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [shaddad]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [shaddad]
GO
ALTER ROLE [db_datareader] ADD MEMBER [shaddad]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [shaddad]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [RoialUser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [RoialUser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [RoialUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [RoialUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [RoialUser]
GO
/****** Object:  Schema [RoialUser]    Script Date: 15/03/2016 01:04:19 ص ******/
CREATE SCHEMA [RoialUser]
GO
/****** Object:  Schema [shaddad]    Script Date: 15/03/2016 01:04:20 ص ******/
CREATE SCHEMA [shaddad]
GO
/****** Object:  Schema [shaddad1]    Script Date: 15/03/2016 01:04:20 ص ******/
CREATE SCHEMA [shaddad1]
GO
/****** Object:  Schema [shaddadsecur]    Script Date: 15/03/2016 01:04:20 ص ******/
CREATE SCHEMA [shaddadsecur]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 15/03/2016 01:04:20 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
	[Email] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 15/03/2016 01:04:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL DEFAULT ((0)),
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL DEFAULT ((0)),
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 15/03/2016 01:04:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 15/03/2016 01:04:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 15/03/2016 01:04:21 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

INSERT [dbo].[UserProfile] ([UserId], [UserName], [Email]) VALUES (1, N'egyptioncoder', NULL)
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Email]) VALUES (2, N'Hassan Ahmed Shaddad', N'shaddad@shaddadsoft.com')
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Email]) VALUES (3, N'mido', N'shaddad@shaddadsoft.com')
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Email]) VALUES (4, N'shaddad@shaddadsoft.com', N'shaddad@shaddadsoft.com')
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Email]) VALUES (5, N'test', N'egyptioncoder@hotmail.com')
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Email]) VALUES (6, N'testme', N'egyptioncoder@hotmail.com')
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Email]) VALUES (7, N'shaddadsouliotions', N'shaddadsolutions@gmail.com')
INSERT [dbo].[UserProfile] ([UserId], [UserName], [Email]) VALUES (8, N'shaddadsolutions@gmail.com', N'shaddadsolutions@gmail.com')
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(N'2016-01-12 17:51:07.630' AS DateTime), NULL, 1, NULL, 0, N'ABJ1sPITu7fQB3Du95eeY19+0oHlIEn7Q07PUbB6bKoVovLBdTtCIP38F+m6juCYwA==', CAST(N'2016-01-12 17:51:07.630' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (3, CAST(N'2016-03-08 19:29:28.470' AS DateTime), N'ADDt8k6hCDcFn6sp3wb3pw2', 0, NULL, 0, N'AM3HN5U5AtWt2FoGqid+GX7t95aBHZcMIsEWZmcSga2UA6kJRiJ/RBxcjJj9HTzPeg==', CAST(N'2016-03-08 19:29:28.470' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (4, CAST(N'2016-03-08 19:34:08.180' AS DateTime), N'emRKbCaP8Cnf_VCoZ4rgRw2', 1, NULL, 0, N'ACFzkZF53NRe0/1A5ye60XHPDgZ7KAdSz5db7VPdwN2aJT+z4AoqImtgusPTQP6Bng==', CAST(N'2016-03-08 19:34:08.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (5, CAST(N'2016-03-08 20:00:14.947' AS DateTime), N'mVh55SICpEuVkynDztvZcw2', 0, NULL, 0, N'AJVdFa6zararcpL8i5vUB36U75C+zX4RLbyHVB0uz9DIJZI9QFpkxrgC8esMD0D2Vg==', CAST(N'2016-03-08 20:00:14.947' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (6, CAST(N'2016-03-08 20:15:47.443' AS DateTime), N'mznVh_SBJyMjRruWjybdOQ2', 0, NULL, 0, N'ACMw/N071O1yIouX9OOJ74fbP+8lJX6zATUIxLcK01CHTr5zuPeWpdDdIs9bjQniEA==', CAST(N'2016-03-08 20:15:47.443' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (7, CAST(N'2016-03-08 21:52:30.150' AS DateTime), N'gm_3E-8mInvE-Nlps5ZutA2', 0, NULL, 0, N'AEW7vnBYoHS+IeJveLHZ+JPl8a4N1XQWJm7DzRQ2o+Uh9zEaiGDUSGJ7nsm6tz6PHQ==', CAST(N'2016-03-08 21:52:30.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (8, CAST(N'2016-03-08 21:53:11.167' AS DateTime), N'V7Si5VhsV5z-Wmc0CRQaaQ2', 1, NULL, 0, N'AOjO7QEh9Yk9eIpuKZPSusu81zITWqj3a8MQAnEQVtT2aSGm6NPOAnIhP0xWxR5yZA==', CAST(N'2016-03-08 21:53:11.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_OAuthMembership] ([Provider], [ProviderUserId], [UserId]) VALUES (N'facebook', N'1685505391726404', 2)
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON 

INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'Developer')
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 2)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__UserProf__C9F284569CE14AC8]    Script Date: 15/03/2016 01:04:23 ص ******/
ALTER TABLE [dbo].[UserProfile] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__webpages__8A2B6160D70DC2F7]    Script Date: 15/03/2016 01:04:23 ص ******/
ALTER TABLE [dbo].[webpages_Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
USE [master]
GO
ALTER DATABASE [securspa] SET  READ_WRITE 
GO
