CREATE TABLE [dbo].[Autobus] (
    id INT PRIMARY KEY IDENTITY(1,1),
    Matricula VARCHAR(20) NOT NULL,
    Numero_de_plazas INT NOT NULL,
    Modelo VARCHAR(50),
    Fabricante VARCHAR(50),
    Descripcion_caracteristicas VARCHAR(MAX),
    rowversion TIMESTAMP NOT NULL,
    CONSTRAINT UQ_Autobus_Matricula UNIQUE(Matricula)
);
GO