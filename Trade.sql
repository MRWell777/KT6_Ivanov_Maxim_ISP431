USE [master]
GO
/****** Object:  Database [Trade]    Script Date: 11.02.2025 15:21:46 ******/
CREATE DATABASE [Trade]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Trade', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Trade_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Trade] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trade].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trade] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trade] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trade] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trade] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trade] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trade] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Trade] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trade] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trade] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trade] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trade] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trade] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trade] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trade] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trade] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Trade] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trade] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trade] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trade] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trade] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trade] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trade] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trade] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Trade] SET  MULTI_USER 
GO
ALTER DATABASE [Trade] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trade] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trade] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trade] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Trade] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Trade] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Trade] SET QUERY_STORE = OFF
GO
USE [Trade]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[ID] [int] NOT NULL,
	[IndexID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[StreetID] [int] NOT NULL,
	[House] [int] NULL,
 CONSTRAINT [PK_Adres] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articule]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articule](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Articule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryProduct]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryProduct](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CategoryProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] NOT NULL,
	[NameCity] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deliveri]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deliveri](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Deliveri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[ID] [int] NOT NULL,
	[CodeIndex] [float] NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufactyre]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufactyre](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufactyre] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameProduct]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameProduct](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[StatusID] [int] NOT NULL,
	[OrderDeliveryDate] [date] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[OrderProduct] [nvarchar](50) NOT NULL,
	[Quntity] [float] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[FIO] [int] NULL,
	[CODE] [float] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAFF052D55E] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [int] NOT NULL,
 CONSTRAINT [PK__OrderPro__817A26625348FB10] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[ID] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL,
	[ProductArticleNumber] [int] NOT NULL,
	[ProductName] [int] NOT NULL,
	[ProductDescription] [nvarchar](100) NOT NULL,
	[ProductCategory] [int] NOT NULL,
	[ProductPhoto] [image] NULL,
	[ProductManufacturer] [int] NOT NULL,
	[ProductCost] [float] NOT NULL,
	[ProductDiscountAmount] [int] NOT NULL,
	[ProductQuantityInStock] [float] NOT NULL,
	[ProductStatus] [nvarchar](50) NOT NULL,
	[MaxDiscaunt] [float] NOT NULL,
	[ProductDeliveri] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Role__8AFACE3A90E4B33B] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[ID] [int] NOT NULL,
	[NameStreet] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11.02.2025 15:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserPatronymic] [nvarchar](50) NOT NULL,
	[UserLogin] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (1, 5, 1, 28, 1)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (2, 24, 1, 25, 30)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (3, 7, 1, 7, 43)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (4, 36, 1, 23, 25)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (5, 3, 1, 30, 40)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (6, 2, 1, 16, 49)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (7, 29, 1, 17, 46)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (8, 26, 1, 11, 50)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (9, 19, 1, 14, 19)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (10, 35, 1, 15, 19)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (11, 21, 1, 20, 4)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (12, 18, 1, 8, 26)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (13, 8, 1, 28, 3)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (14, 20, 1, 4, 28)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (15, 17, 1, 12, 30)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (16, 6, 1, 26, 43)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (17, 12, 1, 29, 50)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (18, 31, 1, 7, 20)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (19, 32, 1, 1, NULL)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (20, 9, 1, 5, 32)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (21, 25, 1, 9, 47)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (22, 11, 1, 21, 46)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (23, 28, 1, 27, 8)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (24, 15, 1, 7, 1)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (25, 22, 1, 24, 46)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (26, 23, 1, 3, 41)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (27, 10, 1, 22, 13)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (28, 13, 1, 2, 32)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (29, 1, 1, 18, 8)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (30, 34, 1, 30, 24)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (31, 27, 1, 19, 35)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (32, 14, 1, 9, 44)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (33, 16, 1, 6, 44)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (34, 30, 1, 13, 12)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (35, 33, 1, 8, 17)
INSERT [dbo].[Adres] ([ID], [IndexID], [CityID], [StreetID], [House]) VALUES (36, 4, 1, 10, 26)
GO
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (1, N' D643B5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (2, N' E345R4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (3, N' E431R5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (4, N' G453T5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (5, N' K452T5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (6, N' Q245F5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (7, N' T432F4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (8, N' V527T5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (9, N' W548O7')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (10, N' Y324F4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (11, N'B427R5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (12, N'D356R4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (13, N'D563F4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (14, N'D643B5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (15, N'E345R4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (16, N'E431R5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (17, N'E434U6')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (18, N'E466T6')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (19, N'E532Q5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (20, N'F432F4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (21, N'G345E4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (22, N'G453T5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (23, N'G542F5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (24, N'H342F5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (25, N'H432F4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (26, N'H436R4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (27, N'H542R6')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (28, N'H643W2')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (29, N'K436T5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (30, N'K452T5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (31, N'M356R4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (32, N'Q245F5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (33, N'R356F4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (34, N'S245R4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (35, N'T432F4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (36, N'V352R4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (37, N'V527T5')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (38, N'W548O7')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (39, N'Y324F4')
INSERT [dbo].[Articule] ([ID], [Name]) VALUES (40, N'А112Т4')
GO
INSERT [dbo].[CategoryProduct] ([ID], [Name]) VALUES (1, N'Для животных')
INSERT [dbo].[CategoryProduct] ([ID], [Name]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[CategoryProduct] ([ID], [Name]) VALUES (3, N'Товары для собак')
GO
INSERT [dbo].[City] ([ID], [NameCity]) VALUES (1, N' г. Нефтеюганск')
GO
INSERT [dbo].[Deliveri] ([ID], [Name]) VALUES (1, N'PetShop')
INSERT [dbo].[Deliveri] ([ID], [Name]) VALUES (2, N'ZooMir')
GO
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (1, 125061)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (2, 125703)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (3, 125837)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (4, 190949)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (5, 344288)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (6, 394060)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (7, 394242)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (8, 394782)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (9, 400562)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (10, 410172)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (11, 410542)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (12, 410661)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (13, 420151)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (14, 426030)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (15, 443890)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (16, 450375)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (17, 450558)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (18, 450983)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (19, 454311)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (20, 603002)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (21, 603036)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (22, 603379)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (23, 603721)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (24, 614164)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (25, 614510)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (26, 614611)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (27, 614753)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (28, 620839)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (29, 625283)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (30, 625560)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (31, 625590)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (32, 625683)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (33, 630201)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (34, 630370)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (35, 660007)
INSERT [dbo].[Index] ([ID], [CodeIndex]) VALUES (36, 660540)
GO
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (2, N'Chappy')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (4, N'Dreames')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (6, N'LIKER')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (7, N'Nobby')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (9, N'TitBit')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (10, N'Triol')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (11, N'trixie')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (12, N'True Touch')
INSERT [dbo].[Manufactyre] ([ID], [Name]) VALUES (13, N'ZooM')
GO
INSERT [dbo].[NameProduct] ([ID], [Name]) VALUES (1, N'Игрушка')
INSERT [dbo].[NameProduct] ([ID], [Name]) VALUES (2, N'Клетка')
INSERT [dbo].[NameProduct] ([ID], [Name]) VALUES (3, N'Лакомство')
INSERT [dbo].[NameProduct] ([ID], [Name]) VALUES (4, N'Лежак')
INSERT [dbo].[NameProduct] ([ID], [Name]) VALUES (5, N'Миска')
INSERT [dbo].[NameProduct] ([ID], [Name]) VALUES (6, N'Мячик')
INSERT [dbo].[NameProduct] ([ID], [Name]) VALUES (7, N'Сухой корм')
INSERT [dbo].[NameProduct] ([ID], [Name]) VALUES (8, N'Щетка-варежка')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (1, 2, CAST(N'2022-05-12' AS Date), 25, N'А112Т4', 15, CAST(N'2022-05-06' AS Date), NULL, 601)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (2, 2, CAST(N'2022-05-12' AS Date), 20, N'F432F4', 15, CAST(N'2022-05-06' AS Date), NULL, 602)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (3, 1, CAST(N'2022-05-14' AS Date), 22, N'E532Q5', 10, CAST(N'2022-05-08' AS Date), 8, 603)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (4, 1, CAST(N'2022-05-14' AS Date), 24, N'G345E4', 1, CAST(N'2022-05-08' AS Date), NULL, 604)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (5, 1, CAST(N'2022-05-16' AS Date), 25, N'R356F4', 1, CAST(N'2022-05-10' AS Date), NULL, 605)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (6, 1, CAST(N'2022-05-17' AS Date), 28, N'H436R4', 1, CAST(N'2022-05-11' AS Date), 7, 606)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (7, 2, CAST(N'2022-05-18' AS Date), 36, N'H342F5', 2, CAST(N'2022-05-12' AS Date), NULL, 607)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (8, 2, CAST(N'2022-05-19' AS Date), 32, N'K436T5', 1, CAST(N'2022-05-13' AS Date), NULL, 608)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (9, 2, CAST(N'2022-05-21' AS Date), 34, N'V527T5', 1, CAST(N'2022-05-15' AS Date), 10, 609)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (10, 1, CAST(N'2022-05-21' AS Date), 36, N'M356R4', 1, CAST(N'2022-05-15' AS Date), 9, 610)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (11, 2, CAST(N'2022-05-12' AS Date), 25, N' G453T5', 1, CAST(N'2022-05-06' AS Date), NULL, 601)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (12, 2, CAST(N'2022-05-12' AS Date), 20, N' Y324F4', 15, CAST(N'2022-05-06' AS Date), NULL, 602)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (13, 1, CAST(N'2022-05-14' AS Date), 22, N' T432F4', 10, CAST(N'2022-05-08' AS Date), 8, 603)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (14, 1, CAST(N'2022-05-14' AS Date), 24, N' E345R4', 2, CAST(N'2022-05-08' AS Date), NULL, 604)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (15, 1, CAST(N'2022-05-16' AS Date), 25, N' E431R5', 10, CAST(N'2022-05-10' AS Date), NULL, 605)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (16, 1, CAST(N'2022-05-17' AS Date), 28, N' D643B5', 1, CAST(N'2022-05-11' AS Date), 7, 606)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (17, 2, CAST(N'2022-05-18' AS Date), 36, N' Q245F5', 2, CAST(N'2022-05-12' AS Date), NULL, 607)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (18, 2, CAST(N'2022-05-19' AS Date), 32, N' V527T5', 1, CAST(N'2022-05-13' AS Date), NULL, 608)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (19, 2, CAST(N'2022-05-21' AS Date), 34, N' K452T5', 1, CAST(N'2022-05-15' AS Date), 10, 609)
INSERT [dbo].[Order] ([OrderID], [StatusID], [OrderDeliveryDate], [OrderPickupPoint], [OrderProduct], [Quntity], [OrderDate], [FIO], [CODE]) VALUES (20, 1, CAST(N'2022-05-21' AS Date), 36, N' W548O7', 1, CAST(N'2022-05-15' AS Date), 9, 610)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (1, 30)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (2, 20)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (3, 19)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (4, 21)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (5, 30)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (6, 26)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (7, 24)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (8, 29)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (9, 30)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (10, 30)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (11, 4)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (12, 10)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (13, 7)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (14, 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (15, 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (16, 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (17, 6)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (18, 8)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (19, 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber]) VALUES (20, 9)
GO
INSERT [dbo].[OrderStatus] ([ID], [StatusName]) VALUES (1, N'Завершен')
INSERT [dbo].[OrderStatus] ([ID], [StatusName]) VALUES (2, N'Новый ')
GO
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (1, 30, 3, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', 2, NULL, 4, 123, 3, 6, N'шт.', 30, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (2, 12, 8, N'Щетка-варежка True Touch для вычесывания шерсти, синий', 1, NULL, 12, 149, 2, 7, N'шт.', 15, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (3, 10, 7, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', 2, NULL, 8, 1200, 3, 15, N'шт.', 10, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (4, 29, 3, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', 3, NULL, 9, 86, 4, 17, N'шт.', 5, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (5, 9, 3, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', 3, NULL, 9, 166, 5, 18, N'шт.', 15, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (6, 25, 7, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', 3, NULL, 2, 1700, 2, 5, N'шт.', 25, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (7, 11, 6, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', 3, NULL, 6, 300, 3, 19, N'шт.', 5, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (8, 5, 1, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', 2, NULL, 5, 199, 5, 7, N'шт.', 5, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (9, 23, 5, N'Миска Nobby с рисунком Dog для собак 130 мл красный', 3, NULL, 7, 234, 3, 17, N'шт.', 10, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (10, 6, 3, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', 3, NULL, 10, 170, 5, 5, N'шт.', 5, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (11, 3, 1, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', 3, NULL, 10, 600, 5, 5, N'шт.', 10, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (12, 16, 1, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', 3, NULL, 10, 300, 2, 15, N'шт.', 15, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (13, 4, 7, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', 2, NULL, 1, 4100, 4, 9, N'шт.', 30, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (14, 15, 5, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', 1, NULL, 10, 385, 2, 17, N'шт.', 10, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (15, 24, 7, N'Сухой корм для кошек CAT CHOW', 2, NULL, 1, 280, 3, 8, N'шт.', 15, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (16, 26, 7, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', 3, NULL, 2, 1700, 4, 9, N'шт.', 25, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (17, 14, 1, N'Игрушка для собак Triol Енот 41 см 12141063 серый', 3, NULL, 10, 510, 2, 17, N'шт.', 5, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (18, 22, 1, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', 3, NULL, 10, 510, 2, 17, N'шт.', 5, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (19, 13, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', 3, NULL, 8, 2190, 4, 7, N'шт.', 30, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (20, 17, 3, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', 3, NULL, 10, 177, 3, 15, N'шт.', 15, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (21, 19, 6, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', 3, NULL, 10, 100, 4, 21, N'шт.', 5, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (22, 27, 1, N'Игрушка для собак Triol Ящерица 39 см коричневый', 3, NULL, 10, 640, 5, 4, N'шт.', 5, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (23, 20, 4, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', 3, NULL, 13, 800, 2, 17, N'шт.', 25, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (24, 8, 2, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', 3, NULL, 10, 3500, 5, 3, N'шт.', 30, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (25, 1, 5, N'Миска для животных Triol "Стрекоза", 450 мл', 1, NULL, 10, 400, 4, 5, N'шт.', 15, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (26, 18, 5, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', 1, NULL, 10, 292, 3, 13, N'шт.', 25, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (27, 2, 6, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', 3, NULL, 11, 600, 2, 16, N'шт.', 15, 1)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (28, 7, 3, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', 3, NULL, 9, 140, 3, 19, N'шт.', 20, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (29, 21, 3, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', 3, NULL, 9, 50, 4, 6, N'шт.', 5, 2)
INSERT [dbo].[Product] ([ID], [ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [MaxDiscaunt], [ProductDeliveri]) VALUES (30, 28, 7, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', 3, NULL, 3, 600, 5, 15, N'шт.', 15, 1)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (1, N' ул. 8 Марта')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (2, N' ул. Вишневая')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (3, N' ул. Гоголя')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (4, N' ул. Дзержинского')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (5, N' ул. Зеленая')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (6, N' ул. Клубная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (7, N' ул. Коммунистическая')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (8, N' ул. Комсомольская')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (9, N' ул. Маяковского')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (10, N' ул. Мичурина')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (11, N' ул. Молодежная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (12, N' ул. Набережная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (13, N' ул. Некрасова')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (14, N' ул. Новая')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (15, N' ул. Октябрьская')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (16, N' ул. Партизанская')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (17, N' ул. Победы')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (18, N' ул. Подгорная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (19, N' ул. Полевая')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (20, N' ул. Садовая')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (21, N' ул. Светлая')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (22, N' ул. Северная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (23, N' ул. Солнечная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (24, N' ул. Спортивная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (25, N' ул. Степная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (26, N' ул. Фрунзе')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (27, N' ул. Цветочная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (28, N' ул. Чехова')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (29, N' ул. Школьная')
INSERT [dbo].[Street] ([ID], [NameStreet]) VALUES (30, N' ул. Шоссейная')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_City]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Index] FOREIGN KEY([IndexID])
REFERENCES [dbo].[Index] ([ID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Index]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Street] FOREIGN KEY([StreetID])
REFERENCES [dbo].[Street] ([ID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Street]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Adres] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[Adres] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Adres]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[OrderStatus] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([FIO])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Articule] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Articule] ([ID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Articule]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Articule] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Articule] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Articule]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_CategoryProduct] FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[CategoryProduct] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_CategoryProduct]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Deliveri] FOREIGN KEY([ProductDeliveri])
REFERENCES [dbo].[Deliveri] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Deliveri]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufactyre] FOREIGN KEY([ProductManufacturer])
REFERENCES [dbo].[Manufactyre] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufactyre]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_NameProduct] FOREIGN KEY([ProductName])
REFERENCES [dbo].[NameProduct] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_NameProduct]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK__User__UserRole__72C60C4A] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK__User__UserRole__72C60C4A]
GO
USE [master]
GO
ALTER DATABASE [Trade] SET  READ_WRITE 
GO
