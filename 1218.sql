USE [master]
GO
/****** Object:  Database [MyHW]    Script Date: 2022/12/18 下午 09:32:23 ******/
CREATE DATABASE [MyHW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyHW', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyHW.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyHW_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyHW_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MyHW] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyHW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyHW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyHW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyHW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyHW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyHW] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyHW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyHW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyHW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyHW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyHW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyHW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyHW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyHW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyHW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyHW] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyHW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyHW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyHW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyHW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyHW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyHW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyHW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyHW] SET RECOVERY FULL 
GO
ALTER DATABASE [MyHW] SET  MULTI_USER 
GO
ALTER DATABASE [MyHW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyHW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyHW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyHW] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyHW] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MyHW] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MyHW', N'ON'
GO
ALTER DATABASE [MyHW] SET QUERY_STORE = OFF
GO
USE [MyHW]
GO
/****** Object:  Table [dbo].[OD]    Script Date: 2022/12/18 下午 09:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OD](
	[訂單ID] [int] IDENTITY(1,1) NOT NULL,
	[訂購電話] [nvarchar](50) NULL,
	[雞排_份] [int] NULL,
	[鹹酥雞_份] [int] NULL,
	[雞心_串] [int] NULL,
	[雞胗_串] [int] NULL,
	[雞屁股_串] [int] NULL,
	[甜不辣_份] [int] NULL,
	[薯條_份] [int] NULL,
	[季節蔬菜_份] [int] NULL,
	[辣度] [nvarchar](200) NULL,
	[外送] [bit] NULL,
	[總金額] [int] NULL,
	[訂單時間] [datetime] NULL,
	[訂單狀態] [bit] NULL,
 CONSTRAINT [PK_OD] PRIMARY KEY CLUSTERED 
(
	[訂單ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persons]    Script Date: 2022/12/18 下午 09:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[帳號_電話] [nvarchar](50) NULL,
	[密碼] [nvarchar](50) NULL,
	[姓名] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[生日] [date] NULL,
 CONSTRAINT [PK_persons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OD] ON 

INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (1, N'0945612556', 0, 2, 0, 0, 0, 0, 0, 0, N'不辣', 0, 100, CAST(N'2021-12-11T19:54:55.597' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (3, N'0944758693', 0, 2, 0, 0, 1, 0, 0, 0, N'不辣', 1, 130, CAST(N'2022-10-14T11:26:09.127' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (4, N'0944652369', 0, 0, 1, 0, 5, 0, 0, 0, N'不辣', 1, 180, CAST(N'2022-12-14T11:29:44.837' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (5, N'0955456123', 1, 0, 0, 0, 0, 0, 0, 0, N'小辣', 0, 60, CAST(N'2022-12-14T11:30:15.130' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (6, N'0911879495', 0, 0, 0, 2, 0, 0, 0, 0, N'不辣', 0, 60, CAST(N'2022-12-14T13:23:40.960' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (7, N'0988789456', 1, 0, 0, 0, 2, 0, 0, 0, N'大辣', 1, 120, CAST(N'2022-12-14T13:24:01.557' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (8, N'0944536989', 2, 0, 0, 0, 0, 2, 0, 0, N'中辣', 1, 180, CAST(N'2022-12-14T13:24:38.157' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (9, N'0955684949', 5, 0, 0, 1, 0, 0, 0, 0, N'中辣', 1, 330, CAST(N'2022-12-14T14:22:43.263' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (10, N'0977849596', 1, 0, 0, 0, 5, 0, 0, 0, N'微辣', 0, 210, CAST(N'2022-12-14T14:23:36.470' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (11, N'0948859636', 0, 0, 10, 0, 0, 0, 0, 0, N'地獄辣', 0, 300, CAST(N'2022-12-14T14:26:56.943' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (12, N'0984464477', 0, 0, 0, 10, 0, 0, 0, 0, N'大辣', 1, 300, CAST(N'2022-12-14T14:30:02.257' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (13, N'0944182978', 1, 0, 0, 1, 0, 0, 0, 0, N'小辣', 0, 90, CAST(N'2022-12-14T14:30:27.197' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (14, N'0948697197', 1, 1, 1, 1, 1, 1, 1, 1, N'地獄辣', 0, 290, CAST(N'2022-12-14T14:33:48.830' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (15, N'0966456123', 0, 1, 0, 1, 0, 0, 0, 0, N'小辣', 0, 80, CAST(N'2022-12-15T15:21:30.427' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (16, N'0978945612', 2, 0, 0, 1, 1, 0, 0, 0, N'微辣', 0, 180, CAST(N'2022-12-17T18:57:28.587' AS DateTime), 1)
INSERT [dbo].[OD] ([訂單ID], [訂購電話], [雞排_份], [鹹酥雞_份], [雞心_串], [雞胗_串], [雞屁股_串], [甜不辣_份], [薯條_份], [季節蔬菜_份], [辣度], [外送], [總金額], [訂單時間], [訂單狀態]) VALUES (17, N'0911252363', 1, 0, 0, 0, 0, 0, 0, 0, N'微辣', 1, 60, CAST(N'2022-12-17T19:34:26.827' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[OD] OFF
GO
SET IDENTITY_INSERT [dbo].[persons] ON 

INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (1, N'0910123456', N'P@sss-iii', N'店長', N'eeii@gmail.com', CAST(N'1994-05-09' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (2, N'0911123456', N'P@sss-iii', N'店員1', N'eeii@gmail.com', CAST(N'1994-06-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (3, N'0912123456', N'P@sss-iii', N'店員2', N'eeii@gmail.com', CAST(N'1994-06-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (4, N'0913123456', N'P@sss-iii', N'店員3', N'eeii@gmail.com', CAST(N'1994-06-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (5, N'0914123456', N'P@sss-iii', N'店員4', N'eeii@gmail.com', CAST(N'1994-06-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (6, N'0915123456', N'P@sss-iii', N'店員5', N'eeii@gmail.com', CAST(N'1994-06-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (7, N'0916123456', N'P@sss-iii', N'店員6', N'eeii@gmail.com', CAST(N'1994-06-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (8, N'0917123456', N'P@sss-iii', N'店員7', N'eeii@gmail.com', CAST(N'1994-06-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (9, N'0918123456', N'P@sss-iii', N'店員8', N'eeii@gmail.com', CAST(N'1994-06-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (10, N'0919123456', N'P@sss-iii', N'店員9', N'eeii@gmail.com', CAST(N'1994-06-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (11, N'0925438959', N'qweasdzxc', N'王小明', N'tt@gmail.com', CAST(N'1992-04-06' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (12, N'0984653156', N'789456123', N'陳大胖', N'yyy@gmail.com', CAST(N'1999-03-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (13, N'0965879165', N'456123789', N'劉筱涵', N'oopo@gmail.com', CAST(N'1993-02-05' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (14, N'0989492645', N'123456789', N'吳曉雨', N'opop@gmail.com', CAST(N'1989-04-05' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (15, N'0999888777', N'456', N'coco', N'pp@gmail.com', CAST(N'1988-06-06' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (16, N'0966456123', N'123', N'kity', N'ioioi@gmail.com', CAST(N'1990-06-07' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (17, N'0999888778', N'456', N'lovecoco', N'eeee@gmail.com', CAST(N'1999-06-15' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (18, N'0955163456', N'123654', N'Andy', N'uiii@gmail.com', CAST(N'1978-10-12' AS Date))
INSERT [dbo].[persons] ([ID], [帳號_電話], [密碼], [姓名], [Email], [生日]) VALUES (19, N'0978945612', N'1238989', N'陳大胖', N'yoyo@gmail.com', CAST(N'2000-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[persons] OFF
GO
USE [master]
GO
ALTER DATABASE [MyHW] SET  READ_WRITE 
GO
