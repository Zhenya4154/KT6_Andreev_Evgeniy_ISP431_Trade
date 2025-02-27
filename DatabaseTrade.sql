USE [master]
GO
/****** Object:  Database [Trade]    Script Date: 24.01.2025 14:40:17 ******/
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
/****** Object:  Table [dbo].[NameCity]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameCity](
	[Id] [int] NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameCity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameManufacturer]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameManufacturer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameManufacturer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameProduct]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameStreet]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameStreet](
	[Id] [int] NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameStreet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameSupplier]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameSupplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Supplier] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameSupplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameUnit]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[IdOrderProduct] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderDeliveryDate] [date] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[NameClient] [nvarchar](50) NULL,
	[Code] [int] NOT NULL,
	[IdStatus] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF390B11B4] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[Id] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[Id] [int] NOT NULL,
	[IndexCity] [int] NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[Hous] [int] NULL,
 CONSTRAINT [PK_PickupPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticleNumber] [int] NULL,
	[IdProductName] [int] NOT NULL,
	[IdUnit] [int] NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[MaxSales] [int] NULL,
	[ProductManufacturer] [int] NULL,
	[ProductSupplier] [int] NOT NULL,
	[IdProductCategory] [int] NOT NULL,
	[ProductDiscountAmount] [int] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductDescription] [nvarchar](500) NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[ProductPhoto] [image] NULL,
 CONSTRAINT [PK__Product__2EA7DCD58156BF4C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24.01.2025 14:40:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](100) NOT NULL,
	[UserPassword] [nvarchar](100) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK__User__1788CCAC89D1B127] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NameCity] ([Id], [City]) VALUES (1, N' г. Нефтеюганск')
GO
SET IDENTITY_INSERT [dbo].[NameManufacturer] ON 

INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (1, N'Cat Chow')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (2, N'Chappy')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (3, N'Dog Chow')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (4, N'Dreames')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (6, N'LIKER')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (7, N'Nobby')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (8, N'Pro Plan')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (9, N'TitBit')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (10, N'Triol')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (11, N'trixie')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (12, N'True Touch')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (13, N'ZooM')
SET IDENTITY_INSERT [dbo].[NameManufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[NameProduct] ON 

INSERT [dbo].[NameProduct] ([Id], [Product]) VALUES (1, N'Игрушка')
INSERT [dbo].[NameProduct] ([Id], [Product]) VALUES (2, N'Клетка')
INSERT [dbo].[NameProduct] ([Id], [Product]) VALUES (3, N'Лакомство')
INSERT [dbo].[NameProduct] ([Id], [Product]) VALUES (4, N'Лежак')
INSERT [dbo].[NameProduct] ([Id], [Product]) VALUES (5, N'Миска')
INSERT [dbo].[NameProduct] ([Id], [Product]) VALUES (6, N'Мячик')
INSERT [dbo].[NameProduct] ([Id], [Product]) VALUES (7, N'Сухой корм')
INSERT [dbo].[NameProduct] ([Id], [Product]) VALUES (8, N'Щетка-варежка')
INSERT [dbo].[NameProduct] ([Id], [Product]) VALUES (9, N'Дима')
INSERT [dbo].[NameProduct] ([Id], [Product]) VALUES (10, N'')
SET IDENTITY_INSERT [dbo].[NameProduct] OFF
GO
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (1, N' ул. 8 Марта')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (2, N' ул. Вишневая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (3, N' ул. Гоголя')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (4, N' ул. Дзержинского')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (5, N' ул. Зеленая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (6, N' ул. Коммунистическая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (7, N' ул. Комсомольская')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (8, N' ул. Маяковского')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (9, N' ул. Мичурина')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (10, N' ул. Молодежная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (11, N' ул. Набережная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (12, N' ул. Некрасова')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (13, N' ул. Новая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (14, N' ул. Октябрьская')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (15, N' ул. Партизанская')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (16, N' ул. Победы')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (17, N' ул. Подгорная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (18, N' ул. Полевая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (19, N' ул. Садовая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (20, N' ул. Светлая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (21, N' ул. Северная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (22, N' ул. Солнечная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (23, N' ул. Спортивная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (24, N' ул. Фрунзе')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (25, N' ул. Цветочная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (26, N' ул. Чехова')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (27, N' ул. Школьная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (28, N' ул. Шоссейная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (29, N'  ул. Степная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (30, N'ул. Клубная')
GO
SET IDENTITY_INSERT [dbo].[NameSupplier] ON 

INSERT [dbo].[NameSupplier] ([Id], [Supplier]) VALUES (1, N'PetShop')
INSERT [dbo].[NameSupplier] ([Id], [Supplier]) VALUES (2, N'ZooMir')
INSERT [dbo].[NameSupplier] ([Id], [Supplier]) VALUES (3, N'Микаил')
INSERT [dbo].[NameSupplier] ([Id], [Supplier]) VALUES (4, N'')
SET IDENTITY_INSERT [dbo].[NameSupplier] OFF
GO
SET IDENTITY_INSERT [dbo].[NameUnit] ON 

INSERT [dbo].[NameUnit] ([Id], [Unit]) VALUES (1, N'шт.')
INSERT [dbo].[NameUnit] ([Id], [Unit]) VALUES (2, N'.шт')
INSERT [dbo].[NameUnit] ([Id], [Unit]) VALUES (3, N'')
SET IDENTITY_INSERT [dbo].[NameUnit] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (1, 1, 20, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, 601, 2)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (2, 1, 4, 1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, 601, 2)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (3, 2, 11, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, 602, 2)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (4, 2, 9, 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, 602, 2)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (5, 3, 10, 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, N'Шилова Майя Артемьевна', 603, 1)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (6, 3, 6, 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, N'Шилова Майя Артемьевна', 603, 1)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (7, 4, 12, 1, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, 604, 1)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (8, 4, 2, 2, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, 604, 1)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (9, 5, 18, 1, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, 605, 1)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (10, 5, 3, 10, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, 605, 1)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (11, 6, 14, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, N'Филимонов Роберт Васильевич', 606, 1)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (12, 6, 1, 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, N'Филимонов Роберт Васильевич', 606, 1)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (13, 7, 15, 1, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, 607, 2)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (14, 7, 7, 1, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, 607, 2)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (15, 8, 19, 1, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, 608, 2)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (16, 8, 5, 1, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, 608, 2)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (17, 9, 16, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, N'Волкова Эмилия Артёмовна', 609, 2)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (18, 9, 8, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, N'Волкова Эмилия Артёмовна', 609, 2)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (19, 10, 13, 2, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, N'Чистякова Виктория Степановна', 610, 1)
INSERT [dbo].[Order] ([Id], [OrderNumber], [IdOrderProduct], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdStatus]) VALUES (20, 10, 17, 2, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, N'Чистякова Виктория Степановна', 610, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (1, N' D643B5')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (2, N' E345R4')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (3, N' E431R5')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (4, N' G453T5')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (5, N' K452T5')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (6, N' T432F4')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (7, N' V527T5')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (8, N' W548O7')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (9, N' Y324F4')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (10, N'E532Q5')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (11, N'F432F4')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (12, N'G345E4')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (13, N'H342F5')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (14, N'H436R4')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (15, N'K436T5')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (16, N'M356R4')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (17, N'Q245F5')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (18, N'R356F4')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (19, N'V527T5')
INSERT [dbo].[OrderProduct] ([Id], [ProductArticleNumber]) VALUES (20, N'А112Т4')
GO
INSERT [dbo].[OrderStatus] ([Id], [Status]) VALUES (1, N'Завершен')
INSERT [dbo].[OrderStatus] ([Id], [Status]) VALUES (2, N'Новый ')
GO
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (1, 344288, 1, 26, 1)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (2, 614164, 1, 29, 30)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (3, 394242, 1, 6, 43)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (4, 660540, 1, 22, 25)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (5, 125837, 1, 28, 40)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (6, 125703, 1, 15, 49)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (7, 625283, 1, 16, 46)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (8, 614611, 1, 10, 50)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (9, 454311, 1, 13, 19)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (10, 660007, 1, 14, 19)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (11, 603036, 1, 19, 4)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (12, 450983, 1, 7, 26)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (13, 394782, 1, 26, 3)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (14, 603002, 1, 4, 28)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (15, 450558, 1, 11, 30)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (16, 394060, 1, 24, 43)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (17, 410661, 1, 27, 50)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (18, 625590, 1, 6, 20)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (19, 625683, 1, 1, NULL)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (20, 400562, 1, 5, 32)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (21, 614510, 1, 8, 47)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (22, 410542, 1, 20, 46)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (23, 620839, 1, 25, 8)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (24, 443890, 1, 6, 1)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (25, 603379, 1, 23, 46)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (26, 603721, 1, 3, 41)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (27, 410172, 1, 21, 13)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (28, 420151, 1, 2, 32)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (29, 125061, 1, 17, 8)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (30, 630370, 1, 28, 24)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (31, 614753, 1, 18, 35)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (32, 426030, 1, 8, 44)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (33, 450375, 1, 30, 44)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (34, 625560, 1, 12, 12)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (35, 630201, 1, 7, 17)
INSERT [dbo].[PickupPoint] ([Id], [IndexCity], [IdCity], [IdStreet], [Hous]) VALUES (36, 190949, 1, 9, 26)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (1, 20, 3, 1, CAST(123.0000 AS Decimal(19, 4)), 30, 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (2, 12, 8, 1, CAST(149.0000 AS Decimal(19, 4)), 15, 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (3, 11, 7, 1, CAST(1200.0000 AS Decimal(19, 4)), 10, 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (4, 19, 3, 1, CAST(86.0000 AS Decimal(19, 4)), 5, 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (5, 10, 3, 1, CAST(166.0000 AS Decimal(19, 4)), 15, 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (6, 18, 7, 1, CAST(1700.0000 AS Decimal(19, 4)), 25, 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (7, 12, 6, 1, CAST(300.0000 AS Decimal(19, 4)), 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (8, 9, 1, 1, CAST(199.0000 AS Decimal(19, 4)), 5, 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (9, 18, 5, 1, CAST(234.0000 AS Decimal(19, 4)), 10, 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (10, 9, 3, 1, CAST(170.0000 AS Decimal(19, 4)), 5, 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (11, 9, 1, 1, CAST(600.0000 AS Decimal(19, 4)), 10, 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (12, 14, 1, 1, CAST(300.0000 AS Decimal(19, 4)), 15, 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (13, 9, 7, 1, CAST(4100.0000 AS Decimal(19, 4)), 30, 1, 1, 2, 4, 0, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (14, 13, 5, 1, CAST(385.0000 AS Decimal(19, 4)), 10, 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (15, 18, 7, 1, CAST(280.0000 AS Decimal(19, 4)), 15, 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (16, 18, 7, 1, CAST(1700.0000 AS Decimal(19, 4)), 25, 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (17, 13, 1, 1, CAST(510.0000 AS Decimal(19, 4)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (18, 17, 1, 1, CAST(510.0000 AS Decimal(19, 4)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (19, 12, 7, 1, CAST(2190.0000 AS Decimal(19, 4)), 30, 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (20, 14, 3, 1, CAST(177.0000 AS Decimal(19, 4)), 15, 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (21, 15, 6, 1, CAST(100.0000 AS Decimal(19, 4)), 5, 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (22, 19, 1, 1, CAST(640.0000 AS Decimal(19, 4)), 5, 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (23, 15, 4, 1, CAST(800.0000 AS Decimal(19, 4)), 25, 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (24, 9, 2, 1, CAST(3500.0000 AS Decimal(19, 4)), 30, 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (25, 9, 5, 1, CAST(400.0000 AS Decimal(19, 4)), 15, 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (26, 14, 5, 1, CAST(292.0000 AS Decimal(19, 4)), 25, 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (27, 9, 6, 1, CAST(600.0000 AS Decimal(19, 4)), 15, 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (28, 9, 3, 1, CAST(140.0000 AS Decimal(19, 4)), 20, 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (29, 16, 3, 1, CAST(50.0000 AS Decimal(19, 4)), 5, 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [ProductArticleNumber], [IdProductName], [IdUnit], [ProductCost], [MaxSales], [ProductManufacturer], [ProductSupplier], [IdProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [Photo], [ProductPhoto]) VALUES (30, 19, 7, 1, CAST(600.0000 AS Decimal(19, 4)), 15, 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProductCategory] ([Id], [Category]) VALUES (1, N'Для животных')
INSERT [dbo].[ProductCategory] ([Id], [Category]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[ProductCategory] ([Id], [Category]) VALUES (3, N'Товары для собак')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([Id], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([Id], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Яковлева', N'Ярослава', N'Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67', 1)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp', 1)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR', 3)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv', 3)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9', 3)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos', 2)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT', 2)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr', 2)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderProduct] FOREIGN KEY([IdOrderProduct])
REFERENCES [dbo].[OrderProduct] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderProduct]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickupPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickupPoint] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickupPoint]
GO
ALTER TABLE [dbo].[PickupPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickupPoint_NameCity] FOREIGN KEY([IdCity])
REFERENCES [dbo].[NameCity] ([Id])
GO
ALTER TABLE [dbo].[PickupPoint] CHECK CONSTRAINT [FK_PickupPoint_NameCity]
GO
ALTER TABLE [dbo].[PickupPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickupPoint_NameStreet] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[NameStreet] ([Id])
GO
ALTER TABLE [dbo].[PickupPoint] CHECK CONSTRAINT [FK_PickupPoint_NameStreet]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_NameManufacturer] FOREIGN KEY([ProductManufacturer])
REFERENCES [dbo].[NameManufacturer] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_NameManufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_NameProduct] FOREIGN KEY([IdProductName])
REFERENCES [dbo].[NameProduct] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_NameProduct]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_NameSupplier] FOREIGN KEY([ProductSupplier])
REFERENCES [dbo].[NameSupplier] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_NameSupplier]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_NameUnit] FOREIGN KEY([IdUnit])
REFERENCES [dbo].[NameUnit] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_NameUnit]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([IdProductCategory])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Trade] SET  READ_WRITE 
GO
