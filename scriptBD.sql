USE [Rent a car]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[precio_Hora] [float] NOT NULL,
	[precio_dia] [float] NOT NULL,
	[rango_menor] [float] NOT NULL,
	[rango_mayor] [float] NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clasificacion_vehiculos]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clasificacion_vehiculos](
	[idCtegoria] [int] NOT NULL,
	[idvehiculo] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[documento] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gerente]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[gerente](
	[idGerente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[correo_electronico] [varchar](50) NOT NULL,
 CONSTRAINT [PK_gerente] PRIMARY KEY CLUSTERED 
(
	[idGerente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Poliza]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Poliza](
	[idPoliza] [int] IDENTITY(1,1) NOT NULL,
	[idVehiculo] [int] NOT NULL,
	[compañia_aseguradora] [varchar](50) NOT NULL,
	[vigencia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Poliza] PRIMARY KEY CLUSTERED 
(
	[idPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Servicio](
	[idCliente] [int] NOT NULL,
	[idSucursal] [int] NULL,
	[idVehiculo] [int] NOT NULL,
	[fecha_hora_salida] [datetime] NOT NULL,
	[observaciones] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Sucursal](
	[idSucursal] [int] IDENTITY(1,1) NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[correo_electronico] [varchar](50) NOT NULL,
	[pagina_web] [varchar](50) NOT NULL,
	[id_gerente] [int] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehiculo]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Vehiculo](
	[idVehiculo] [int] IDENTITY(1,1) NOT NULL,
	[placa] [varchar](50) NOT NULL,
	[marca] [varchar](50) NOT NULL,
	[linea] [varchar](50) NOT NULL,
	[modelo] [varchar](50) NOT NULL,
	[cilindraje_cc] [float] NOT NULL,
	[color] [varchar](50) NOT NULL,
	[servicio] [varchar](50) NOT NULL,
	[clase_vehiculo] [varchar](50) NOT NULL,
	[tipo_carroceria] [varchar](50) NOT NULL,
	[combustible] [varchar](50) NOT NULL,
	[capacidad] [varchar](50) NOT NULL,
	[num_motor] [varchar](50) NOT NULL,
	[vin] [varchar](50) NOT NULL,
	[num_serie] [varchar](50) NOT NULL,
	[num_chasis] [varchar](50) NOT NULL,
	[propietario] [varchar](50) NOT NULL,
	[doc_propietario] [varchar](50) NOT NULL,
	[precio_compra] [float] NOT NULL,
	[disponible] [tinyint] NULL CONSTRAINT [DF_Vehiculo_disponible]  DEFAULT ((1)),
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[idVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Clasificacion_vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Clasificacion_vehiculos_Categoria] FOREIGN KEY([idCtegoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Clasificacion_vehiculos] CHECK CONSTRAINT [FK_Clasificacion_vehiculos_Categoria]
GO
ALTER TABLE [dbo].[Clasificacion_vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Clasificacion_vehiculos_Vehiculo] FOREIGN KEY([idvehiculo])
REFERENCES [dbo].[Vehiculo] ([idVehiculo])
GO
ALTER TABLE [dbo].[Clasificacion_vehiculos] CHECK CONSTRAINT [FK_Clasificacion_vehiculos_Vehiculo]
GO
ALTER TABLE [dbo].[Poliza]  WITH CHECK ADD  CONSTRAINT [FK_Poliza_Vehiculo] FOREIGN KEY([idVehiculo])
REFERENCES [dbo].[Vehiculo] ([idVehiculo])
GO
ALTER TABLE [dbo].[Poliza] CHECK CONSTRAINT [FK_Poliza_Vehiculo]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idcliente])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Cliente]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Sucursal]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Vehiculo] FOREIGN KEY([idVehiculo])
REFERENCES [dbo].[Vehiculo] ([idVehiculo])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Vehiculo]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_gerente] FOREIGN KEY([id_gerente])
REFERENCES [dbo].[gerente] ([idGerente])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_gerente]
GO
/****** Object:  StoredProcedure [dbo].[eliminarCliente]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[eliminarCliente](@idCliente int)
AS 
BEGIN 
DELETE Cliente
WHERE idcliente=@idCliente;

END 
GO
/****** Object:  StoredProcedure [dbo].[eliminarGerente]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[eliminarGerente](@idGerente int)
AS
BEGIN
DELETE gerente 
WHERE idGerente=@idGerente;
END	

GO
/****** Object:  StoredProcedure [dbo].[eliminarVehiculo]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[eliminarVehiculo](@idVehiculo int)
	AS
	BEGIN
	DELETE Vehiculo
	WHERE idVehiculo=@idVehiculo;
	END

GO
/****** Object:  StoredProcedure [dbo].[modificarCliente]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[modificarCliente](@idCliente int,@nombre varchar(50),@documento varchar(50),
@telefono varchar(50))
AS
BEGIN
UPDATE Cliente 
Set nombre=@nombre,
	documento=@documento,
	telefono=@telefono
WHERE idcliente=@idCliente
END 

GO
/****** Object:  StoredProcedure [dbo].[modificarGerente]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[modificarGerente](@idGerente int ,@Nombre varchar(50),@Telefono varchar(50),@CorreoElectronico varchar(50))
AS 
BEGIN
UPDATE gerente
SET nombre=@Nombre,
	telefono=@Telefono,
	correo_electronico=@CorreoElectronico
	WHERE idGerente=@idGerente
	END 
	
GO
/****** Object:  StoredProcedure [dbo].[modificarVehiculo]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[modificarVehiculo](@idVehiculo int, @placa varchar(40),@marca varchar(40),@linea varchar(40),@modelo varchar(40),@cilindraje_cc float,
@color varchar(40),@servicio varchar(40),@clase_vehiculo varchar(40),@tipo_carroceria varchar(40),@combustible varchar(40),
@capacidad varchar(40),@num_motor varchar(40),@vin varchar(40),@num_serie varchar(40),@num_chasis varchar(40),
@propietario varchar(40),@doc_propietario varchar(40),@precio_compra float)
AS
BEGIN
UPDATE [dbo].[Vehiculo]
SET	[placa]=@placa,
	[marca]= @marca,
	[linea]=@linea,
	[modelo]=@modelo,
	[cilindraje_cc]=@cilindraje_cc,
	[color]=@color,
	[servicio]=@servicio,
	[clase_vehiculo]=@clase_vehiculo,
	[tipo_carroceria]=@tipo_carroceria,
	[combustible]=@combustible,
	[capacidad]=@capacidad,
	[num_motor]=@num_motor,
	[vin]=@vin,
	[num_serie]=@num_serie,
	[num_chasis]=@num_chasis,
	[propietario]=@propietario,
	[doc_propietario]=@doc_propietario,
	[precio_compra]=@precio_compra
	WHERE placa = @placa;
	END 
GO
/****** Object:  StoredProcedure [dbo].[obtenerInformacionGerente]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[obtenerInformacionGerente](@idGerente int)
AS
BEGIN 
SELECT * FROM gerente
WHERE idGerente=@idGerente;
END
GO
/****** Object:  StoredProcedure [dbo].[obtenerInformacionVehiculo]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[obtenerInformacionVehiculo](@idVehiculo int )
AS
BEGIN
SELECT * FROM Vehiculo
WHERE idVehiculo=@idVehiculo;


END
GO
/****** Object:  StoredProcedure [dbo].[RegistrarCliente]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[RegistrarCliente](@nombre varchar(50),@documento varchar(50),@telefono varchar(50))
AS
INSERT INTO Cliente VALUES(@nombre,@documento,@telefono)

GO
/****** Object:  StoredProcedure [dbo].[RegistrarGerente]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[RegistrarGerente](@Nombre varchar(50),@Telefono varchar(50),@CorreoElectronico varchar(50))
AS
INSERT INTO gerente VALUES(@Nombre,@Telefono,@CorreoElectronico)


GO
/****** Object:  StoredProcedure [dbo].[registrarVehiculo]    Script Date: 23/05/2017 1:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[registrarVehiculo]( @placa varchar(40),@marca varchar(40),@linea varchar(40),@modelo varchar(40),@cilindraje_cc float,
@color varchar(40),@servicio varchar(40),@clase_vehiculo varchar(40),@tipo_carroceria varchar(40),@combustible varchar(40),
@capacidad varchar(40),@num_motor varchar(40),@vin varchar(40),@num_serie varchar(40),@num_chasis varchar(40),
@propietario varchar(40),@doc_propietario varchar(40),@precio_compra float)
AS
BEGIN
INSERT INTO Vehiculo values (@placa,@marca,@linea,@modelo,@cilindraje_cc,@color,@servicio,@clase_vehiculo,@tipo_carroceria,@combustible,
@capacidad,@num_motor,@vin,@num_serie,@num_chasis,@propietario,@doc_propietario,@precio_compra,1);
INSERT INTO Clasificacion_vehiculos VALUES((SELECT idCategoria FROM categoria WHERE @precio_compra >= rango_menor AND @precio_compra < rango_mayor),
 (SELECT idVehiculo FROM Vehiculo WHERE placa = @placa));


END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id unico de la categoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categoria'
GO
