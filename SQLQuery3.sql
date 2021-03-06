USE [Rent a car]
GO
/****** Object:  StoredProcedure [dbo].[registrarVehiculo]    Script Date: 20/05/2017 23:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[registrarVehiculo]( @placa varchar(40),@marca varchar(40),@linea varchar(40),@modelo varchar(40),@cilindraje_cc float,
@color varchar(40),@servicio varchar(40),@clase_vehiculo varchar(40),@tipo_carroceria varchar(40),@combustible varchar(40),
@capacidad varchar(40),@num_motor varchar(40),@vin varchar(40),@num_serie varchar(40),@num_chasis varchar(40),
@propietario varchar(40),@doc_propietario varchar(40),@precio_compra float)
AS
BEGIN
INSERT INTO Vehiculo values (@placa,@marca,@linea,@modelo,@cilindraje_cc,@color,@servicio,@clase_vehiculo,@tipo_carroceria,@combustible,
@capacidad,@num_motor,@vin,@num_serie,@num_chasis,@propietario,@doc_propietario,@precio_compra);
INSERT INTO Clasificacion_vehiculos VALUES((SELECT idCategoria FROM categoria WHERE @precio_compra > rango_menor AND @precio_compra < rango_mayor),
 (SELECT idVehiculo FROM Vehiculo WHERE placa = @placa));


END

EXEC  registrarVehiculo 'abcc','aaa','aaa','aaa',8687,'aaa','aaa','aaa','aaa','aaa','aaa'
,'aaa','aaa','aaa','aaa','aaa','aaa',89000000;

select * from Vehiculo;

select * from Clasificacion_vehiculos

select idCategoria from categoria where 24888888 > rango_menor AND 24888888 < rango_mayor

insert into categoria (nombre, precio_hora, precio_dia, rango_menor, rango_mayor)
values ('basica',18800,263200,0,24000000),('alta',24120,337680,24000001,74999999),
('ejecutiva',34200,478200,75000000,999999999);