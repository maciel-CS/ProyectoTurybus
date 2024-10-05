CREATE TABLE [dbo].[Turista]
(
	id INT PRIMARY KEY IDENTITY(1,1),
	[Ci]     [Varchar](10) NOT NULL,  -- Número de cédula de identidad
	[Apellidos]   [Varchar](64)  NOT NULL,  -- Apellidos del turista
	[Nombre]           [Varchar](64)   NOT NULL,  -- Nombre del turista
	[Telefono]    [int]    NOT NULL,  -- Número de teléfono
	[Direccion]           [Varchar](64)  NOT NULL,  -- Dirección del turista
	[Nit]     [int] NOT NULL,  -- Número de identificación tributaria (NIT)
	[rowversion]   [timestamp]         NOT NULL   -- Control de versiones de filas


);
GO