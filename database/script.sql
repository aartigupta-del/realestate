USE [master]
GO
/****** Object:  Database [RealEstate]    Script Date: 8/25/2021 10:29:39 AM ******/
CREATE DATABASE [RealEstate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RealEstate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\RealEstate.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RealEstate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\RealEstate_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RealEstate] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RealEstate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RealEstate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RealEstate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RealEstate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RealEstate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RealEstate] SET ARITHABORT OFF 
GO
ALTER DATABASE [RealEstate] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RealEstate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RealEstate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RealEstate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RealEstate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RealEstate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RealEstate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RealEstate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RealEstate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RealEstate] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RealEstate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RealEstate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RealEstate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RealEstate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RealEstate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RealEstate] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RealEstate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RealEstate] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RealEstate] SET  MULTI_USER 
GO
ALTER DATABASE [RealEstate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RealEstate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RealEstate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RealEstate] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [RealEstate]
GO
/****** Object:  Table [dbo].[enquries]    Script Date: 8/25/2021 10:29:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enquries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [varchar](200) NOT NULL,
	[property_id] [int] NULL,
	[email] [varchar](300) NOT NULL,
	[phone_no] [varchar](200) NOT NULL,
	[msg] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[realestate]    Script Date: 8/25/2021 10:29:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[realestate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[propertyname] [varchar](200) NOT NULL,
	[minimumprice] [varchar](200) NOT NULL,
	[maximumprice] [varchar](200) NOT NULL,
	[Uploadfile] [text] NOT NULL,
	[facebook] [varchar](200) NULL,
	[instagram] [varchar](200) NULL,
	[whatsapp] [varchar](200) NULL,
	[youtube] [varchar](200) NULL,
	[area] [varchar](200) NOT NULL,
	[bedroom] [varchar](200) NOT NULL,
	[bathroom] [varchar](200) NOT NULL,
	[proplist] [varchar](200) NOT NULL,
	[prophave] [varchar](200) NOT NULL,
	[proptype] [varchar](200) NOT NULL,
	[propavailable] [varchar](200) NOT NULL,
	[map] [text] NOT NULL,
	[propshort] [text] NOT NULL,
	[proplong] [text] NOT NULL,
	[propplace] [text] NOT NULL,
	[landmark] [varchar](200) NOT NULL,
	[city] [varchar](200) NOT NULL,
	[pincode] [varchar](200) NOT NULL,
	[fulladdress] [text] NOT NULL,
	[slugname] [varchar](500) NOT NULL,
	[garage] [varchar](200) NULL,
	[active] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/25/2021 10:29:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 8/25/2021 10:29:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](200) NOT NULL,
	[password] [varchar](200) NOT NULL,
	[fname] [varchar](200) NOT NULL,
	[lname] [varchar](200) NOT NULL,
	[role_id] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[enquries] ON 

INSERT [dbo].[enquries] ([id], [fullname], [property_id], [email], [phone_no], [msg]) VALUES (1, N'Aarti', 5, N'afsf@gmail.com', N'3535787876', N'ytruiuyikjhkjhl')
INSERT [dbo].[enquries] ([id], [fullname], [property_id], [email], [phone_no], [msg]) VALUES (2, N'Aarti Gupta', 1, N'gupta1999aarti@gmail.com', N'56436574567', N'want to buy property')
INSERT [dbo].[enquries] ([id], [fullname], [property_id], [email], [phone_no], [msg]) VALUES (1002, N'Manali', 3, N'manalidesai18.md@gmail.com', N'7839126947', N'hii how are you')
SET IDENTITY_INSERT [dbo].[enquries] OFF
SET IDENTITY_INSERT [dbo].[realestate] ON 

INSERT [dbo].[realestate] ([id], [propertyname], [minimumprice], [maximumprice], [Uploadfile], [facebook], [instagram], [whatsapp], [youtube], [area], [bedroom], [bathroom], [proplist], [prophave], [proptype], [propavailable], [map], [propshort], [proplong], [propplace], [landmark], [city], [pincode], [fulladdress], [slugname], [garage], [active]) VALUES (1, N'Elan Epic, Sector 70, Gurugram, Haryana 12222222222222222', N'56454', N'56454', N'Uploads\b22fd7d9-f421-4c11-81ee-5a8313ba3a65passport.jpg', N'Facebook Url', N'Instagram Url', N'Whatsapp Url', N'outube View Url', N'Area in SqftArea in Sqft', N'No Of Bedrooms', N'No Of Bathrooms', N'For Sale', N'For Sale', N'Apartments', N'New', N'Google Map Url', N'<p>Short Description</p>\r\n', N'<p>Long Description-</p>\r\n', N'<p>Near By Places</p>\r\n', N'Landmark', N'City', N'Pincode', N'Full Address', N'elan_epic_sector_70_gurugram_haryana_122101_india', N'outube View Url', N'Y')
INSERT [dbo].[realestate] ([id], [propertyname], [minimumprice], [maximumprice], [Uploadfile], [facebook], [instagram], [whatsapp], [youtube], [area], [bedroom], [bathroom], [proplist], [prophave], [proptype], [propavailable], [map], [propshort], [proplong], [propplace], [landmark], [city], [pincode], [fulladdress], [slugname], [garage], [active]) VALUES (3, N'Elan Epic, Sector 70, Gurugram, Haryana 122101, India111', N'56454', N'1846526', N'', N'Facebook Url', N'Instagram Url', N'Whatsapp Url', N'youtube View Url', N'Area in SqftArea in Sqft', N'12', N'No Of Bathrooms', N'For Sale', N'For Sale', N'Apartments', N'New', N'rtyrty', N'<p>rtyrty</p>
', N'<p>rtyrty</p>
', N'<p>rtyrtyrty</p>
', N'qwe', N'qwe', N'qwe', N'ryrty', N'elan_epic_sector_70_gurugram_haryana_122101_india111', N'154', N'Y')
INSERT [dbo].[realestate] ([id], [propertyname], [minimumprice], [maximumprice], [Uploadfile], [facebook], [instagram], [whatsapp], [youtube], [area], [bedroom], [bathroom], [proplist], [prophave], [proptype], [propavailable], [map], [propshort], [proplong], [propplace], [landmark], [city], [pincode], [fulladdress], [slugname], [garage], [active]) VALUES (5, N'AIPL Business Club, Sector 62, Gurugram, Haryana 122102, India', N'90lac', N'1.5crore', N'Uploads\4910d9ca-a9e3-4f54-9f9a-4f3d9928410aimage5.jpg', N'Facebook Url', N'Instagram Url', N'Whatsapp Url', N'youtube View Url', N'700', N'15', N'30', N'For Sale', N'For Sale', N'Apartments', N'New', N'www.google.map', N'<p>MULUND</p>
', N'<h2>MULUND</h2>
', N'<h3>MULUND</h3>
', N'lake', N'thane', N'400601', N'Full Address', N'aipl_business_club_sector_62_gurugram_haryana_122102_india', N'5', N'Y')
INSERT [dbo].[realestate] ([id], [propertyname], [minimumprice], [maximumprice], [Uploadfile], [facebook], [instagram], [whatsapp], [youtube], [area], [bedroom], [bathroom], [proplist], [prophave], [proptype], [propavailable], [map], [propshort], [proplong], [propplace], [landmark], [city], [pincode], [fulladdress], [slugname], [garage], [active]) VALUES (8, N'Elan Miracle , Sector 84, Gurugram, Haryana 122004, India', N'60lac', N'1.5crore', N'Uploads\b01c41f8-5bb5-4f25-81a1-991168d8e263image7.jpg', N'www.facebook', N'www.instagram', N'www.whatsapp', N'www.youtube', N'700', N'12', N'45', N'For Sale', N'Residential', N'Apartments', N'New', N'www.haduishfuih', N'<h1>GHATKHOPAR</h1>
', N'<h2>GHATKHOPAR</h2>
', N'<h3>GHATKHOPAR</h3>
', N'LAKE', N'GHATKHOPAR', N'400622', N'DFAaasgdfb', N'elan_miracle_sector_84_gurugram_haryana_122004_india', N'5', N'Y')
INSERT [dbo].[realestate] ([id], [propertyname], [minimumprice], [maximumprice], [Uploadfile], [facebook], [instagram], [whatsapp], [youtube], [area], [bedroom], [bathroom], [proplist], [prophave], [proptype], [propavailable], [map], [propshort], [proplong], [propplace], [landmark], [city], [pincode], [fulladdress], [slugname], [garage], [active]) VALUES (9, N'Runwal plaza', N'90lac', N'90lac', N'Uploads\81665401-194b-4c70-8de4-592da73d86c3image8.jpg', N'www.facebook', N'www.instagram', N'www.whatsapp', N'www.youtube', N'700', N'12', N'45', N'For Sale', N'Residential', N'Apartments', N'New', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15083.074654754142!2d72.85399272068439!3d19.07390617313728!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c8f17f6e5cbf%3A0xc5addc2bdab79d8b!2sKalina%2C%20Santacruz%20East%2C%20Mumbai%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1628575635709!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>', N'<h1>Elan Town Centre, Sector 67, Gurugram, Haryana, India</h1>
', N'<p>About City: Backed by strong infrastructure and job creations, the real estate of Delhi/NCR is moving up. With increasing investments from builders in regions like Noida, Greater Noida, Gurgaon and Faridabad, the increasing demands are being catered to affecting the realty market positively. Additionally, other factors contributing to this positivity are the metro smoothening connectivity between different parts of the city and a number of expressways and flyovers letting you skip the traffic. The positivity in the job market leading to migration of working professionals from around the country to the city also contributes to a positivity in the job market</p>
', N'<p>Elan presents low maintenance, double height premium retail shops bang on main sohna road, sector-67. &ldquo;Elan Town Centre&rdquo; a new-age commercial hub that takes the concept of integrated business approach to greater heights. The project offers low cost and efficient retail and the world-class serviced apartment.</p>

<p>Strategically located on&nbsp;<strong>main sohna road , sec-67, gurgaon,&nbsp;</strong>elan town centre is surrounded by huge luxury residential townships, it parks, sez&rsquo;s &amp; international schools and universities therefore it offers great value on investments. It also has great connectivity from the golf course extension road ,npr &amp; spr and has close proximity to the proposed metro station as well as the international airport.</p>

<p>COMMERICE STARTS FROM Rs.12,500/- Per SqFtCIAL SHOPS | PR</p>
', N'university', N'kurla', N'400622', N'Sector 67, Gurugram, Haryana, India Location: Sohna Road Projects State: Haryana', N'hiranandani_estate', N'5', N'Y')
INSERT [dbo].[realestate] ([id], [propertyname], [minimumprice], [maximumprice], [Uploadfile], [facebook], [instagram], [whatsapp], [youtube], [area], [bedroom], [bathroom], [proplist], [prophave], [proptype], [propavailable], [map], [propshort], [proplong], [propplace], [landmark], [city], [pincode], [fulladdress], [slugname], [garage], [active]) VALUES (1002, N'real state', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'For Rent', N'Commercial', N'House', N'Resale', N'', N'', N'', N'', N'', N'', N'', N'', N'real_state', N'', N'N')
SET IDENTITY_INSERT [dbo].[realestate] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [username], [password], [fname], [lname], [role_id]) VALUES (1, N'artigupta', N'$2a$13$qMzBpWaIjaw7GimGHvBj2Oe71nUqSG16COPajd.B4XW87FbX3qb9a', N'Arti', N'Gupta', 1)
SET IDENTITY_INSERT [dbo].[users] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__realesta__FEC0D00F20C90B28]    Script Date: 8/25/2021 10:29:40 AM ******/
ALTER TABLE [dbo].[realestate] ADD UNIQUE NONCLUSTERED 
(
	[slugname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__users__F3DBC5722331659F]    Script Date: 8/25/2021 10:29:40 AM ******/
ALTER TABLE [dbo].[users] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[realestate] ADD  DEFAULT ('Y') FOR [active]
GO
ALTER TABLE [dbo].[enquries]  WITH CHECK ADD FOREIGN KEY([property_id])
REFERENCES [dbo].[realestate] ([id])
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
USE [master]
GO
ALTER DATABASE [RealEstate] SET  READ_WRITE 
GO
