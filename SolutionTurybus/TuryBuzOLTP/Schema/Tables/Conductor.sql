CREATE TABLE [dbo].[Conductor] (
         [id]               [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_conductor PRIMARY KEY,  -- Cédula de identidad del conductor
         [Apellidos]        [varchar](50)       NOT NULL,               -- Apellidos del conductor
         [Nombre]           [varchar](50)       NOT NULL,               -- Nombre del conductor
         [Telefono]         [varchar](25)       NOT NULL,               -- Teléfono del conductor                                
         [Direccion]        [varchar](100)      NOT NULL,               -- Dirección del conductor
         [rowversion]       [timestamp]         NOT NULL                -- Control de versiones (timestamp)
);
GO

