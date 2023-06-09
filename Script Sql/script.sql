USE [master]
GO
/****** Object:  Database [fitness]    Script Date: 20.10.2022 18:06:41 ******/
CREATE DATABASE [fitness]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'fitness', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\fitness.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'fitness_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\fitness_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [fitness] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fitness].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [fitness] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [fitness] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [fitness] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [fitness] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [fitness] SET ARITHABORT OFF 
GO
ALTER DATABASE [fitness] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [fitness] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [fitness] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [fitness] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [fitness] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [fitness] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [fitness] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [fitness] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [fitness] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [fitness] SET  DISABLE_BROKER 
GO
ALTER DATABASE [fitness] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [fitness] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [fitness] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [fitness] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [fitness] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [fitness] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [fitness] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [fitness] SET RECOVERY FULL 
GO
ALTER DATABASE [fitness] SET  MULTI_USER 
GO
ALTER DATABASE [fitness] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [fitness] SET DB_CHAINING OFF 
GO
ALTER DATABASE [fitness] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [fitness] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [fitness] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [fitness] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'fitness', N'ON'
GO
ALTER DATABASE [fitness] SET QUERY_STORE = OFF
GO
USE [fitness]
GO
/****** Object:  Table [dbo].[Egitmen_Detay]    Script Date: 20.10.2022 18:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitmen_Detay](
	[egitmen_detayid] [int] IDENTITY(1,1) NOT NULL,
	[egitmen_telno] [bigint] NULL,
	[egitmen_brans] [nchar](30) NULL,
	[egitmen_ucret] [int] NULL,
	[egtmen_id] [int] NULL,
 CONSTRAINT [PK_Egitmen_Detay] PRIMARY KEY CLUSTERED 
(
	[egitmen_detayid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Egitmenler]    Script Date: 20.10.2022 18:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Egitmenler](
	[egitmen_id] [int] IDENTITY(1,1) NOT NULL,
	[egitmen_adi] [nchar](15) NULL,
	[egitmen_soyadi] [nchar](15) NULL,
 CONSTRAINT [PK_Egitmenler] PRIMARY KEY CLUSTERED 
(
	[egitmen_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fakulte]    Script Date: 20.10.2022 18:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fakulte](
	[fakulte_id] [int] IDENTITY(1,1) NOT NULL,
	[fakulte_adi] [nchar](15) NULL,
	[bolum_adi] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Fakulte] PRIMARY KEY CLUSTERED 
(
	[fakulte_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparis_Detay]    Script Date: 20.10.2022 18:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis_Detay](
	[siparis_id] [int] IDENTITY(1,1) NOT NULL,
	[siparis_ucreti] [int] NULL,
	[urun_id] [int] NULL,
	[uye_id] [int] NULL,
 CONSTRAINT [PK_Siparis_Detay] PRIMARY KEY CLUSTERED 
(
	[siparis_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 20.10.2022 18:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[urun_id] [int] IDENTITY(1,1) NOT NULL,
	[urun_adi] [nchar](20) NULL,
	[urun_fiyati] [int] NULL,
	[urun_adeti] [int] NULL,
	[urun_kategorisi] [nchar](30) NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[urun_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uye_Detay]    Script Date: 20.10.2022 18:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uye_Detay](
	[uye_detayid] [int] IDENTITY(1,1) NOT NULL,
	[uye_telno] [bigint] NULL,
	[uye_giristarih] [datetime] NULL,
	[uye_cikistarih] [datetime] NULL,
	[fakulte_id] [int] NULL,
	[uye_id] [int] NULL,
 CONSTRAINT [PK_Uye_Detay] PRIMARY KEY CLUSTERED 
(
	[uye_detayid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uyeler]    Script Date: 20.10.2022 18:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyeler](
	[uye_id] [int] IDENTITY(1,1) NOT NULL,
	[uye_adi] [nchar](15) NOT NULL,
	[uye_soyadi] [nchar](15) NOT NULL,
	[egitmen_id] [int] NULL,
	[uye_ogr_no] [int] NULL,
 CONSTRAINT [PK_Uyeler] PRIMARY KEY CLUSTERED 
(
	[uye_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Egitmen_Detay] ON 

INSERT [dbo].[Egitmen_Detay] ([egitmen_detayid], [egitmen_telno], [egitmen_brans], [egitmen_ucret], [egtmen_id]) VALUES (16, 54384685, N'BaşAntrenör                   ', 600, 23)
INSERT [dbo].[Egitmen_Detay] ([egitmen_detayid], [egitmen_telno], [egitmen_brans], [egitmen_ucret], [egtmen_id]) VALUES (17, 55039543, N'Diyetisyen                    ', 250, 24)
INSERT [dbo].[Egitmen_Detay] ([egitmen_detayid], [egitmen_telno], [egitmen_brans], [egitmen_ucret], [egtmen_id]) VALUES (18, 54485695, N'CrossFit                      ', 350, 25)
INSERT [dbo].[Egitmen_Detay] ([egitmen_detayid], [egitmen_telno], [egitmen_brans], [egitmen_ucret], [egtmen_id]) VALUES (19, 53162436, N'KickBoks                      ', 400, 26)
SET IDENTITY_INSERT [dbo].[Egitmen_Detay] OFF
GO
SET IDENTITY_INSERT [dbo].[Egitmenler] ON 

INSERT [dbo].[Egitmenler] ([egitmen_id], [egitmen_adi], [egitmen_soyadi]) VALUES (23, N'Onur           ', N'Özer           ')
INSERT [dbo].[Egitmenler] ([egitmen_id], [egitmen_adi], [egitmen_soyadi]) VALUES (24, N'Yılmaz         ', N'Feriz          ')
INSERT [dbo].[Egitmenler] ([egitmen_id], [egitmen_adi], [egitmen_soyadi]) VALUES (25, N'Serhat         ', N'Kahraman       ')
INSERT [dbo].[Egitmenler] ([egitmen_id], [egitmen_adi], [egitmen_soyadi]) VALUES (26, N'Çağatay        ', N'Karahan        ')
SET IDENTITY_INSERT [dbo].[Egitmenler] OFF
GO
SET IDENTITY_INSERT [dbo].[Fakulte] ON 

INSERT [dbo].[Fakulte] ([fakulte_id], [fakulte_adi], [bolum_adi]) VALUES (1, N'Muhendislik    ', N'Bilgisayar     ')
INSERT [dbo].[Fakulte] ([fakulte_id], [fakulte_adi], [bolum_adi]) VALUES (2, N'Mühendislik    ', N'Makine         ')
INSERT [dbo].[Fakulte] ([fakulte_id], [fakulte_adi], [bolum_adi]) VALUES (3, N'Mühendislik    ', N'Elektronik     ')
INSERT [dbo].[Fakulte] ([fakulte_id], [fakulte_adi], [bolum_adi]) VALUES (4, N'Fen Edebiyat   ', N'Matematik      ')
INSERT [dbo].[Fakulte] ([fakulte_id], [fakulte_adi], [bolum_adi]) VALUES (5, N'Fen Edebiyat   ', N'Fizik          ')
INSERT [dbo].[Fakulte] ([fakulte_id], [fakulte_adi], [bolum_adi]) VALUES (6, N'Güzel Sanatlar ', N'Mimar          ')
INSERT [dbo].[Fakulte] ([fakulte_id], [fakulte_adi], [bolum_adi]) VALUES (7, N'Eğitim         ', N'Öğretmen       ')
INSERT [dbo].[Fakulte] ([fakulte_id], [fakulte_adi], [bolum_adi]) VALUES (8, N'İİBF           ', N'İşletme        ')
SET IDENTITY_INSERT [dbo].[Fakulte] OFF
GO
SET IDENTITY_INSERT [dbo].[Siparis_Detay] ON 

INSERT [dbo].[Siparis_Detay] ([siparis_id], [siparis_ucreti], [urun_id], [uye_id]) VALUES (13, 2, 13, 28)
INSERT [dbo].[Siparis_Detay] ([siparis_id], [siparis_ucreti], [urun_id], [uye_id]) VALUES (14, 500, 8, 31)
INSERT [dbo].[Siparis_Detay] ([siparis_id], [siparis_ucreti], [urun_id], [uye_id]) VALUES (15, 500, 9, 32)
INSERT [dbo].[Siparis_Detay] ([siparis_id], [siparis_ucreti], [urun_id], [uye_id]) VALUES (16, 150, 7, 28)
INSERT [dbo].[Siparis_Detay] ([siparis_id], [siparis_ucreti], [urun_id], [uye_id]) VALUES (17, 2700, 6, 28)
INSERT [dbo].[Siparis_Detay] ([siparis_id], [siparis_ucreti], [urun_id], [uye_id]) VALUES (18, 1500, 8, 28)
INSERT [dbo].[Siparis_Detay] ([siparis_id], [siparis_ucreti], [urun_id], [uye_id]) VALUES (19, 900, 6, 28)
SET IDENTITY_INSERT [dbo].[Siparis_Detay] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([urun_id], [urun_adi], [urun_fiyati], [urun_adeti], [urun_kategorisi]) VALUES (6, N'Protein Tozu        ', 300, 237, N'Protein                       ')
INSERT [dbo].[Urunler] ([urun_id], [urun_adi], [urun_fiyati], [urun_adeti], [urun_kategorisi]) VALUES (7, N'Havlu               ', 50, 297, N'Kişisel                       ')
INSERT [dbo].[Urunler] ([urun_id], [urun_adi], [urun_fiyati], [urun_adeti], [urun_kategorisi]) VALUES (8, N'Creatin             ', 500, 146, N'Protein                       ')
INSERT [dbo].[Urunler] ([urun_id], [urun_adi], [urun_fiyati], [urun_adeti], [urun_kategorisi]) VALUES (9, N'Multivitamin        ', 100, 95, N'Vitamin                       ')
INSERT [dbo].[Urunler] ([urun_id], [urun_adi], [urun_fiyati], [urun_adeti], [urun_kategorisi]) VALUES (12, N'Kahve               ', 15, 170, N'İçecek                        ')
INSERT [dbo].[Urunler] ([urun_id], [urun_adi], [urun_fiyati], [urun_adeti], [urun_kategorisi]) VALUES (13, N'Su                  ', 1, 198, N'İçecek                        ')
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
SET IDENTITY_INSERT [dbo].[Uye_Detay] ON 

INSERT [dbo].[Uye_Detay] ([uye_detayid], [uye_telno], [uye_giristarih], [uye_cikistarih], [fakulte_id], [uye_id]) VALUES (17, 547859862, CAST(N'2021-12-31T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 2, 28)
INSERT [dbo].[Uye_Detay] ([uye_detayid], [uye_telno], [uye_giristarih], [uye_cikistarih], [fakulte_id], [uye_id]) VALUES (18, 562459513, CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-03-01T00:00:00.000' AS DateTime), 1, 29)
INSERT [dbo].[Uye_Detay] ([uye_detayid], [uye_telno], [uye_giristarih], [uye_cikistarih], [fakulte_id], [uye_id]) VALUES (19, 541896521, CAST(N'2022-01-05T00:00:00.000' AS DateTime), CAST(N'2022-04-05T00:00:00.000' AS DateTime), 6, 30)
INSERT [dbo].[Uye_Detay] ([uye_detayid], [uye_telno], [uye_giristarih], [uye_cikistarih], [fakulte_id], [uye_id]) VALUES (20, 564988973, CAST(N'2022-01-05T00:00:00.000' AS DateTime), CAST(N'2022-02-05T00:00:00.000' AS DateTime), 8, 31)
INSERT [dbo].[Uye_Detay] ([uye_detayid], [uye_telno], [uye_giristarih], [uye_cikistarih], [fakulte_id], [uye_id]) VALUES (21, 564985436, CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-02-10T00:00:00.000' AS DateTime), 6, 32)
SET IDENTITY_INSERT [dbo].[Uye_Detay] OFF
GO
SET IDENTITY_INSERT [dbo].[Uyeler] ON 

INSERT [dbo].[Uyeler] ([uye_id], [uye_adi], [uye_soyadi], [egitmen_id], [uye_ogr_no]) VALUES (28, N'Emre           ', N'Özer           ', 23, 172562)
INSERT [dbo].[Uyeler] ([uye_id], [uye_adi], [uye_soyadi], [egitmen_id], [uye_ogr_no]) VALUES (29, N'Mustafa        ', N'Ayerdem        ', NULL, 205631)
INSERT [dbo].[Uyeler] ([uye_id], [uye_adi], [uye_soyadi], [egitmen_id], [uye_ogr_no]) VALUES (30, N'Ali            ', N'Özer           ', 25, 213265)
INSERT [dbo].[Uyeler] ([uye_id], [uye_adi], [uye_soyadi], [egitmen_id], [uye_ogr_no]) VALUES (31, N'Can            ', N'Yaman          ', 24, 2326598)
INSERT [dbo].[Uyeler] ([uye_id], [uye_adi], [uye_soyadi], [egitmen_id], [uye_ogr_no]) VALUES (32, N'Melisa         ', N'İpek   1       ', 26, 192645)
SET IDENTITY_INSERT [dbo].[Uyeler] OFF
GO
ALTER TABLE [dbo].[Egitmen_Detay]  WITH CHECK ADD  CONSTRAINT [FK_Egitmen_Detay_Egitmenler] FOREIGN KEY([egtmen_id])
REFERENCES [dbo].[Egitmenler] ([egitmen_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Egitmen_Detay] CHECK CONSTRAINT [FK_Egitmen_Detay_Egitmenler]
GO
ALTER TABLE [dbo].[Siparis_Detay]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Detay_Urunler] FOREIGN KEY([urun_id])
REFERENCES [dbo].[Urunler] ([urun_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Siparis_Detay] CHECK CONSTRAINT [FK_Siparis_Detay_Urunler]
GO
ALTER TABLE [dbo].[Siparis_Detay]  WITH CHECK ADD  CONSTRAINT [FK_Siparis_Detay_Uyeler1] FOREIGN KEY([uye_id])
REFERENCES [dbo].[Uyeler] ([uye_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Siparis_Detay] CHECK CONSTRAINT [FK_Siparis_Detay_Uyeler1]
GO
ALTER TABLE [dbo].[Uye_Detay]  WITH CHECK ADD  CONSTRAINT [FK_Uye_Detay_Fakulte1] FOREIGN KEY([fakulte_id])
REFERENCES [dbo].[Fakulte] ([fakulte_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Uye_Detay] CHECK CONSTRAINT [FK_Uye_Detay_Fakulte1]
GO
ALTER TABLE [dbo].[Uye_Detay]  WITH CHECK ADD  CONSTRAINT [FK_Uye_Detay_Uyeler] FOREIGN KEY([uye_id])
REFERENCES [dbo].[Uyeler] ([uye_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Uye_Detay] CHECK CONSTRAINT [FK_Uye_Detay_Uyeler]
GO
ALTER TABLE [dbo].[Uyeler]  WITH CHECK ADD  CONSTRAINT [FK_Uyeler_Egitmenler] FOREIGN KEY([egitmen_id])
REFERENCES [dbo].[Egitmenler] ([egitmen_id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Uyeler] CHECK CONSTRAINT [FK_Uyeler_Egitmenler]
GO
USE [master]
GO
ALTER DATABASE [fitness] SET  READ_WRITE 
GO
