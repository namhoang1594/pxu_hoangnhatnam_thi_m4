USE [master]
GO
/****** Object:  Database [Management_Books]    Script Date: 12/23/2020 11:31:57 AM ******/
CREATE DATABASE [Management_Books]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Management_Books', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Management_Books.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Management_Books_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Management_Books_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Management_Books] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Management_Books].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Management_Books] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Management_Books] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Management_Books] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Management_Books] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Management_Books] SET ARITHABORT OFF 
GO
ALTER DATABASE [Management_Books] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Management_Books] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Management_Books] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Management_Books] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Management_Books] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Management_Books] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Management_Books] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Management_Books] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Management_Books] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Management_Books] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Management_Books] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Management_Books] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Management_Books] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Management_Books] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Management_Books] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Management_Books] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Management_Books] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Management_Books] SET RECOVERY FULL 
GO
ALTER DATABASE [Management_Books] SET  MULTI_USER 
GO
ALTER DATABASE [Management_Books] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Management_Books] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Management_Books] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Management_Books] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Management_Books] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Management_Books', N'ON'
GO
ALTER DATABASE [Management_Books] SET QUERY_STORE = OFF
GO
USE [Management_Books]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 12/23/2020 11:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](500) NOT NULL,
	[Author] [nvarchar](100) NOT NULL,
	[ShortContents] [nvarchar](500) NOT NULL,
	[YearReleased] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/23/2020 11:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON 
GO
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [ShortContents], [YearReleased], [Amount], [CategoryID], [IsDelete]) VALUES (2, N'Sapiens: Lược Sử Loài Người', N'Yuval Noah Harari', N'Nội dung hay', 2017, 30, 1, 0)
GO
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [ShortContents], [YearReleased], [Amount], [CategoryID], [IsDelete]) VALUES (3, N'Leonardo Da Vinci', N'Walter Isaacson', N'Nội dung hay', 2018, 20, 2, 0)
GO
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [ShortContents], [YearReleased], [Amount], [CategoryID], [IsDelete]) VALUES (4, N'Lịch Sử Do Thái', N'Paul Johnson', N'Nội dung hay', 2020, 35, 2, 0)
GO
INSERT [dbo].[Books] ([BookID], [BookName], [Author], [ShortContents], [YearReleased], [Amount], [CategoryID], [IsDelete]) VALUES (5, N'Đàn Ông Sao Hỏa Đàn Bà Sao Kim', N'John Gray', N'Nội dung hay', 2019, 12, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [IsDelete]) VALUES (1, N'Khoa Học', 0)
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [IsDelete]) VALUES (2, N'Lịch Sử', 0)
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [IsDelete]) VALUES (3, N'Tiểu Thuyết', 0)
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [IsDelete]) VALUES (4, N'Trinh Thám', 0)
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [IsDelete]) VALUES (5, N'Thiếu Nhi', 0)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Category]
GO
/****** Object:  StoredProcedure [dbo].[sp_BookDetails]    Script Date: 12/23/2020 11:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_BookDetails]
	@BookID INT
AS
BEGIN
	DECLARE @Message NVARCHAR(200) = 'Something went wrong, please contact administrator.'
	BEGIN
	IF(ISNULL(@BookID,0) = 0)
			BEGIN
				SET @Message = 'Book ID is required.'
			END
		ELSE
		IF (NOT EXISTS (SELECT * FROM Books WHERE BookID = @BookID))
		BEGIN
			SET @Message = 'Book is not exists.'
		END
		ELSE
			SELECT * FROM Books inner join Category
			ON Books.CategoryID = Category.CategoryID
		END
		SELECT @BookID AS ID, @Message AS [Message]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateBooks]    Script Date: 12/23/2020 11:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hoang Nam
-- Create date: 23/12/2020
-- Description:	Create Books
-- =============================================
CREATE PROCEDURE [dbo].[sp_CreateBooks]
	@BookName NVARCHAR(500),
	@Author NVARCHAR(100),
	@ShortContents NVARCHAR(500),
	@YearReleased INT,
	@Amount INT,
	@CategoryID INT
AS
BEGIN
	DECLARE @BookID	INT = 0,
			@Message	NVARCHAR(200) = 'Something went wrong, please contact administrator.'

	BEGIN TRY
		IF(@BookName IS NULL OR @BookName = '')
		BEGIN
			SET @Message = 'Book Name is required.'
		END
		ELSE
		IF(@Author IS NULL OR @Author = '')
		BEGIN
			SET @Message = 'Author is required.'
		END
		ELSE
		IF(@ShortContents IS NULL OR @ShortContents = '')
		BEGIN
			SET @Message = 'Short Contents is required.'
		END
		ELSE
		IF(@YearReleased IS NULL OR @YearReleased = '')
		BEGIN
			SET @Message = 'Year Release is required.'
		END
		ELSE
		IF(@Amount IS NULL OR @Amount = '')
		BEGIN
			SET @Message = 'Amount of Book is required.'
		END
		ELSE
			BEGIN
				INSERT INTO Books
				(BookName,
				Author,
				ShortContents,
				YearReleased,
				Amount,
				CategoryID,
				IsDelete)
					 VALUES
						   (@BookName
						   ,@Author 
						   ,@ShortContents
						   ,@YearReleased
						   ,@Amount
						   ,@CategoryID
						   ,0)


				SET @BookID = SCOPE_IDENTITY()
				SET @Message = 'Book has been created success.'
			END
		SELECT @BookID AS BookID, @Message AS [Message], @CategoryID AS CategoryID
	END TRY
	BEGIN CATCH
		SELECT @BookID AS BookID, @Message AS [Message], @CategoryID AS CategoryID
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteBooks]    Script Date: 12/23/2020 11:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hoang Nam
-- Create date: 23/12/2020
-- Description:	Delete Books
-- =============================================
CREATE PROCEDURE [dbo].[sp_DeleteBooks]
	@BookID		INT	
AS
BEGIN
	
	DECLARE @Message	NVARCHAR(200) = 'Something went wrong, please contact administrator.'
	DECLARE @Result		BIT = 0
	DECLARE @IsDelete	BIT = 1

	BEGIN TRAN
	BEGIN TRY
		IF(ISNULL(@BookID,0) = 0)
		BEGIN
			SET @Message = 'Book ID is required.'
		END
		ELSE
			BEGIN
				IF(NOT EXISTS(SELECT * FROM Books WHERE BookID = @BookID))
				BEGIN
					SET @Message = 'Can not found Book ID!'	
				END
				ELSE
				IF(EXISTS(SELECT * FROM Books WHERE BookID = @BookID AND IsDelete = 1))
				BEGIN
					SET @Message = 'Book has been deleted!'
				END
				ELSE
				BEGIN
					UPDATE Books
					SET IsDelete = @IsDelete
					WHERE BookID = @BookID

					SET @Message = 'Book has been deleted success!'
					SET @Result = 1
				END
		END
		SELECT @Result AS Result, @Message AS [Message] ,@BookID AS BookID  ,@IsDelete AS IsDeleted
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		SELECT @Result AS Result, @Message AS [Message],@BookID AS ID ,@IsDelete AS IsDeleted
		ROLLBACK TRAN
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBooks]    Script Date: 12/23/2020 11:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hoang Nam
-- Create date: 23/12/2020
-- Description:	Get Books
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetBooks]
AS
BEGIN
	SELECT BookID,
	BookName
	  FROM Books
	  WHERE IsDelete = 0
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateBooks]    Script Date: 12/23/2020 11:31:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Hoang Nam
-- Create date: 23/12/2020
-- Description:	Update Books
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateBooks]
	@BookID INT,
	@BookName NVARCHAR(500),
	@Author NVARCHAR(100),
	@ShortContents NVARCHAR(500),
	@YearReleased INT,
	@Amount INT,
	@CategoryID INT
AS
BEGIN
	
	DECLARE @Message	NVARCHAR(200) = 'Something went wrong, please contact administrator.'
	DECLARE @Result		BIT = 0

	BEGIN TRAN
	BEGIN TRY
		IF(ISNULL(@BookID,0) = 0)
		BEGIN
			SET @Message = 'Book Id is required.'
		END
		ELSE
		BEGIN
			IF(ISNULL(@BookName, '') = '')
			BEGIN
				SET @Message = 'Book name is required.'
			END
			ELSE
			IF(@Author IS NULL OR @Author = '')
			BEGIN
				SET @Message = 'Author is required.'
			END
			ELSE
			IF(@ShortContents IS NULL OR @ShortContents = '')
			BEGIN
				SET @Message = 'Short Contents is required.'
			END
			ELSE
			IF(@YearReleased IS NULL OR @YearReleased = '')
			BEGIN
				SET @Message = 'Year Release is required.'
			END
			ELSE
			IF(@Amount IS NULL OR @Amount = '')
			BEGIN
				SET @Message = 'Amount of Book is required.'
			END
			ELSE
			BEGIN
				IF(NOT EXISTS(SELECT * FROM Books WHERE BookID = @BookID))
				BEGIN
					SET @Message = 'Can not found Book ID!'	
				END
				ELSE
				BEGIN
					IF(EXISTS(SELECT * FROM Books WHERE BookName = @BookName AND BookID <> @BookID))
					BEGIN
						SET @Message = 'Book is exists!'	
					END
					ELSE
					BEGIN
						UPDATE Books
						SET BookName = @BookName,
							Author = @Author,
							ShortContents = @ShortContents,
							YearReleased = @YearReleased,
							Amount = @Amount,
							CategoryID = @CategoryID
						WHERE BookID = @BookID

						SET @Message = 'Book has been updated success!'
						SET @Result = 1
					END
				END
			END
		END
		SELECT @Result AS Result, @Message AS [Message] ,@BookID AS BookID, @CategoryID AS CategoryID
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		SELECT @Result AS Result, @Message AS [Message],@BookID AS BookID, @CategoryID AS CategoryID
		ROLLBACK TRAN
	END CATCH
END
GO
USE [master]
GO
ALTER DATABASE [Management_Books] SET  READ_WRITE 
GO
