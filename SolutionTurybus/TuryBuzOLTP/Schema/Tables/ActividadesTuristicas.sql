CREATE TABLE [dbo].[ActividadesTuristicas]
(
	[id_Actividad]      [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_ActividadesTuristicas PRIMARY KEY,
	      NOT NULL,  -- Nombre de la actividad turística
	      NOT NULL,  -- Duración de la actividad (ajustable según necesidades)
	[id_RutaTuristica]  [int]               NOT NULL,  -- Referencia a la ruta turística
	[Costo_Actividad]   [decimal](10,2)     NOT NULL,  -- Costo de la actividad en formato decimal
	[rowversion]        [timestamp]         NOT NULL   -- Control de versiones de filas
);
GO
