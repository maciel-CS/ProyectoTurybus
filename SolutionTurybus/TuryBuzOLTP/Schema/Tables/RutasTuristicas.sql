CREATE TABLE [dbo].[RutasTuristicas]
(
	[id]               [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_RutasTuristicas PRIMARY KEY,
	[id_lugarOrigen]   [int]               NOT NULL,  -- Referencia al lugar de origen
	[id_LugarDestino]  [int]               NOT NULL,  -- Referencia al lugar de destino
	[Costo_Transporte] [decimal](10,2)     NOT NULL,  -- Costo del transporte en formato decimal
	[rowversion]       [timestamp]         NOT NULL   -- Control de versiones de filas
);
GO


