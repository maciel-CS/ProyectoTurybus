CREATE TABLE [dbo].[LugarTuristico]
(
	[id] INT PRIMARY KEY IDENTITY(1,1),           -- Clave primaria autoincremental
	[Nombre] VARCHAR(200) NOT NULL ,
    [descripcion] VARCHAR(MAX) NOT NULL,                -- Descripción del lugar turístico
	[rowversion]        [timestamp]         NOT NULL


);
GO
