USE [master]
GO
/****** Object:  Database [CAP_JGONZALEZ]    Script Date: 06/03/2021 06:49:43 p. m. ******/
CREATE DATABASE [CAP_JGONZALEZ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CAP_JGONZALEZ', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CAP_JGONZALEZ.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CAP_JGONZALEZ_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CAP_JGONZALEZ_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CAP_JGONZALEZ] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CAP_JGONZALEZ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CAP_JGONZALEZ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET ARITHABORT OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET RECOVERY FULL 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET  MULTI_USER 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CAP_JGONZALEZ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CAP_JGONZALEZ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CAP_JGONZALEZ', N'ON'
GO
ALTER DATABASE [CAP_JGONZALEZ] SET QUERY_STORE = OFF
GO
USE [CAP_JGONZALEZ]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apellidoPaterno] [varchar](255) NOT NULL,
	[apellidoMaterno] [varchar](255) NULL,
	[calle] [varchar](255) NOT NULL,
	[numero] [int] NULL,
	[colonia] [varchar](255) NOT NULL,
	[cp] [int] NOT NULL,
	[ciudad] [varchar](255) NOT NULL,
	[pais] [varchar](255) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Error]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Error](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mensaje] [varchar](1) NULL,
	[fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagador]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagador](
	[idPagador] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[calle] [varchar](255) NOT NULL,
	[numero] [int] NULL,
	[colonia] [varchar](255) NOT NULL,
	[cp] [int] NOT NULL,
	[ciudad] [varchar](255) NOT NULL,
	[pais] [varchar](255) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idPagador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transferencia]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transferencia](
	[idTransferencia] [int] IDENTITY(1,1) NOT NULL,
	[idRemitente] [int] NULL,
	[idBeneficiario] [int] NULL,
	[idPagador] [int] NULL,
	[monto] [money] NULL,
	[comision] [money] NULL,
	[estado] [varchar](20) NOT NULL,
	[fechaTramitado] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTransferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Transferencia]  WITH CHECK ADD FOREIGN KEY([idBeneficiario])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Transferencia]  WITH CHECK ADD FOREIGN KEY([idPagador])
REFERENCES [dbo].[Pagador] ([idPagador])
GO
ALTER TABLE [dbo].[Transferencia]  WITH CHECK ADD FOREIGN KEY([idRemitente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Transferencia]  WITH CHECK ADD CHECK  (([estado]='Retirado' OR [estado]='Disponible' OR [estado]='Tramitado'))
GO
/****** Object:  StoredProcedure [dbo].[CreateCliente]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CreateCliente] @nombre varchar(255), @apellidoPaterno varchar(255), @apellidoMaterno varchar(255), @calle varchar(255), @numero int, @colonia varchar(255), @cp int, @ciudad varchar(255), @pais varchar(255), @Activo bit as insert into Cliente (nombre, apellidoPaterno, apellidoMaterno, calle, numero, colonia, cp, ciudad, pais, Activo, fechaRegistro) values (@nombre, @apellidoPaterno, @apellidoMaterno, @calle, @numero, @colonia, @cp, @ciudad, @pais, @Activo, GETDATE()); SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[CreateError]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CreateError] @mensaje varchar as insert into Error (mensaje) values (@mensaje)
GO
/****** Object:  StoredProcedure [dbo].[CreatePagador]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CreatePagador] @nombre varchar(255), @calle varchar(255), @numero int, @colonia varchar(255), @cp int, @ciudad varchar(255), @pais varchar(255), @Activo bit as insert into Pagador(nombre, calle, numero, colonia, cp, ciudad, pais, Activo, fechaRegistro) values (@nombre, @calle, @numero, @colonia, @cp, @ciudad, @pais, @Activo, GETDATE()); SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[CreateTransferencia]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CreateTransferencia] @idRemitente int, @idBeneficiario int, @idPagador int, @monto money, @comision money, @estado varchar(255) as insert into Transferencia(idRemitente, idBeneficiario, idPagador, monto, comision, estado, fechaTramitado) values (@idRemitente, @idBeneficiario, @idPagador, @monto, @comision, @estado, GETDATE()); SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[DeleteCliente]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCliente] @ID int
AS
UPDATE [dbo].[Cliente] SET Activo = 0 where idCliente = @ID
GO
/****** Object:  StoredProcedure [dbo].[DeletePagador]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePagador] @ID int AS UPDATE [dbo].[Pagador] SET Activo = 0 where idPagador = @ID
GO
/****** Object:  StoredProcedure [dbo].[LastCliente]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LastCliente] AS SELECT TOP 1 * FROM Cliente ORDER BY idCliente DESC
GO
/****** Object:  StoredProcedure [dbo].[SelectAllClientes]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllClientes] AS SELECT * FROM Cliente ORDER BY idCliente DESC
GO
/****** Object:  StoredProcedure [dbo].[SelectAllClientesActivos]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllClientesActivos] AS SELECT * FROM [dbo].Cliente WHERE ACTIVO = 1 ORDER BY idCliente DESC
GO
/****** Object:  StoredProcedure [dbo].[SelectAllPagadores]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SelectAllPagadores] as select * from Pagador order by idPagador DESC
GO
/****** Object:  StoredProcedure [dbo].[SelectAllPagadoresActivos]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllPagadoresActivos] AS SELECT * FROM Pagador WHERE Activo = 1 ORDER BY idPagador DESC
GO
/****** Object:  StoredProcedure [dbo].[SelectAllTransferencias]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SelectAllTransferencias] as SELECT Transferencia.*, R.nombre as nombreRemitente, B.nombre as nombreBeneficiario, P.nombre as nombrePagador
FROM Transferencia
INNER JOIN Cliente R ON Transferencia.idRemitente=R.idCliente
INNER JOIN Cliente B ON Transferencia.idBeneficiario=B.idCliente
INNER JOIN Pagador P ON Transferencia.idPagador=P.idPagador order By fechaTramitado desc
GO
/****** Object:  StoredProcedure [dbo].[SelectClientes]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SelectClientes] as select top 20 * from cliente
GO
/****** Object:  StoredProcedure [dbo].[SelectIdCliente]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SelectIdCliente] @id int as select * from Cliente where idCliente = @id
GO
/****** Object:  StoredProcedure [dbo].[SelectIdPagador]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SelectIdPagador] @id int as select * from Pagador where idPagador = @id
GO
/****** Object:  StoredProcedure [dbo].[SelectIdTransferencia]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SelectIdTransferencia] @id int as SELECT Transferencia.*, R.nombre as nombreRemitente, B.nombre as nombreBeneficiario, P.nombre as nombrePagador
FROM Transferencia
INNER JOIN Cliente R ON Transferencia.idRemitente=R.idCliente
INNER JOIN Cliente B ON Transferencia.idBeneficiario=B.idCliente
INNER JOIN Pagador P ON Transferencia.idPagador=P.idPagador where idTransferencia = @id
GO
/****** Object:  StoredProcedure [dbo].[SelectPagadores]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SelectPagadores] as select top 20 * from Pagador
GO
/****** Object:  StoredProcedure [dbo].[SelectTransferencias]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SelectTransferencias] as select top 20 * from Transferencia
GO
/****** Object:  StoredProcedure [dbo].[UpdateCliente]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateCliente] @idCliente int, @nombre varchar(255) = NULL, @apellidoPaterno varchar(255) = NULL, @apellidoMaterno varchar(255) = NULL, @calle varchar(255) = NULL, @numero int = NULL, @colonia varchar(255) = NULL, @CP int = NULL, @ciudad varchar(255) = NULL, @pais varchar(255) = NULL as Update Cliente Set nombre = ISNULL(@nombre,nombre), apellidoPaterno = ISNULL(@apellidoPaterno,apellidoPaterno), apellidoMaterno = ISNULL(@apellidoMaterno,apellidoMaterno), calle = ISNULL(@calle,calle), numero = ISNULL(@numero,numero), colonia = ISNULL(@colonia,colonia), cp = ISNULL(@cp,cp), ciudad = ISNULL(@ciudad,ciudad), pais = ISNULL(@pais,pais) WHERE idCliente=@idCliente; SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[UpdatePagador]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdatePagador] @idPagador int, @nombre varchar(255) = NULL, @calle varchar(255) = NULL, @numero int = NULL, @colonia varchar(255) = NULL, @cp int = NULL, @ciudad varchar(255) = NULL, @pais varchar(255) = NULL as Update Pagador Set nombre = ISNULL(@nombre,nombre), calle = ISNULL(@calle,calle), numero = ISNULL(@numero,numero), colonia = ISNULL(@colonia,colonia), cp = ISNULL(@cp,cp), ciudad = ISNULL(@ciudad,ciudad), pais = ISNULL(@pais,pais) WHERE idPagador=@idPagador; SELECT SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[UpdateTransferencia]    Script Date: 06/03/2021 06:49:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateTransferencia] @id int, @idRemitente int = NULL, @idBeneficiario int = NULL, @idPagador int = NULL, @monto money = NULL, @comision money = NULL, @estado varchar(255) = NULL as Update Transferencia Set idRemitente = ISNULL(@idRemitente, idRemitente), idBeneficiario = ISNULL(@idBeneficiario, idBeneficiario), idPagador = ISNULL(@idPagador, idPagador), monto = ISNULL(@monto, monto), estado = ISNULL(@estado, estado) WHERE idTransferencia = @id
GO
USE [master]
GO
ALTER DATABASE [CAP_JGONZALEZ] SET  READ_WRITE 
GO
