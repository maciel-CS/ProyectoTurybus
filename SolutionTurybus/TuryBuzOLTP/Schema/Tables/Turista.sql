CREATE TABLE [dbo].[Turista]
(
	id INT PRIMARY KEY IDENTITY(1,1),
	[Ci]     [Varchar] NOT NULL,  -- Número de cédula de identidad
	[Apellidos]   [Varchar]  NOT NULL,  -- Apellidos del turista
	[Nombre]           [Varchar]   NOT NULL,  -- Nombre del turista
	[Numero_de_Telefono]    [int]    NOT NULL,  -- Número de teléfono
	[Direccion]           [Varchar]  NOT NULL,  -- Dirección del turista
	[Nit]     [int] NOT NULL,  -- Número de identificación tributaria (NIT)
	[rowversion]   [timestamp]         NOT NULL   -- Control de versiones de filas


);
GO