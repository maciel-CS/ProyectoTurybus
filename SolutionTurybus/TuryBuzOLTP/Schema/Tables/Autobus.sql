CREATE TABLE [dbo].[Autobus] (
    [id]                         [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_autobus PRIMARY KEY,
          NOT NULL,     -- Número de matrícula del autobús
    [Numero_de_plazas]           [int]              NOT NULL,     -- Número de plazas del autobús
          NULL,         -- Modelo del autobús
          NULL,         -- Fabricante del autobús
    [Descripcion_caracteristicas][varchar](MAX)     NULL,         -- Descripción de las características
    [rowversion]                 [timestamp]        NOT NULL      -- Control de versiones (timestamp)
);
GO

