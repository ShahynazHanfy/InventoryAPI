USE [master]
GO
/****** Object:  Database [SMTDB]    Script Date: 5/30/2021 11:24:39 AM ******/
CREATE DATABASE [SMTDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SMTDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SMTDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SMTDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SMTDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SMTDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SMTDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SMTDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SMTDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SMTDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SMTDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SMTDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SMTDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SMTDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SMTDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SMTDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SMTDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SMTDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SMTDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SMTDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SMTDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SMTDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SMTDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SMTDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SMTDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SMTDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SMTDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SMTDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SMTDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SMTDB] SET RECOVERY FULL 
GO
ALTER DATABASE [SMTDB] SET  MULTI_USER 
GO
ALTER DATABASE [SMTDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SMTDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SMTDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SMTDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SMTDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SMTDB', N'ON'
GO
ALTER DATABASE [SMTDB] SET QUERY_STORE = OFF
GO
USE [SMTDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SMTDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignedProject]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignedProject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsAssigned] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[AssignedProjectDate] [datetime2](7) NOT NULL,
	[ProjectUpdateId] [int] NULL,
	[EmployeeId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_AssignedProject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contractors]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contractors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContractorName] [nvarchar](max) NULL,
	[ContactName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[RelevantPhone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contractors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataSheets]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSheets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentLink] [nvarchar](max) NULL,
	[OfferId] [int] NOT NULL,
 CONSTRAINT [PK_DataSheets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentsCategories]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentsCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_DocumentsCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EndUsers]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[ContactName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[RelevantPhone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_EndUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Governorates]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Governorates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GovernorateName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Governorates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferDescriptions]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferDescriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DescriptionDate] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[OffersId] [int] NOT NULL,
	[ProjectUpdateId] [int] NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_OfferDescriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferDocuments]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentFile] [nvarchar](max) NULL,
	[OfferId] [int] NOT NULL,
 CONSTRAINT [PK_OfferDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 5/30/2021 11:24:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OfferCreationDate] [datetime2](7) NOT NULL,
	[OfferStatusId] [int] NOT NULL,
	[ProjectCostsId] [int] NOT NULL,
	[ProjectsId] [int] NOT NULL,
	[ProjectUpdateId] [int] NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferStatus]    Script Date: 5/30/2021 11:24:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OfferStatusName] [nvarchar](max) NULL,
 CONSTRAINT [PK_OfferStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectComponents]    Script Date: 5/30/2021 11:24:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectComponents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectComponentName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProjectComponents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectCosts]    Script Date: 5/30/2021 11:24:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectCosts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cost] [int] NOT NULL,
	[Currency] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProjectCosts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectDescriptions]    Script Date: 5/30/2021 11:24:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectDescriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DescriptionDate] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ProjectId] [int] NOT NULL,
	[ProjectUpdateId] [int] NULL,
 CONSTRAINT [PK_ProjectDescriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectDocuments]    Script Date: 5/30/2021 11:24:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentFile] [nvarchar](max) NULL,
	[ProjectId] [int] NOT NULL,
	[DocumentsCategoryId] [int] NOT NULL,
	[ProjectUpdateId] [int] NULL,
 CONSTRAINT [PK_ProjectDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 5/30/2021 11:24:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NULL,
	[Rank] [int] NOT NULL,
	[ProjectCreationDate] [datetime2](7) NOT NULL,
	[ProjectStatusId] [int] NOT NULL,
	[ContractorsId] [int] NOT NULL,
	[EndUsersId] [int] NOT NULL,
	[GovernoratesId] [int] NOT NULL,
	[IsAccept] [bit] NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectStatus]    Script Date: 5/30/2021 11:24:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectStatusName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProjectStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectSystems]    Script Date: 5/30/2021 11:24:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectSystems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectComponentsId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_ProjectSystems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projectUpdates]    Script Date: 5/30/2021 11:24:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projectUpdates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DueDate] [datetime2](7) NOT NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_projectUpdates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210418121045_db', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210419072955_db2', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210419082124_db3', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210420091540_addProjectUpdateId', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210420125343_addgovernorate', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210420125458_addgovernoratess', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210420130118_addgovernorates2', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210428092701_nulableprojectupdateId', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210510074137_EditInOfferDocuments', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210510080048_EditInOffers', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210510082146_EditInOffers1', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210510103711_currency', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210518081832_addProjectsystems', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210523121732_addbooleanIsAcceprinProject', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210524101214_editinofferdoc', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210525073052_addupadteidinofferdesc', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210526092926_editInAssignProject', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210526094350_editInAssignProject2', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210527072641_assignproject', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210527072821_assignproject2', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210527073129_assignprojecttb', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210530075817_addprojectupdateinofferandassign', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210530083003_addprojectidinofferdesc', N'5.0.5')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0da69533-efbd-435e-a090-c4e40231d3af', N'CEO', N'CEO', N'f1568902-80a5-4601-8c7a-815e0c3634fd')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4a479ea5-6e11-47a1-9996-d7f126991f49', N'PreSalesManager', N'PRESALESMANAGER', N'e03e1b2b-5a1b-4389-81a4-dda8d8876103')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b3ef0089-66ec-42ed-bba9-90b9b7db0f5e', N'PreSales', N'PRESALES', N'a863297c-24ab-476b-940e-917ef1860783')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cfc07764-ce23-4172-8ab9-1c95deeb16a5', N'Admin', N'ADMIN', N'4612eead-203e-43e3-920d-f2894ef5d2de')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f297db29-cec8-4483-9f9e-981440981cd6', N'Sales', N'SALES', N'29303faa-0dba-45d0-9275-1bee086e869a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fd2e5a6a-e634-4f2f-bea0-6fc57ca867e2', N'SalesManager', N'SALESMANAGER', N'fb6ce615-585a-46f7-a296-dba3d4ba9d0b')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3042, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3043, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3044, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3045, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'129a2047-a2e1-4072-94e6-3277d6e60bc1')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3046, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3047, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3048, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3049, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3050, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'ac491e5b-5449-4750-b7c7-758bf6517cbe')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3051, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3052, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3053, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3054, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3055, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'8fc02e8a-c1af-4821-aead-927601419db4')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3056, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3057, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3058, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3059, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3060, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'2eab01e6-0653-4ce7-909f-5d1f9065782a')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3061, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3062, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3063, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3064, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3065, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'126e769c-1fd5-46f1-9776-0742f85408a2')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3066, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3067, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3068, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3069, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3070, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'f59b42f8-0a52-4563-811d-90242635bd83')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3071, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3077, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3078, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3079, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3080, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'090457de-24f4-46cd-a697-2f280fc3d152')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3081, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3082, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3083, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3084, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3085, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'468ee8e8-c069-4ec2-894c-a730fad3e585')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3086, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4047, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4048, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4049, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4050, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'20a5709a-c69b-4c6f-ae96-cde1b0c0fa8b')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4051, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4052, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4053, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4054, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4055, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'ef6c3b08-7313-4662-92ad-0b2fc3593d4a')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4056, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4057, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4058, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4059, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4060, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'ce30080c-3bf2-4f7a-a53d-c01dbbfe86a8')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4061, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4062, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4063, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4064, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4065, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'37d5d3ec-7a8b-4ccb-ac06-3972d279490f')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4066, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4067, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4068, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4069, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4070, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'8216c6a4-3d29-43ab-9ad1-ce6464a123f9')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4071, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5047, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5048, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5049, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5050, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'6042a20a-bb8a-44da-930a-83e93a3e8387')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5051, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5052, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5053, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5054, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5055, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'63350122-a9f6-4962-b210-fa250f5afc55')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5056, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5057, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5058, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5059, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5060, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'c28b0bec-5c3b-435b-b90a-99808f650dec')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5061, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5062, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5063, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5064, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5065, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'36c5bb10-936f-41e5-9070-1997765cbd25')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5066, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7062, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7063, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7064, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7065, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'b9b79fde-9a77-4195-9281-cf9c8f60f3f3')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7066, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7072, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Mena')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7073, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Mena@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7074, N'f3f47308-167c-454f-9661-fac114273a0f', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7075, N'f3f47308-167c-454f-9661-fac114273a0f', N'jti', N'86a2b5f3-0ebb-49df-8836-3dc4ff31ca69')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7076, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7077, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Mena')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7079, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Mena@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7082, N'f3f47308-167c-454f-9661-fac114273a0f', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7083, N'f3f47308-167c-454f-9661-fac114273a0f', N'jti', N'3e3a64a1-ebcf-4208-8e50-94488a37f10b')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7084, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8062, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Mena')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8063, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Mena@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8064, N'f3f47308-167c-454f-9661-fac114273a0f', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8065, N'f3f47308-167c-454f-9661-fac114273a0f', N'jti', N'4c8f0a98-39e5-4e2f-a2c9-8d4b5f9b0ee5')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8066, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8067, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Mena')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8068, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Mena@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8069, N'f3f47308-167c-454f-9661-fac114273a0f', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8070, N'f3f47308-167c-454f-9661-fac114273a0f', N'jti', N'72d0d20c-e6a7-4d8d-98bd-5d5ecd843beb')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8071, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8072, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Mena')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8073, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Mena@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8074, N'f3f47308-167c-454f-9661-fac114273a0f', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8075, N'f3f47308-167c-454f-9661-fac114273a0f', N'jti', N'e713164c-f6d5-4332-a3eb-965fc383b39c')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8076, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8077, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8078, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8079, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8080, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'da70c933-ae2c-4aed-81cf-8f516d518f8f')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8081, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8082, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Mena')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8083, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Mena@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8084, N'f3f47308-167c-454f-9661-fac114273a0f', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8085, N'f3f47308-167c-454f-9661-fac114273a0f', N'jti', N'e2ac5be6-a36f-468f-9ad5-fc30e655c33c')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8086, N'f3f47308-167c-454f-9661-fac114273a0f', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'SalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8087, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8088, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8089, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8090, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'77cd2389-7d22-49f0-953f-8d5382e48eab')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8091, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9062, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9063, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9064, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9065, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'd340d6a0-19c7-4e74-bada-078d14ffe679')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9066, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9067, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9068, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9069, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9070, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'e1d45fee-c6ab-4e4a-8bc8-3b5ceb9322dd')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9071, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10067, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10068, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10069, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10070, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'de821489-0677-4c8d-9b65-928f7ecf91b1')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10071, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10072, N'e54f5c00-ac44-4a84-af5b-d80d2d3c4ff6', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Tasneem')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10073, N'e54f5c00-ac44-4a84-af5b-d80d2d3c4ff6', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'tasnemali777@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10074, N'e54f5c00-ac44-4a84-af5b-d80d2d3c4ff6', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10075, N'e54f5c00-ac44-4a84-af5b-d80d2d3c4ff6', N'jti', N'2664debf-e738-4183-bafb-0fded85f1dba')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10076, N'e54f5c00-ac44-4a84-af5b-d80d2d3c4ff6', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'PreSalesManager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10077, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', N'Roshdy')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10078, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'Roshdy@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10079, N'0803e98a-b787-4018-988e-19b053db9b79', N'key', N'value')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10080, N'0803e98a-b787-4018-988e-19b053db9b79', N'jti', N'dd4dd6e9-4ba2-4e61-8a38-5f99ae961791')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10081, N'0803e98a-b787-4018-988e-19b053db9b79', N'http://schemas.microsoft.com/ws/2008/06/identity/claims/role', N'Admin')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'73346948-6995-4bc5-bc34-1d7d04b01e71', N'0da69533-efbd-435e-a090-c4e40231d3af')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e54f5c00-ac44-4a84-af5b-d80d2d3c4ff6', N'4a479ea5-6e11-47a1-9996-d7f126991f49')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'72f750fe-bc49-4e4d-9c40-5464bebf8093', N'b3ef0089-66ec-42ed-bba9-90b9b7db0f5e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0803e98a-b787-4018-988e-19b053db9b79', N'cfc07764-ce23-4172-8ab9-1c95deeb16a5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a6b6d08-add3-486f-8d93-cfaa5abecac6', N'f297db29-cec8-4483-9f9e-981440981cd6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f3f47308-167c-454f-9661-fac114273a0f', N'fd2e5a6a-e634-4f2f-bea0-6fc57ca867e2')
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0803e98a-b787-4018-988e-19b053db9b79', N'ApplicationUser', N'Roshdy', N'ROSHDY', N'Roshdy@gmail.com', N'ROSHDY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELA6t/mDo6SHAP9r4NA7uq6i+o9qPjON1nZaaXcttHJxklqMUqlO7CwnHUGTrajMcA==', N'XJGH5MZKWL6N5KV6UFEY2XYNVCS5L7EG', N'40a1331f-ed73-45ac-853f-e4581879c319', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3a6b6d08-add3-486f-8d93-cfaa5abecac6', N'ApplicationUser', N'Nada_Diaa', N'NADA_DIAA', N'nadadia295@gmail.com', N'NADADIA295@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKvKX0R60zbZi3DBRcptQ78xbmadHvA57xPRh6O75bu+eOzblpiid0bCobCfAvBmAQ==', N'ZUDETB4NZAMX4VCLXAYGRU6G5CJ5JDTD', N'120dbcd6-75a4-4e52-9a87-39b02dd8bebe', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'72f750fe-bc49-4e4d-9c40-5464bebf8093', N'ApplicationUser', N'Ekram', N'EKRAM', N'Pineapple_126@hotmail.com', N'PINEAPPLE_126@HOTMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJjPDj06FqTtIrRnoSdbxeZfWx5t4vHkdv6UC+hG/0VQ2sFcIrnx5a0HeWneZZ4yVA==', N'A3H24PJ66C4LDLIAJ2NBO2BHCNYJGDB2', N'f58bd75f-ae4c-4643-afa7-daa5299cd920', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'73346948-6995-4bc5-bc34-1d7d04b01e71', N'ApplicationUser', N'shahynaz', N'SHAHYNAZ', N'shahynazhanfy@gmail.com', N'SHAHYNAZHANFY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDw/kG1q+N/vk9LS/kqL2lMIvAgdmKbbyfhb6in4ita53MdftZSIEYZsjKmuoKPyHw==', N'X6SAYLWAVG4FPKB4PIYCYWMVJXMVNHTV', N'd5381299-ae19-4ac3-8895-015a91217301', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e54f5c00-ac44-4a84-af5b-d80d2d3c4ff6', N'ApplicationUser', N'Tasneem', N'TASNEEM', N'tasnemali777@gmail.com', N'TASNEMALI777@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG7N+6VAWdD4XDc1Iv6jJ9wea2qBSvqdsM0UBMgB51729Kwtp2zbM0UYHhd41NCRvA==', N'KJLLZULMQP7U4ISJK2SAZL6V44RATYPG', N'2bc5d7f5-f793-492d-8a9d-11a7d272f639', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f3f47308-167c-454f-9661-fac114273a0f', N'ApplicationUser', N'Mena', N'MENA', N'Mena@gmail.com', N'MENA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFNHThj33XwhfIn6hWXtqvGNtKBogEh+Oz0y48EnoAm+ieoE72I7V+K7mtQMm7FZNw==', N'QG3JMHTPAG4W4DBF6NTZL2336SMA6WQQ', N'b839173a-243f-4aea-bc0d-772e1f0d7884', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AssignedProject] ON 

INSERT [dbo].[AssignedProject] ([Id], [IsAssigned], [Description], [AssignedProjectDate], [ProjectUpdateId], [EmployeeId], [ProjectId]) VALUES (4, 0, N'test assign', CAST(N'2021-05-30T08:14:16.2890000' AS DateTime2), NULL, 16, 12)
SET IDENTITY_INSERT [dbo].[AssignedProject] OFF
SET IDENTITY_INSERT [dbo].[Contractors] ON 

INSERT [dbo].[Contractors] ([ID], [ContractorName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (1, N'Value', N'Value', N'01010536968', N'01010536968', N'Value@gmail.com')
INSERT [dbo].[Contractors] ([ID], [ContractorName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (2, N'Korra', N'Korra', N'01010536968', N'01010536968', N'Korra@gmail.com')
INSERT [dbo].[Contractors] ([ID], [ContractorName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (3, N'Leeds', N'Leeds', N'01010536968', N'01010536968', N'Leeds@gmail.com')
INSERT [dbo].[Contractors] ([ID], [ContractorName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (1002, N'City Stars Mall', N'Roshdy', N'01115609350', N'01010536968', N'Roshdy@gmail.com')
SET IDENTITY_INSERT [dbo].[Contractors] OFF
SET IDENTITY_INSERT [dbo].[DocumentsCategories] ON 

INSERT [dbo].[DocumentsCategories] ([Id], [CategoryName]) VALUES (1, N'BoQ')
INSERT [dbo].[DocumentsCategories] ([Id], [CategoryName]) VALUES (2, N'Drawing')
INSERT [dbo].[DocumentsCategories] ([Id], [CategoryName]) VALUES (3, N'Any Queries')
INSERT [dbo].[DocumentsCategories] ([Id], [CategoryName]) VALUES (4, N'Spec.')
SET IDENTITY_INSERT [dbo].[DocumentsCategories] OFF
SET IDENTITY_INSERT [dbo].[EndUsers] ON 

INSERT [dbo].[EndUsers] ([ID], [CompanyName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (1, N'Kenoz', N'Kenoz', N'01010536968', N'01010536968', N'Kenoz@gmail.com')
INSERT [dbo].[EndUsers] ([ID], [CompanyName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (2, N'Peugeot', N'Peugeot', N'01010536968', N'01010536968', N'Peugeot@gmail.com')
INSERT [dbo].[EndUsers] ([ID], [CompanyName], [ContactName], [Phone], [RelevantPhone], [Email]) VALUES (3, N'Grand Square Mall', N'Grand Square Mall', N'01010536968', N'01010536968', N'GrandSquareMall@gmail.com')
SET IDENTITY_INSERT [dbo].[EndUsers] OFF
SET IDENTITY_INSERT [dbo].[Governorates] ON 

INSERT [dbo].[Governorates] ([Id], [GovernorateName]) VALUES (1, N'Alex')
INSERT [dbo].[Governorates] ([Id], [GovernorateName]) VALUES (2, N'Cairo')
INSERT [dbo].[Governorates] ([Id], [GovernorateName]) VALUES (3, N'Giza')
INSERT [dbo].[Governorates] ([Id], [GovernorateName]) VALUES (4, N'Minia')
SET IDENTITY_INSERT [dbo].[Governorates] OFF
SET IDENTITY_INSERT [dbo].[OfferDescriptions] ON 

INSERT [dbo].[OfferDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [OffersId], [ProjectUpdateId], [ProjectId]) VALUES (5, N'BioMedicalEquipment (2).csv', CAST(N'2021-05-30T08:33:55.3860000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1033, NULL, 12)
SET IDENTITY_INSERT [dbo].[OfferDescriptions] OFF
SET IDENTITY_INSERT [dbo].[OfferDocuments] ON 

INSERT [dbo].[OfferDocuments] ([Id], [DocumentFile], [OfferId]) VALUES (26, N'BioMedicalEquipment (2).csv', 1032)
INSERT [dbo].[OfferDocuments] ([Id], [DocumentFile], [OfferId]) VALUES (27, N'BioMedicalEquipment (2).csv', 1033)
SET IDENTITY_INSERT [dbo].[OfferDocuments] OFF
SET IDENTITY_INSERT [dbo].[Offers] ON 

INSERT [dbo].[Offers] ([Id], [OfferCreationDate], [OfferStatusId], [ProjectCostsId], [ProjectsId], [ProjectUpdateId]) VALUES (1032, CAST(N'2021-05-30T08:22:07.1160000' AS DateTime2), 1, 1034, 12, NULL)
INSERT [dbo].[Offers] ([Id], [OfferCreationDate], [OfferStatusId], [ProjectCostsId], [ProjectsId], [ProjectUpdateId]) VALUES (1033, CAST(N'2021-05-30T08:33:55.3860000' AS DateTime2), 1, 1035, 12, NULL)
SET IDENTITY_INSERT [dbo].[Offers] OFF
SET IDENTITY_INSERT [dbo].[OfferStatus] ON 

INSERT [dbo].[OfferStatus] ([Id], [OfferStatusName]) VALUES (1, N'Accept')
INSERT [dbo].[OfferStatus] ([Id], [OfferStatusName]) VALUES (2, N'Refused')
INSERT [dbo].[OfferStatus] ([Id], [OfferStatusName]) VALUES (1002, N'Offered')
SET IDENTITY_INSERT [dbo].[OfferStatus] OFF
SET IDENTITY_INSERT [dbo].[ProjectComponents] ON 

INSERT [dbo].[ProjectComponents] ([Id], [ProjectComponentName]) VALUES (1, N'CCTV')
INSERT [dbo].[ProjectComponents] ([Id], [ProjectComponentName]) VALUES (6, N'Active Data')
INSERT [dbo].[ProjectComponents] ([Id], [ProjectComponentName]) VALUES (7, N'Passive Data')
SET IDENTITY_INSERT [dbo].[ProjectComponents] OFF
SET IDENTITY_INSERT [dbo].[ProjectCosts] ON 

INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1, 200000, N'EGP')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (2, 2000, N'EGP')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1002, 201, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1003, 201, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1004, 201, N'EUR')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1005, 100, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1006, 100, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1007, 2, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1008, 1, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1009, 1, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1010, 1, N'EUR')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1011, 1, N'EUR')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1012, 23, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1013, 23, N'USD')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1014, 121, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1015, 23, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1016, 32, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1017, 2000, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1018, 2000, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1019, 200, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1020, 300, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1021, 500, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1022, 200, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1023, 300, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1024, 3200, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1025, 434, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1026, 434, N'USD')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1027, 23, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1028, 343, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1029, 12, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1030, 200, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1031, 200, N'USD')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1032, 300, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1033, 300, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1034, 700, N'')
INSERT [dbo].[ProjectCosts] ([Id], [Cost], [Currency]) VALUES (1035, 700, N'')
SET IDENTITY_INSERT [dbo].[ProjectCosts] OFF
SET IDENTITY_INSERT [dbo].[ProjectDescriptions] ON 

INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1, N'An article is any member of a class of dedicated words that are used with noun phrases to mark the identifiability of the referents of the noun phrases', CAST(N'2021-05-09T10:01:57.3760000' AS DateTime2), N'73346948-6995-4bc5-bc34-1d7d04b01e71', 1, NULL)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (2, N'Test', CAST(N'2021-05-09T10:01:57.3760000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1002)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (3, N'Test BoQ', CAST(N'2021-05-09T10:02:49.5800000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1004)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (4, N'Test Spec', CAST(N'2021-05-09T10:04:08.4940000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1005)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (5, N'Test Spec', CAST(N'2021-05-09T10:04:08.4940000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1005)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (6, N'Test Spec', CAST(N'2021-05-09T10:04:08.4940000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1005)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (7, N'Drawing', CAST(N'2021-05-09T10:13:47.9720000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1008)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (8, N'Any Queries', CAST(N'2021-05-09T10:15:14.0930000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 1009)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1002, N'Test', CAST(N'2021-05-18T10:46:29.9930000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 11, 2002)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1003, N'test', CAST(N'2021-05-18T10:51:27.1340000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 11, 2003)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1004, N' test', CAST(N'2021-05-18T11:00:59.7150000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 2004)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1054, N'Please Fill a detaild description', CAST(N'2021-05-18T13:35:04.9140000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 2054)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1065, N'TimeSheet.docx
', CAST(N'2021-05-19T08:27:14.0330000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 1, 2064)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1066, N'BoQ	
TimeSheet.docx
', CAST(N'2021-05-19T08:35:19.4630000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 5, 2065)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1067, N'debug.log', CAST(N'2021-05-19T08:35:50.2020000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 5, 2066)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1068, N'pagination.txt', CAST(N'2021-05-19T08:36:18.7260000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 5, 2067)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1069, N'BioMedicalEquipment', CAST(N'2021-05-19T08:48:44.9360000' AS DateTime2), N'0803e98a-b787-4018-988e-19b053db9b79', 5, 2068)
INSERT [dbo].[ProjectDescriptions] ([Id], [Description], [DescriptionDate], [UserId], [ProjectId], [ProjectUpdateId]) VALUES (1070, N'Test Update', CAST(N'2021-05-30T07:42:12.1130000' AS DateTime2), N'e54f5c00-ac44-4a84-af5b-d80d2d3c4ff6', 12, NULL)
SET IDENTITY_INSERT [dbo].[ProjectDescriptions] OFF
SET IDENTITY_INSERT [dbo].[ProjectDocuments] ON 

INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1, N'Test1', 5, 1, 4)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2, N'Test2', 5, 2, 4)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1002, N'CleanArch.txt', 1, 2, 1002)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1003, N'BioMedicalEquipment.csv', 1, 1, 1004)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1004, N'BioMedicalEquipment.csv', 1, 4, 1004)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1005, N'horizon.jpg', 1, 2, 1004)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (1006, N'car.jpg', 1, 3, 1004)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2055, N'TimeSheet.docx', 1, 1, 2064)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2056, N'TimeSheet.docx', 5, 1, 2065)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2057, N'TimeSheet.docx', 5, 2, 2066)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2058, N'2021-05-04T12_40_42_702Z-debug.log', 5, 1, 2066)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2060, N'TimeSheet.docx', 5, 1, 2067)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2061, N'BioMedicalEquipment (1).csv', 5, 3, 2067)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2062, N'2021-05-04T12_40_42_702Z-debug.log', 5, 2, 2067)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2063, N'pagination.txt', 5, 4, 2067)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2064, N'TimeSheet.docx', 5, 1, 2068)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2065, N'BioMedicalEquipment.csv', 5, 2, 2068)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2066, N'TimeSheet.docx', 5, 1, 2068)
INSERT [dbo].[ProjectDocuments] ([Id], [DocumentFile], [ProjectId], [DocumentsCategoryId], [ProjectUpdateId]) VALUES (2067, N'BioMedicalEquipment (2).csv', 12, 1, NULL)
SET IDENTITY_INSERT [dbo].[ProjectDocuments] OFF
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [GovernoratesId], [IsAccept]) VALUES (1, N'Zaha Mall', 90, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 1, 1, 1, 1, 0)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [GovernoratesId], [IsAccept]) VALUES (5, N'Four Season Hotel', 70, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 3, 3, 3, 2, 0)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [GovernoratesId], [IsAccept]) VALUES (6, N'Alex Factory', 100, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 3, 2, 2, 3, 0)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [GovernoratesId], [IsAccept]) VALUES (7, N'Light Of World', 90, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 2, 3, 1, 4, 0)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [GovernoratesId], [IsAccept]) VALUES (10, N'Light Of World 2', 95, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 2, 3, 1, 4, 0)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [GovernoratesId], [IsAccept]) VALUES (11, N'Light Of World 2', 80, CAST(N'2018-03-29T13:34:00.0000000' AS DateTime2), 2, 3, 1, 4, 1)
INSERT [dbo].[Projects] ([Id], [ProjectName], [Rank], [ProjectCreationDate], [ProjectStatusId], [ContractorsId], [EndUsersId], [GovernoratesId], [IsAccept]) VALUES (12, N'Test Project Update', 5, CAST(N'2021-05-30T07:42:12.1130000' AS DateTime2), 1, 2, 1, 2, 0)
SET IDENTITY_INSERT [dbo].[Projects] OFF
SET IDENTITY_INSERT [dbo].[ProjectStatus] ON 

INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (1, N'New')
INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (2, N'Offered')
INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (3, N'Hold')
INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (4, N'Refused')
INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (5, N'Win')
INSERT [dbo].[ProjectStatus] ([Id], [ProjectStatusName]) VALUES (6, N'Lose')
SET IDENTITY_INSERT [dbo].[ProjectStatus] OFF
SET IDENTITY_INSERT [dbo].[ProjectSystems] ON 

INSERT [dbo].[ProjectSystems] ([Id], [ProjectComponentsId], [ProjectId]) VALUES (1, 1, 1)
INSERT [dbo].[ProjectSystems] ([Id], [ProjectComponentsId], [ProjectId]) VALUES (2, 6, 5)
INSERT [dbo].[ProjectSystems] ([Id], [ProjectComponentsId], [ProjectId]) VALUES (3, 6, 1)
INSERT [dbo].[ProjectSystems] ([Id], [ProjectComponentsId], [ProjectId]) VALUES (4, 1, 12)
INSERT [dbo].[ProjectSystems] ([Id], [ProjectComponentsId], [ProjectId]) VALUES (5, 6, 12)
SET IDENTITY_INSERT [dbo].[ProjectSystems] OFF
SET IDENTITY_INSERT [dbo].[projectUpdates] ON 

INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1, CAST(N'2020-03-29T13:34:00.0000000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (3, CAST(N'2021-03-29T13:34:00.0000000' AS DateTime2), 5)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (4, CAST(N'2022-03-29T13:34:00.0000000' AS DateTime2), 5)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1002, CAST(N'2021-05-09T10:01:57.3760000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1004, CAST(N'2021-05-09T10:02:49.5800000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1005, CAST(N'2021-05-09T10:04:08.4940000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1008, CAST(N'2021-05-09T10:13:47.9720000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (1009, CAST(N'2021-05-09T10:15:14.0930000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2002, CAST(N'2021-05-18T10:46:29.9920000' AS DateTime2), 11)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2003, CAST(N'2021-05-18T10:51:27.1320000' AS DateTime2), 11)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2004, CAST(N'2021-05-18T11:00:59.7140000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2049, CAST(N'2021-05-18T13:17:45.2590000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2050, CAST(N'2021-05-18T13:21:12.4030000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2051, CAST(N'2021-05-18T13:24:35.5160000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2052, CAST(N'2021-05-18T13:28:28.0360000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2053, CAST(N'2021-05-18T13:31:54.9210000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2054, CAST(N'2021-05-18T13:35:04.9100000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2064, CAST(N'2021-05-19T08:27:14.0300000' AS DateTime2), 1)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2065, CAST(N'2021-05-19T08:35:19.4620000' AS DateTime2), 5)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2066, CAST(N'2021-05-19T08:35:50.1990000' AS DateTime2), 5)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2067, CAST(N'2021-05-19T08:36:18.7230000' AS DateTime2), 5)
INSERT [dbo].[projectUpdates] ([Id], [DueDate], [ProjectId]) VALUES (2068, CAST(N'2021-05-19T08:48:44.9190000' AS DateTime2), 5)
SET IDENTITY_INSERT [dbo].[projectUpdates] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignedProject_EmployeeId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AssignedProject_EmployeeId] ON [dbo].[AssignedProject]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignedProject_ProjectId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AssignedProject_ProjectId] ON [dbo].[AssignedProject]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssignedProject_ProjectUpdateId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AssignedProject_ProjectUpdateId] ON [dbo].[AssignedProject]
(
	[ProjectUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DataSheets_OfferId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_DataSheets_OfferId] ON [dbo].[DataSheets]
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OfferDescriptions_OffersId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferDescriptions_OffersId] ON [dbo].[OfferDescriptions]
(
	[OffersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OfferDescriptions_ProjectId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferDescriptions_ProjectId] ON [dbo].[OfferDescriptions]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OfferDescriptions_ProjectUpdateId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferDescriptions_ProjectUpdateId] ON [dbo].[OfferDescriptions]
(
	[ProjectUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OfferDescriptions_UserId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferDescriptions_UserId] ON [dbo].[OfferDescriptions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OfferDocuments_OfferId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_OfferDocuments_OfferId] ON [dbo].[OfferDocuments]
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_OfferStatusId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_OfferStatusId] ON [dbo].[Offers]
(
	[OfferStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_ProjectCostsId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_ProjectCostsId] ON [dbo].[Offers]
(
	[ProjectCostsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_ProjectsId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_ProjectsId] ON [dbo].[Offers]
(
	[ProjectsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_ProjectUpdateId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Offers_ProjectUpdateId] ON [dbo].[Offers]
(
	[ProjectUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDescriptions_ProjectId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDescriptions_ProjectId] ON [dbo].[ProjectDescriptions]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDescriptions_ProjectUpdateId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDescriptions_ProjectUpdateId] ON [dbo].[ProjectDescriptions]
(
	[ProjectUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProjectDescriptions_UserId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDescriptions_UserId] ON [dbo].[ProjectDescriptions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDocuments_DocumentsCategoryId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDocuments_DocumentsCategoryId] ON [dbo].[ProjectDocuments]
(
	[DocumentsCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDocuments_ProjectId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDocuments_ProjectId] ON [dbo].[ProjectDocuments]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDocuments_ProjectUpdateId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectDocuments_ProjectUpdateId] ON [dbo].[ProjectDocuments]
(
	[ProjectUpdateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_ContractorsId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_ContractorsId] ON [dbo].[Projects]
(
	[ContractorsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_EndUsersId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_EndUsersId] ON [dbo].[Projects]
(
	[EndUsersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_GovernoratesId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_GovernoratesId] ON [dbo].[Projects]
(
	[GovernoratesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Projects_ProjectStatusId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Projects_ProjectStatusId] ON [dbo].[Projects]
(
	[ProjectStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectSystems_ProjectComponentsId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectSystems_ProjectComponentsId] ON [dbo].[ProjectSystems]
(
	[ProjectComponentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectSystems_ProjectId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectSystems_ProjectId] ON [dbo].[ProjectSystems]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_projectUpdates_ProjectId]    Script Date: 5/30/2021 11:24:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_projectUpdates_ProjectId] ON [dbo].[projectUpdates]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AssignedProject] ADD  DEFAULT ((0)) FOR [ProjectId]
GO
ALTER TABLE [dbo].[OfferDescriptions] ADD  DEFAULT ((0)) FOR [ProjectId]
GO
ALTER TABLE [dbo].[OfferDocuments] ADD  DEFAULT ((0)) FOR [OfferId]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT ((0)) FOR [GovernoratesId]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsAccept]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AssignedProject]  WITH CHECK ADD  CONSTRAINT [FK_AssignedProject_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AssignedProject] CHECK CONSTRAINT [FK_AssignedProject_Projects_ProjectId]
GO
ALTER TABLE [dbo].[AssignedProject]  WITH CHECK ADD  CONSTRAINT [FK_AssignedProject_projectUpdates_ProjectUpdateId] FOREIGN KEY([ProjectUpdateId])
REFERENCES [dbo].[projectUpdates] ([Id])
GO
ALTER TABLE [dbo].[AssignedProject] CHECK CONSTRAINT [FK_AssignedProject_projectUpdates_ProjectUpdateId]
GO
ALTER TABLE [dbo].[DataSheets]  WITH CHECK ADD  CONSTRAINT [FK_DataSheets_Offers_OfferId] FOREIGN KEY([OfferId])
REFERENCES [dbo].[Offers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DataSheets] CHECK CONSTRAINT [FK_DataSheets_Offers_OfferId]
GO
ALTER TABLE [dbo].[OfferDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_OfferDescriptions_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OfferDescriptions] CHECK CONSTRAINT [FK_OfferDescriptions_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OfferDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_OfferDescriptions_Offers_OffersId] FOREIGN KEY([OffersId])
REFERENCES [dbo].[Offers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OfferDescriptions] CHECK CONSTRAINT [FK_OfferDescriptions_Offers_OffersId]
GO
ALTER TABLE [dbo].[OfferDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_OfferDescriptions_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OfferDescriptions] CHECK CONSTRAINT [FK_OfferDescriptions_Projects_ProjectId]
GO
ALTER TABLE [dbo].[OfferDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_OfferDescriptions_projectUpdates_ProjectUpdateId] FOREIGN KEY([ProjectUpdateId])
REFERENCES [dbo].[projectUpdates] ([Id])
GO
ALTER TABLE [dbo].[OfferDescriptions] CHECK CONSTRAINT [FK_OfferDescriptions_projectUpdates_ProjectUpdateId]
GO
ALTER TABLE [dbo].[OfferDocuments]  WITH CHECK ADD  CONSTRAINT [FK_OfferDocuments_Offers_OfferId] FOREIGN KEY([OfferId])
REFERENCES [dbo].[Offers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OfferDocuments] CHECK CONSTRAINT [FK_OfferDocuments_Offers_OfferId]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_OfferStatus_OfferStatusId] FOREIGN KEY([OfferStatusId])
REFERENCES [dbo].[OfferStatus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_OfferStatus_OfferStatusId]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_ProjectCosts_ProjectCostsId] FOREIGN KEY([ProjectCostsId])
REFERENCES [dbo].[ProjectCosts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_ProjectCosts_ProjectCostsId]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_Projects_ProjectsId] FOREIGN KEY([ProjectsId])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_Projects_ProjectsId]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_Offers_projectUpdates_ProjectUpdateId] FOREIGN KEY([ProjectUpdateId])
REFERENCES [dbo].[projectUpdates] ([Id])
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_Offers_projectUpdates_ProjectUpdateId]
GO
ALTER TABLE [dbo].[ProjectDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDescriptions_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProjectDescriptions] CHECK CONSTRAINT [FK_ProjectDescriptions_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProjectDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDescriptions_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectDescriptions] CHECK CONSTRAINT [FK_ProjectDescriptions_Projects_ProjectId]
GO
ALTER TABLE [dbo].[ProjectDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDescriptions_projectUpdates_ProjectUpdateId] FOREIGN KEY([ProjectUpdateId])
REFERENCES [dbo].[projectUpdates] ([Id])
GO
ALTER TABLE [dbo].[ProjectDescriptions] CHECK CONSTRAINT [FK_ProjectDescriptions_projectUpdates_ProjectUpdateId]
GO
ALTER TABLE [dbo].[ProjectDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDocuments_DocumentsCategories_DocumentsCategoryId] FOREIGN KEY([DocumentsCategoryId])
REFERENCES [dbo].[DocumentsCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectDocuments] CHECK CONSTRAINT [FK_ProjectDocuments_DocumentsCategories_DocumentsCategoryId]
GO
ALTER TABLE [dbo].[ProjectDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDocuments_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectDocuments] CHECK CONSTRAINT [FK_ProjectDocuments_Projects_ProjectId]
GO
ALTER TABLE [dbo].[ProjectDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDocuments_projectUpdates_ProjectUpdateId] FOREIGN KEY([ProjectUpdateId])
REFERENCES [dbo].[projectUpdates] ([Id])
GO
ALTER TABLE [dbo].[ProjectDocuments] CHECK CONSTRAINT [FK_ProjectDocuments_projectUpdates_ProjectUpdateId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Contractors_ContractorsId] FOREIGN KEY([ContractorsId])
REFERENCES [dbo].[Contractors] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Contractors_ContractorsId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_EndUsers_EndUsersId] FOREIGN KEY([EndUsersId])
REFERENCES [dbo].[EndUsers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_EndUsers_EndUsersId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Governorates_GovernoratesId] FOREIGN KEY([GovernoratesId])
REFERENCES [dbo].[Governorates] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Governorates_GovernoratesId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_ProjectStatus_ProjectStatusId] FOREIGN KEY([ProjectStatusId])
REFERENCES [dbo].[ProjectStatus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_ProjectStatus_ProjectStatusId]
GO
ALTER TABLE [dbo].[ProjectSystems]  WITH CHECK ADD  CONSTRAINT [FK_ProjectSystems_ProjectComponents_ProjectComponentsId] FOREIGN KEY([ProjectComponentsId])
REFERENCES [dbo].[ProjectComponents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectSystems] CHECK CONSTRAINT [FK_ProjectSystems_ProjectComponents_ProjectComponentsId]
GO
ALTER TABLE [dbo].[ProjectSystems]  WITH CHECK ADD  CONSTRAINT [FK_ProjectSystems_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectSystems] CHECK CONSTRAINT [FK_ProjectSystems_Projects_ProjectId]
GO
ALTER TABLE [dbo].[projectUpdates]  WITH CHECK ADD  CONSTRAINT [FK_projectUpdates_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[projectUpdates] CHECK CONSTRAINT [FK_projectUpdates_Projects_ProjectId]
GO
USE [master]
GO
ALTER DATABASE [SMTDB] SET  READ_WRITE 
GO
